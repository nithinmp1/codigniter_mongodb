<?php
class Register_model extends CI_Model{
	public function get_employee(){
		$this->db->select('`id`, `name`, `email`, `status`, `phone`, `address`');
		$this->db->from('employee');	
		$data=$this->db->get();
		return $data->result();
	}
	public function login_validate($id){
		$this->db->select('`id`, `name`, `email`, `status`, `phone`, `address`');
		$this->db->from('employee');	
		$this->db->where('id',$id);	
		$data=$this->db->get();
		return $data->row();
	}
	public function save_employee($data) {
		$this->db->insert('employee',$data);
		if ($this->db->trans_status() == FALSE){
            return false;
        }
        else {
            return true;
        }
	}
	public function save_xml($data) {
		$this->db->insert('xml_data',$data);
		if ($this->db->trans_status() == FALSE){
            return false;
        }
        else {
            return true;
        }
	}
}
?>

