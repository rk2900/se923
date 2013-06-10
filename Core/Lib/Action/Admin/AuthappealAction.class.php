<?php
/**
 * 后台认证申诉管理模块
 * 
 */
class AuthappealAction extends AdminAction {
    public function _initialize() {
        parent::_initialize();  //RBAC 验证接口初始化
    }

/* ========认证部分======== */
    public function index(){
        import('ORG.Util.Page');// 导入分页类
        $map = array();
        $AuthDB = D('Authappeal');
        $count = $AuthDB->where($map)->count();
        $Page       = new Page($count);// 实例化分页类 传入总记录数
        // 进行分页数据查询 注意page方法的参数的前面部分是当前的页数使用 $_GET[p]获取
        $nowPage = isset($_GET['p'])?$_GET['p']:1;
        $show       = $Page->show();// 分页显示输出
        $list = $AuthDB->where($map)->order('id ASC')->page($nowPage.','.C('web_admin_pagenum'))->select();
        $this->assign('list',$list);
        $this->assign('page',$show);// 赋值分页输出
        $this->display();
    }

   
    // 通过
     public function del(){
        $id = $this->_get('id','intval',0);
        if(!$id)$this->error('参数错误!');
        $AuthDB = D('Authappeal');
         if($AuthDB->delAuthUser('id='.$id)){
             $this->assign("jumpUrl",U('/Admin/Authappeal/index'));
             $this->success('删除成功！');
        }else{
             $this->error('删除失败!');
         }
     }

 // 驳回
     public function refuse(){
        $id = $this->_get('id','intval',0);
        if(!$id)$this->error('参数错误!');
        $AuthDB = D('Authappeal');
         if($AuthDB->refuseAuthUser('id='.$id)){
             $this->assign("jumpUrl",U('/Admin/Authappeal/index'));
             $this->success('驳回成功！');
        }else{
             $this->error('驳回失败!');
         }
     }
    

   //通过认证
     public function pass(){
        $id = $this->_get('id','intval',0);
        if(!$id)$this->error('参数错误!');
        $AuthDB = D('Authappeal');
         if($AuthDB->passAuthUser('id='.$id)){

            
             $this->assign("jumpUrl",U('/Admin/Authappeal/index'));
             $this->success('认证成功！');
        }else{
             $this->error('认证失败!');
         }
     }

/* ========申诉部分======== */

    // 申诉管理列表
     public function appeal(){
        import('ORG.Util.Page');// 导入分页类
         
         $map = array();
         $AppealDB = D('Appeal');
         $count = $AppealDB->where($map)->count();
         $Page       = new Page($count);// 实例化分页类 传入总记录数
         // 进行分页数据查询 注意page方法的参数的前面部分是当前的页数使用 $_GET[p]获取
         $nowPage = isset($_GET['p'])?$_GET['p']:1;
         $show       = $Page->show();// 分页显示输出
         $list = $AppealDB->where($map)->order('id ASC')->page($nowPage.','.C('web_admin_pagenum'))->select();
         
         $this->assign('list',$list);
         $this->assign('page',$show);// 赋值分页输出
         $this->display();
     }

  
    // // 编辑
    //  public function appeal_edit(){
    //       $AppealDB = D("Appeal");
    //      if(isset($_POST['dosubmit'])) {
    //          //根据表单提交的POST数据创建数据对象
    //          if($AppealDB->create()){
    //              if($AppealDB->save()){
    //                  $this->assign("jumpUrl",U('/Admin/Authappeal/appeal'));
    //                  $this->success('编辑成功！');
    //              }else{
    //                   $this->error('编辑失败!');
    //              }
    //          }else{
    //              $this->error($AppealDB->getError());
    //          }
    //      }else{
    //          $id = $this->_get('id','intval',0);
    //          if(!$id)$this->error('参数错误!');
    //          $info = $RoleDB->getBlack(array('id'=>$id));
    //          $this->assign('tpltitle','编辑');
    //         $this->assign('info',$info);
    //          $this->display('appeal_del');
    //      }
    //  }

    //删除
     public function appeal_del(){
        $id = $this->_get('id','intval',0);
         if(!$id)$this->error('参数错误!');
        $AppealDB = D('Appeal');
         if($AppealDB->delAppeal('id='.$id)){
             $this->assign("jumpUrl",U('/Admin/Authappeal/appeal'));
             $this->success('删除成功！');
         }else{
             $this->error('删除失败!');
         }
     }

       //驳回
     public function appeal_refuse(){
        $id = $this->_get('id','intval',0);
         if(!$id)$this->error('参数错误!');
        $AppealDB = D('Appeal');
         if($AppealDB->refuseAppeal('id='.$id)){
             $this->assign("jumpUrl",U('/Admin/Authappeal/appeal'));
             $this->success('驳回成功！');
         }else{
             $this->error('驳回失败!');
         }
     }


//通过申诉
     public function appeal_pass(){
        $id = $this->_get('id','intval',0);
        if(!$id)$this->error('参数错误!');
        $AppealDB = D('Appeal');
         if($AppealDB->passAppealUser('id='.$id)){
            
             $this->assign("jumpUrl",U('/Admin/Authappeal/appeal'));
             $this->success('认证成功！');
        }else{
             $this->error('认证失败!');
         }
     }
   

}