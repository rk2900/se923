<?php
/**
 * 后台用户管理模块
 * 
 */
class ListAction extends AdminAction {
    public function _initialize() {
        parent::_initialize();  //RBAC 验证接口初始化
    }

/* ========用户部分======== */
    public function index(){
        import('ORG.Util.Page');// 导入分页类
        $role = M('Role')->getField('id,name');
        $map = array();
        $UserDB = D('List');
        $count = $UserDB->where($map)->count();
        $Page       = new Page($count);// 实例化分页类 传入总记录数
        // 进行分页数据查询 注意page方法的参数的前面部分是当前的页数使用 $_GET[p]获取
        $nowPage = isset($_GET['p'])?$_GET['p']:1;
        $show       = $Page->show();// 分页显示输出
        $list = $UserDB->where($map)->order('id ASC')->page($nowPage.','.C('web_admin_pagenum'))->select();
        $this->assign('role',$role);
        $this->assign('list',$list);
        $this->assign('page',$show);// 赋值分页输出
        $this->display();
    }

    public function search(){
        $string = $_POST['sea'];
        import('ORG.Util.Page');// 导入分页类
        $role = M('Role')->getField('id,name');
        $map['username'] = array('like','%'.$string.'%');
        $UserDB = D('List');
        $count = $UserDB->where($map)->count();
        $Page = new Page($count);// 实例化分页类 传入总记录数
        // 进行分页数据查询 注意page方法的参数的前面部分是当前的页数使用 $_GET[p]获取
        $nowPage = isset($_GET['p'])?$_GET['p']:1;
        $show       = $Page->show();// 分页显示输出
        $list = $UserDB->where($map)->order('id ASC')->page($nowPage.','.C('web_admin_pagenum'))->select();
        $this->assign('role',$role);
        $this->assign('list',$list);
        $this->assign('page',$show);// 赋值分页输出
        $this->display('index'); 
    }

    // 添加用户
    public function add(){
        $UserDB = D("List");
        if(isset($_POST['dosubmit'])) {

            $password = $_POST['password'];
            $repassword = $_POST['repassword'];
            if(empty($password) || empty($repassword)){
                $this->error('密码必须！');
            }
            if($password != $repassword){
                $this->error('两次输入密码不一致！');
            }

            //根据表单提交的POST数据创建数据对象
            if($UserDB->create()){
                $user_id = $UserDB->add();
                if($user_id){
                    $data['user_id'] = $user_id;
                    $data['role_id'] = $_POST['role'];
                    if (M("RoleUser")->data($data)->add()){
                        $this->assign("jumpUrl",U('/Admin/List/index'));
                        $this->success('添加成功！');
                    }else{
                        $this->error('用户添加成功,但角色对应关系添加失败!');
                    }
                }else{
                     $this->error('添加失败!');
                }
            }else{
                $this->error($UserDB->getError());
            }
        }else{
            $role = D('Role')->getAllRole(array('status'=>1),'sort DESC');
            $this->assign('role',$role);
            $this->assign('tpltitle','添加');
            $this->display();
        }
    }

    // 编辑用户
    public function detail(){
        $UserDB = D("List");
        $id = $this->_get('id','intval',0);
        if(!$id)$this->error('参数错误!');
        $role = D('Role')->getAllRole(array('status'=>1),'sort DESC');
        $info = $UserDB->getUser(array('id'=>$id));
        $this->assign('tpltitle','编辑');
        $this->assign('role',$role);
        $this->assign('info',$info);
        $this->display();
    }

    //ajax 验证用户名
    public function check_username(){
        $userid = $this->_get('userid');
        $username = $this->_get('username');
        if(D("User")->check_name($username,$userid)){
            echo 1;
        }else{
            echo 0;
        }
    }

    public function editpers(){
         $UserDB = D("User");
        if(isset($_POST['dosubmit'])) {
            $password = $_POST['password'];
            $repassword = $_POST['repassword'];
            if(!empty($password) || !empty($repassword)){
                if($password != $repassword){
                    $this->error('两次输入密码不一致！');
                }
                $_POST['password'] = md5($password);
            }

            if(empty($password) && empty($repassword)) unset($_POST['password']);   //不填写密码不修改

            //根据表单提交的POST数据创建数据对象
            if($UserDB->create()){
                if($UserDB->save()){
                    $where['user_id'] = $_POST['id'];
                    $data['role_id'] = $_POST['role'];
                    M("RoleUser")->where($where)->save($data);
                    $this->assign("jumpUrl",U('/Admin/User/index'));
                    $this->success('编辑成功！');
                }else{
                     $this->error('编辑失败!');
                }
            }else{
                $this->error($UserDB->getError());
            }
        }else{
            $id = $this->_get('id','intval',0);
            // var_dump($id);
            $pid = session('userid');
            if(!$id|| $pid!=$id)$this->error('参数错误!');
            $role = D('Role')->getRole(array('id'=>$id),'sort DESC');
            $info = $UserDB->getUser(array('id'=>$id));
            $this->assign('tpltitle','个人信息修改');
            $this->assign('role',$role);
            $this->assign('info',$info);
            $this->display();
        }
    }

