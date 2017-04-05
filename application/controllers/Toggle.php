<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Toggle extends Application {

	public function index()
	{
		$origin = $_SERVER['HTTP_REFERER'];

		$role = $this->session->userdata('userrole');
		if ($role == 'user')
			$role = 'admin';
		else
			$role = 'user';
		$this->session->set_userdata('userrole', $role);

		redirect($origin);
	}

}
