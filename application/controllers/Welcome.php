<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Welcome extends Application {

	public function index()
	{
		$result = '';
		$oddrow = true;
		foreach ($this->categories->all() as $category)
		{
//			$viewparms = array(
//				'direction' => ($oddrow ? 'left' : 'right')
//			);
//			$viewparms = array_merge($viewparms, $category);
			$category->direction = ($oddrow ? 'left' : 'right');
			$result .= $this->parser->parse('category-home', $category, true);
			$oddrow = ! $oddrow;
		}
		$this->data['content'] = $result;
		$this->render();
	}

}