    //删除用户
    public function del(){
        $id = $this->_get('id','intval',0);
        if(!$id)$this->error('参数错误!');
        $ListDB = D('List');
        $info = $ListDB->getUser(array('id'=>$id));
        if($info['username']==C('SPECIAL_USER')){     //无视系统权限的那个用户不能删除
           $this->error('禁止删除此用户!');
        }
        if($ListDB->delUser('id='.$id)){
                $UserDB=D('Account');
                $data['id']=$id;
                $data['isvip']=0;
                $UserDB->save($data);
                $this->assign("jumpUrl",U('/Admin/List/index'));
                $this->success('删除成功！');

        }else{
            $this->error('删除失败!');
        }
    }

/* ========角色部分======== */

    // 角色管理列表
    public function blacklist(){
        import('ORG.Util.Page');// 导入分页类
        $role = M('Role')->getField('id,name');
        $map = array();
        $UserDB = D('blacklist');
        $count = $UserDB->where($map)->count();
        $Page       = new Page($count);// 实例化分页类 传入总记录数
        // 进行分页数据查询 注意page方法的参数的前面部分是当前的页数使用 $_GET[p]获取
        $nowPage = isset($_GET['p'])?$_GET['p']:1;
        $show       = $Page->show();// 分页显示输出
        $list = $UserDB->where($map)->order('id ASC')->page($nowPage.','.C('web_admin_pagenum'))->select();
        $this->assign('role',$role);
        $this->assign('list',$list);
        $this->assign('page',$show);// 赋值分页输出
        $this->display();
    }

    public function blacklist_search(){
        $string = $_POST['sea'];
        import('ORG.Util.Page');// 导入分页类
        $role = M('Role')->getField('id,name');
        //$map = array();
        $map['username'] = array('like','%'.$string.'%');
        $UserDB = D('blacklist');
        $count = $UserDB->where($map)->count();
        $Page       = new Page($count);// 实例化分页类 传入总记录数
        // 进行分页数据查询 注意page方法的参数的前面部分是当前的页数使用 $_GET[p]获取
        $nowPage = isset($_GET['p'])?$_GET['p']:1;
        $show       = $Page->show();// 分页显示输出
        $list = $UserDB->where($map)->order('id ASC')->page($nowPage.','.C('web_admin_pagenum'))->select();
        $this->assign('role',$role);
        $this->assign('list',$list);
        $this->assign('page',$show);// 赋值分页输出
        $this->display('blacklist');
    }

    // 添加角色
    public function blacklist_add(){
        $RoleDB = D("blacklist");
        if(isset($_POST['dosubmit'])) {
            //根据表单提交的POST数据创建数据对象
            if($RoleDB->create()){
                if($RoleDB->add()){
                    $this->assign("jumpUrl",U('/Admin/List/blacklist'));
                    $this->success('添加成功！');
                }else{
                     $this->error('添加失败!');
                }
            }else{
                $this->error($RoleDB->getError());
            }
        }else{
            $this->assign('tpltitle','添加');
            $this->display();
        }
    }

    // 编辑角色
    public function blacklist_detail(){
        $RoleDB = D("blacklist");
        $id = $this->_get('id','intval',0);
        if(!$id)$this->error('参数错误!');
        $info = $RoleDB->getBlack(array('id'=>$id));
//            $this->assign('tpltitle','编辑');
        $this->assign('info',$info);
        $this->display();
    }

    //删除角色
    public function blacklist_del(){
        $id = $this->_get('id','intval',0);
        if(!$id)$this->error('参数错误!');
        $RoleDB = D('blacklist');
        if($RoleDB->delBlack('id='.$id)){
            $UserDB=D('Account');
            $data['id']=$id;
            $data['isblack']=0;
            $UserDB->save($data);
            $this->assign("jumpUrl",U('/Admin/List/blacklist'));
            $this->success('删除成功！');
        }else{
            $this->error('删除失败!');
        }
    }

    // 排序权重更新
    public function blacklist_sort(){
        $sorts = $this->_POST('sort');
        if(!is_array($sorts))$this->error('参数错误!');
        foreach ($sorts as $id => $sort) {
            D('blacklist')->upRole( array('id' =>$id , 'sort' =>intval($sort) ) );
        }
        $this->assign("jumpUrl",U('/Admin/List/blacklist'));
        $this->success('更新完成！');
    }
	
}