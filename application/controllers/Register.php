<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Register extends CI_Controller {
	function __construct() {
		parent::__construct();
		$this->load->model('Register_model');	
		$this->load->library('mongo_db',['activate'=>'default'],'mongo_db');
	}
	public function index(){
		$data['test'] = $this->mongo_db->select(array('name', '_id'))->get('roles');
		// echo "<pre>";print_r($data['test']);die;
		$this->load->view('home');
	}
	public function register_employee(){
		$this->load->view('register');
	}
	function save_employee(){
		$insert= $this->mongo_db->insert('employee', $data = array(
			'name' 		=> $this->input->post('name'),
            'email' 	=> $this->input->post('email'),
            'phone' 	=> $this->input->post('phone'),
            'address' 	=> $this->input->post('address')
		));

		if ($insert) {
			$response['error']=false;
			$response['message']='Register successfully';
		}else{
			$response['error']=true;
			$response['message']='Some error occurs';
		}
		echo json_encode($response);exit;
	}

	public function save_employeeMysql(){
		$response=array();
		$data = array(
            'name' 		=> $this->input->post('name'),
            'email' 	=> $this->input->post('email'),
            'phone' 	=> $this->input->post('phone'),
            'address' 	=> $this->input->post('address')
            );
		$insert=$this->Register_model->save_employee($data);
		if ($insert) {
			$response['error']=false;
			$response['message']='Register successfully';
		}else{
			$response['error']=true;
			$response['message']='Some error occurs';
		}
		echo json_encode($response);exit;
		//$this->load->view('register');
	}
	public function login(){
		$this->load->view('login');
	}
	function login_validate($emailId="nithin@trawex.com"){
		$emailId="nithin@trawex.com";
		$emp = $this->mongo_db->get_where('employee',array('email' => $emailId));
		if ($emp) {
			$response['error']=false;
			$response['message']=(object)$emp[0];
		}else{
			$response['error']=true;
			$response['message']='Invalid Id';
		}
		echo json_encode($response);exit;

	}

	public function login_validateMysql($id){
		if ($id) {
			$data=$this->Register_model->login_validate($id);
			if ($data) {
				$response['error']=false;
				$response['message']=$data;
			}else{
				$response['error']=true;
				$response['message']='Invalid Id';
			}
		}else{
			$response['error']=true;
			$response['message']='Invalid request';
		}
		
		echo json_encode($response);exit;
	}
	/*img upload*/

	public function img_upload(){
		$this->load->view('img_upload');
	}
	public function file_upload(){
		$config['upload_path'] = './uploads/';
        $config['allowed_types'] = 'jpg';

        $this->load->library('upload', $config);

        if (!$this->upload->do_upload('img')) {
            $response['error']=true;
			$response['message']=$this->upload->display_errors();
        } else {
            $response['error']=false;
			$response['message']='Uploaded successfully';
        }
        echo json_encode($response);exit;
	}
	/* XML to json */
	public function xml(){
		$file = file_get_contents('./uploads/data.xml');
		$xml = simplexml_load_string($file);
		echo $json = json_encode($xml);
		$array = json_decode($json,TRUE);
		echo "<pre>";print_r($array);echo "</pre>";
		$data['data']=$json;
		$insert=$this->Register_model->save_xml($data);
		
	}

}
