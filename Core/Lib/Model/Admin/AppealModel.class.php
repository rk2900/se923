<?php 
class AppealModel extends Model {

	//自动验证
	protected $_validate=array(
		array('username','require','申诉名字必须！',1,'',3),
		
		array('status','require','角色状态必须！',1,'',3),
	);

	// 获取所有申诉信息
	public function getAllAppeal($where = '' , $order = 'id  ASC', $limit='') {
		return $this->where($where)->order($order)->limit($limit)->select();
	}

	// 获取单条申诉信息
	public function getAppeal($where = '',$field = '*') {
		return $this->field($field)->where($where)->find();
	}

	// 删除申诉信息
	public function delAppeal($where) {
		if($where){
			return $this->where($where)->delete();
		}else{
			return false;
		}
	}

	
	
	public function passAppealUser($data){
		if($data){
			$data['pass'] = '1';
            return $this->save($data);
		}else{
			return false;
		}
	}

	// 更新申诉信息
	public function upAppeal($data) {
		if($data){
			return $this->save($data);
		}else{
			return false;
		}
	}

}