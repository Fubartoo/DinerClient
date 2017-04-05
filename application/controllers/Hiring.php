<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Hiring extends Application
{

	function __construct() {
		parent::__construct();
	}
	
	public function index()
	{
        $stuff = file_get_contents('../data/jobs.md');
        $this->data['content'] = $this->parsedown->parse($stuff);
        $this->render('template-secondary'); 
	}

}
