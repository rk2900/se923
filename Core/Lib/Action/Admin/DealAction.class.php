<?php
/*
 * 查看交易记录
 */

class DealAction extends AdminAction {
	public function _initialize() {
		parent::_initialize(); 
	}

	public function index(){
        import('ORG.Util.Page');// 导入分页类
        //$role = M('Deal')->getField('deal_id,name');
        $map = array();
        $DealDB = D('Deal');
        $count = $DealDB->where($map)->count();
        $Page       = new Page($count);// 实例化分页类 传入总记录数
        // 进行分页数据查询 注意page方法的参数的前面部分是当前的页数使用 $_GET[p]获取
        $nowPage = isset($_GET['p'])?$_GET['p']:1;
        $show       = $Page->show();// 分页显示输出
        $list = $DealDB->where($map)->order('deal_id ASC')->page($nowPage.','.C('web_admin_pagenum'))->select();
        // $this->assign('role',$role);
        $this->assign('list',$list);
        $this->assign('page',$show);// 赋值分页输出
        $this->display();
    }
	
    //删除记录
    public function del(){
        $deal_id = $this->_get('deal_id','intval',0);
        if(!$deal_id)$this->error('参数错误!');
        $DealDB = D('Deal');
        // $info = $DealDB->getDeal(array('deal_id'=>$deal_id));
        // if($info['username']==C('SPECIAL_USER')){     //无视系统权限的那个用户不能删除
        //    $this->error('禁止删除此记录!');
        // }
        if($DealDB->delDeal('deal_id='.$deal_id)){
            $this->assign("jumpUrl",U('/Admin/Deal/index'));
            $this->success('删除成功！');
        }else{
            $this->error('删除失败!');
        }
    }

    //交易详情
    public function readDetail() {
        $DealDB = D("Deal");
        // if(isset($_POST['dosubmit'])) {
        //     $password = $_POST['password'];
        //     $repassword = $_POST['repassword'];
        //     if(!empty($password) || !empty($repassword)){
        //         if($password != $repassword){
        //             $this->error('两次输入密码不一致！');
        //         }
        //         $_POST['password'] = md5($password);
        //     }

        //     if(empty($password) && empty($repassword)) unset($_POST['password']);   //不填写密码不修改

        //     //根据表单提交的POST数据创建数据对象
        //     if($UserDB->create()){
        //         if($UserDB->save()){
        //             $where['user_id'] = $_POST['id'];
        //             $data['role_id'] = $_POST['role'];
        //             M("RoleUser")->where($where)->save($data);
        //             $this->assign("jumpUrl",U('/Admin/User/index'));
        //             $this->success('编辑成功！');
        //         }else{
        //              $this->error('编辑失败!');
        //         }
        //     }else{
        //         $this->error($UserDB->getError());
        //     }
        // }else{
            $id = $this->_get('id','intval',0);
            if(!$id)$this->error('参数错误!');
            // $role = D('Role')->getAllRole(array('status'=>1),'sort DESC');
            $info = $DealDB->getDeal(array('id'=>$id));
            $this->assign('tpltitle','查看');
            // $this->assign('role',$role);
            $this->assign('info',$info);
            $this->display('detail');
        // }
    }

	


}