<?php
class DealModel extends Model {
	
	//Auto finish
	protected $_auto = array (

	);

	//Delete one record
	public function delDeal($where) {
		if($where){
			return $this->where($where)->delete();
		}else{
			return false;
		}
	}

	//Auto verify

	//Get all the informaition about deals

	//Get detail information about single deal
	// 获取单个记录信息
	public function getDeal($where = '',$field = '*') {
		return $this->field($field)->where($where)->find();
	}
	

}