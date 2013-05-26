<?php 
class AuthappealModel extends Model {

//自动完成
	protected $_auto = array ( 
		array('password','md5',1,'function'),	
		
	);
	//自动验证
	protected $_validate=array(
		array('username','require','用户名称必须！',1,'',3),
		array('status','require','角色状态必须！',1,'',3), 
	);


	// 获取所有认证用户信息
	public function getAllAuthUser($where = '' , $order = 'id  ASC', $limit='') {
		return $this->where($where)->order($order)->limit($limit)->select();
	}

	// 获取单个认证用户信息
	public function getAuthUser($where = '',$field = '*') {
		return $this->field($field)->where($where)->find();
	}

	// 删除认证用户
	public function delAuthUser($where) {
		if($where){
			return $this->where($where)->delete();
		}else{
			return false;
		}
	}

	public function passAuthUser($data){
		if($data){
			$data['pass'] = '1';
            return $this->save($data);
		}else{
			return false;
		}
	}

	// 更新认证用户
	public function upAuthUser($data) {
		if($data){
			return $this->save($data);
		}else{
			return false;
		}
	}

	
}
