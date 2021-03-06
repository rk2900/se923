<?php
/**
 * 后台用户管理模块
 * 
 */
class AccountAction extends AdminAction {
    public function _initialize() {
        parent::_initialize();  //RBAC 验证接口初始化
    }

/* ========用户部分======== */
    public function index(){
        import('ORG.Util.Page');// 导入分页类
        $role = M('Role')->getField('id,name');
        // var_dump($role);

        $map = array();
        // var_dump($map);
        $UserDB = D('Account');
        $count = $UserDB->where($map)->count();
        // var_dump($count);
        $Page       = new Page($count);// 实例化分页类 传入总记录数
        // 进行分页数据查询 注意page方法的参数的前面部分是当前的页数使用 $_GET[p]获取
        $nowPage = isset($_GET['p'])?$_GET['p']:1;
        $show       = $Page->show();// 分页显示输出
        $list = $UserDB->where($map)->order('id ASC')->page($nowPage.','.C('web_admin_pagenum'))->select();
        // var_dump($list);
        $this->assign('role',$role);
        $this->assign('list',$list);
        $this->assign('page',$show);// 赋值分页输出
        $this->display();
    }

    // 添加用户
    public function add(){
        $UserDB = D("Account");
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
                        $this->assign("jumpUrl",U('/Admin/Account/index'));
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

    public function search(){
        $string = $_POST['sea'];
        import('ORG.Util.Page');// 导入分页类
        // $role = M('Role')->getField('id,name');
        // $map['account'] = array('like','%'.$string.'%');
        // var_dump($map);
        $UserDB = D('Account');
        $temp='account like "%'.$string.'%"';
        var_dump($temp);
        $count = $UserDB->where($temp)->count();
        // var_dump($count);
        $Page       = new Page($count);// 实例化分页类 传入总记录数
        // 进行分页数据查询 注意page方法的参数的前面部分是当前的页数使用 $_GET[p]获取
        $nowPage = isset($_GET['p'])?$_GET['p']:1;
        $show       = $Page->show();// 分页显示输出
        $list = $UserDB->where($temp)->order('id ASC')->page($nowPage.','.C('web_admin_pagenum'))->select();
        // $this->assign('role',$role);
        // var_dump($list);
        $this->assign('list',$list);
        $this->assign('page',$show);// 赋值分页输出
        $this->display('index');
    }

    public function vip(){
        
        // if(isset($_POST['dosubmit'])) {
        //     //根据表单提交的POST数据创建数据对象
        //     if($RoleDB->create()){
        //         if($RoleDB->save()){
        //             $this->assign("jumpUrl",U('/Admin/Account/role'));
        //             $this->success('编辑成功！');
        //         }else{
        //              $this->error('编辑失败!');
        //         }
        //     }else{
        //         $this->error($RoleDB->getError());
        //     }
        // }else{
            $RoleDB = M("Account");
            $id = $this->_get('id','intval',0);
            if(!$id)$this->error('参数错误!');
            $data['id']=$id;
            $data['vip']=1;
            $conn = mysql_connect("localhost","root","62771115xbb");
            if (!$conn)
              {
              die('Could not connect: ' . mysql_error());
              }

            mysql_select_db("sb", $conn);
            $query='update tp_account set vip=1 where id='.$id;
            mysql_query($query);
            // $RoleDB->save($data);//setField(array('vip'=>1));
            var_dump($query);
            $map['id']=$id;
            $record = $RoleDB->where($map)->find();
            // var_dump($record);
            $Vip = M("List");
            $Vip->create();
            $Vip->add($record);

            import('ORG.Util.Page');// 导入分页类
            // $role = M('Role')->getField('id,name');
            $map = array();
            $UserDB = D('Account');
            $count = $UserDB->where($map)->count();
            $Page       = new Page($count);// 实例化分页类 传入总记录数
            // 进行分页数据查询 注意page方法的参数的前面部分是当前的页数使用 $_GET[p]获取
            $nowPage = isset($_GET['p'])?$_GET['p']:1;
            $show       = $Page->show();// 分页显示输出
            $list = $UserDB->where($map)->order('id ASC')->page($nowPage.','.C('web_admin_pagenum'))->select();
            // $this->assign('role',$role);
            $this->assign('list',$list);
            $this->assign('page',$show);// 赋值分页输出
            $this->display('index');
        // }
    }

    public function rmvip(){
        $RoleDB = D("Account");
        if(isset($_POST['dosubmit'])) {
            //根据表单提交的POST数据创建数据对象
            if($RoleDB->create()){
                if($RoleDB->save()){
                    $this->assign("jumpUrl",U('/Admin/Account/role'));
                    $this->success('编辑成功！');
                }else{
                     $this->error('编辑失败!');
                }
            }else{
                $this->error($RoleDB->getError());
            }
        }else{
            $id = $this->_get('id','intval',0);
            if(!$id)$this->error('参数错误!');
            $data['id']=$id;
            $data['vip']=0;
            $RoleDB->save($data);

            $map['id']=$id;
            $record = $RoleDB->where($map)->find();

            $Vip = M("List");
            $Vip->where($map)->delete();
            //$Vip->add($record);

            import('ORG.Util.Page');// 导入分页类
            // $role = M('Role')->getField('id,name');
            $map = array();
            $UserDB = D('Account');
            $count = $UserDB->where($map)->count();
            $Page       = new Page($count);// 实例化分页类 传入总记录数
            // 进行分页数据查询 注意page方法的参数的前面部分是当前的页数使用 $_GET[p]获取
            $nowPage = isset($_GET['p'])?$_GET['p']:1;
            $show       = $Page->show();// 分页显示输出
            $list = $UserDB->where($map)->order('id ASC')->page($nowPage.','.C('web_admin_pagenum'))->select();
            // $this->assign('role',$role);
            $this->assign('list',$list);
            $this->assign('page',$show);// 赋值分页输出
            $this->display('index');
        }
    }

    public function black(){
        $RoleDB = D("Account");
        if(isset($_POST['dosubmit'])) {
            //根据表单提交的POST数据创建数据对象
            if($RoleDB->create()){
                if($RoleDB->save()){
                    $this->assign("jumpUrl",U('/Admin/Account/role'));
                    $this->success('编辑成功！');
                }else{
                     $this->error('编辑失败!');
                }
            }else{
                $this->error($RoleDB->getError());
            }
        }else{
            $id = $this->_get('id','intval',0);
            if(!$id)$this->error('参数错误!');
            $data['id']=$id;
            $data['black']=1;
            $RoleDB->save($data);

            $map['id']=$id;
            $record = $RoleDB->where($map)->find();
            //var_dump($record);
            //$data['username']=$record["username"];
            $Vip = M("Blacklist");
            $Vip->create();
            $Vip->add($record);

            import('ORG.Util.Page');// 导入分页类
            // $role = M('Role')->getField('id,name');
            $map = array();
            $UserDB = D('Account');
            $count = $UserDB->where($map)->count();
            $Page       = new Page($count);// 实例化分页类 传入总记录数
            // 进行分页数据查询 注意page方法的参数的前面部分是当前的页数使用 $_GET[p]获取
            $nowPage = isset($_GET['p'])?$_GET['p']:1;
            $show       = $Page->show();// 分页显示输出
            $list = $UserDB->where($map)->order('id ASC')->page($nowPage.','.C('web_admin_pagenum'))->select();
            // $this->assign('role',$role);
            $this->assign('list',$list);
            $this->assign('page',$show);// 赋值分页输出
            $this->display('index');
        }

    }
    public function rmblack(){
        $RoleDB = D("Account");
        if(isset($_POST['dosubmit'])) {
            //根据表单提交的POST数据创建数据对象
            if($RoleDB->create()){
                if($RoleDB->save()){
                    $this->assign("jumpUrl",U('/Admin/Account/role'));
                    $this->success('编辑成功！');
                }else{
                     $this->error('编辑失败!');
                }
            }else{
                $this->error($RoleDB->getError());
            }
        }else{
            $id = $this->_get('id','intval',0);
            if(!$id)$this->error('参数错误!');
            $data['id']=$id;
            $data['black']=0;
            $RoleDB->save($data);

            $map['id']=$id;
            $record = $RoleDB->where($map)->find();
            //var_dump($record);
            //$data['username']=$record["username"];
            $Vip = M("Blacklist");
            $Vip->where($map)->delete();

            import('ORG.Util.Page');// 导入分页类
            // $role = M('Role')->getField('id,name');
            $map = array();
            $UserDB = D('Account');
            $count = $UserDB->where($map)->count();
            $Page       = new Page($count);// 实例化分页类 传入总记录数
            // 进行分页数据查询 注意page方法的参数的前面部分是当前的页数使用 $_GET[p]获取
            $nowPage = isset($_GET['p'])?$_GET['p']:1;
            $show       = $Page->show();// 分页显示输出
            $list = $UserDB->where($map)->order('id ASC')->page($nowPage.','.C('web_admin_pagenum'))->select();
            // $this->assign('role',$role);
            $this->assign('list',$list);
            $this->assign('page',$show);// 赋值分页输出
            $this->display('index');
        }

    }
    // 编辑用户
    public function edit(){
         $UserDB = D("Account");
        if(isset($_POST['dosubmit'])) {
            $password = $_POST['password'];
            $repassword = $_POST['repassword'];
            // if(!empty($password) || !empty($repassword)){
            //     if($password != $repassword){
            //         $this->error('两次输入密码不一致！');
            //     }
            //     $_POST['password'] = md5($password);
            // }

            // if(empty($password) && empty($repassword)) unset($_POST['password']);   //不填写密码不修改

            //根据表单提交的POST数据创建数据对象
            if($UserDB->create()){
                if($UserDB->save()){
                    $where['id'] = $_POST['id'];
                    // $data['role_id'] = $_POST['role'];
                    M("Account")->where($where)->save($data);
                    $this->assign("jumpUrl",U('/Admin/Account/index'));
                    $this->success('编辑成功！');
                }else{
                     $this->error('编辑失败!');
                }
            }else{
                $this->error($UserDB->getError());
            }
        }else{
            $id = $this->_get('id','intval',0);
            if(!$id)$this->error('参数错误!');
            $role = D('Role')->getAllRole(array('status'=>1),'sort DESC');
            $info = $UserDB->getUser(array('id'=>$id));
            $this->assign('tpltitle','编辑');
            $this->assign('role',$role);
            $this->assign('info',$info);
            $this->display('add');
        }
    }

    //ajax 验证用户名
    public function check_username(){
        $userid = $this->_get('userid');
        $username = $this->_get('username');
        if(D("Account")->check_name($username,$userid)){
            echo 1;
        }else{
            echo 0;
        }
    }

    //删除用户
    public function del(){
        $id = $this->_get('id','intval',0);
        if(!$id)$this->error('参数错误!');
        $UserDB = D('Account');
        $info = $UserDB->getUser(array('id'=>$id));
        if($info['username']==C('SPECIAL_USER')){     //无视系统权限的那个用户不能删除
           $this->error('禁止删除此用户!');
        }
        if($UserDB->delUser('id='.$id)){
            if(M("RoleUser")->where('user_id='.$id)->delete()){
                $this->assign("jumpUrl",U('/Admin/Account/index'));
                $this->success('删除成功！');
            }else{
                $this->error('用户成功,但角色对应关系删除失败!');
            }
        }else{
            $this->error('删除失败!');
        }
    }

/* ========角色部分======== */

    // 角色管理列表
    public function role(){
        $RoleDB = D('Role');
        $list = $RoleDB->getAllRole();
        $this->assign('list',$list);
        $this->display();
    }

    // 添加角色
    public function role_add(){
        $RoleDB = D("Role");
        if(isset($_POST['dosubmit'])) {
            //根据表单提交的POST数据创建数据对象
            if($RoleDB->create()){
                if($RoleDB->add()){
                    $this->assign("jumpUrl",U('/Admin/Account/role'));
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
    public function role_edit(){
         $RoleDB = D("Role");
        if(isset($_POST['dosubmit'])) {
            //根据表单提交的POST数据创建数据对象
            if($RoleDB->create()){
                if($RoleDB->save()){
                    $this->assign("jumpUrl",U('/Admin/Account/role'));
                    $this->success('编辑成功！');
                }else{
                     $this->error('编辑失败!');
                }
            }else{
                $this->error($RoleDB->getError());
            }
        }else{
            $id = $this->_get('id','intval',0);
            if(!$id)$this->error('参数错误!');
            $info = $RoleDB->getRole(array('id'=>$id));
            $this->assign('tpltitle','编辑');
            $this->assign('info',$info);
            $this->display('role_add');
        }
    }



    //删除角色
    public function role_del(){
        $id = $this->_get('id','intval',0);
        if(!$id)$this->error('参数错误!');
        $RoleDB = D('Role');
        if($RoleDB->delRole('id='.$id)){
            $this->assign("jumpUrl",U('/Admin/Account/role'));
            $this->success('删除成功！');
        }else{
            $this->error('删除失败!');
        }
    }

    // 排序权重更新
    public function role_sort(){
        $sorts = $this->_POST('sort');
        if(!is_array($sorts))$this->error('参数错误!');
        foreach ($sorts as $id => $sort) {
            D('Role')->upRole( array('id' =>$id , 'sort' =>intval($sort) ) );
        }
        $this->assign("jumpUrl",U('/Admin/Account/role'));
        $this->success('更新完成！');
    }

/* ========权限设置部分======== */
    
    //权限浏览
    public function access(){
        $roleid = $this->_get('roleid','intval',0);
        if(!$roleid) $this->error('参数错误!');
        Vendor('Common.Tree');  //导入通用树型类

        $Tree = new Tree();
        $Tree->icon = array('&nbsp;&nbsp;&nbsp;│ ','&nbsp;&nbsp;&nbsp;├─ ','&nbsp;&nbsp;&nbsp;└─ ');
        $Tree->nbsp = '&nbsp;&nbsp;&nbsp;';

        $NodeDB = D('Node');
        $node = $NodeDB->getAllNode();

        $AccessDB = D('Access');
        $access = $AccessDB->getAllAccess('','role_id,node_id,pid,level');
       

        foreach ($node as $n=>$t) {
            $node[$n]['checked'] = ($AccessDB->is_checked($t,$roleid,$access))? ' checked' : '';
            $node[$n]['depth'] = $AccessDB->get_level($t['id'],$node);
            $node[$n]['pid_node'] = ($t['pid'])? ' class="tr lt child-of-node-'.$t['pid'].'"' : '';
        }
        $str  = "<tr id='node-\$id' \$pid_node>
                    <td style='padding-left:30px;'>\$spacer<input type='checkbox' name='nodeid[]' value='\$id' class='radio' level='\$depth' \$checked onclick='javascript:checknode(this);' > \$title (\$name)</td>
                </tr>";

        $Tree->init($node);
        $html_tree = $Tree->get_tree(0, $str);
        $this->assign('html_tree',$html_tree);

        $this->display();
    }

    //权限编辑
    public function access_edit(){
        $roleid = $this->_post('roleid','intval',0);
        $nodeid = $this->_post('nodeid');
        if(!$roleid) $this->error('参数错误!');
        $AccessDB = D('Access');

        if (is_array($nodeid) && count($nodeid) > 0) {  //提交得有数据，则修改原权限配置
            $AccessDB -> delAccess(array('role_id'=>$roleid));  //先删除原用户组的权限配置

            $NodeDB = D('Node');
            $node = $NodeDB->getAllNode();

            foreach ($node as $_v) $node[$_v[id]] = $_v;
            foreach($nodeid as $k => $node_id){
                $data[$k] = $AccessDB -> get_nodeinfo($node_id,$node);
                $data[$k]['role_id'] = $roleid;
            }
            $AccessDB->addAll($data);   // 重新创建角色的权限配置
        } else {    //提交的数据为空，则删除权限配置
            $AccessDB -> delAccess(array('role_id'=>$roleid));
        }
        $this->assign("jumpUrl",U('/Admin/Account/access',array('roleid'=>$roleid)));
        $this->success('设置成功！');
    }

	
}