<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Crud extends Application {

	public function index()
	{
		$userrole = $this->session->userdata('userrole');
		if ($userrole != 'admin')
			$message = 'You are not authorized to access this page. Go away';
		else
			$message = 'Get ready to fix stuff.';
		$this->data['content'] = $message;
		$this->render();
	}

}
