<?php

if (!defined('APPPATH'))
	exit('No direct script access allowed');

/**
 * helpers/formfields_helper.php
 *
 * Functions to help with form generation.
 * If you want different styling (eg Bootstrap), use different
 * fragments folder (application/views/_fields).
 *
 * @author		JLP
 * @copyright           Copyright (c) 2010-2016, James L. Parry
 * ------------------------------------------------------------------------
 */
/**
 *  Construct a text input.
 * 
 * @param string $label Descriptive label for the control
 * @param string $name ID and name of the control; s/b the same as the RDB table column
 * @param mixed $value Initial value for the control
 * @param string $explain Help text for the control
 * @param int $maxlen Maximum length of the value, characters
 * @param int $size width in ems of the input control
 * @param boolean $disabled True if non-editable
 */
if (!function_exists('makeTextField'))
{

	function makeTextField($label, $name, $value, $explain = "", $maxlen = 40, $size = 25, $disabled = false)
	{
		$CI = &get_instance();
		$parms = array(
			'label' => $label,
			'name' => $name,
			'value' => htmlentities($value, ENT_COMPAT, 'UTF-8'),
			'explain' => $explain,
			'maxlen' => $maxlen,
			'size' => $size,
			'disabled' => ($disabled ? 'disabled="disabled"' : '')
		);
		return $CI->parser->parse('_fields/textfield', $parms, true);
	}

}


/**
 * Construct a form row to edit a large field.
 * 
 * @param <type> $label
 * @param <type> $name
 * @param <type> $value
 * @param <type> $explain
 * @param <type> $size
 * @param <type> $rows 
 */
if (!function_exists('makeTextArea'))
{

	function makeTextArea($label, $name, $value, $explain = "", $size = 25, $rows = 5, $disabled = false)
	{
		$height = (int) (strlen($value) / 80) + 1;
		if ($rows < $height)
			$rows = $height;
		$CI = &get_instance();
		$parms = array(
			'label' => $label,
			'name' => $name,
			'value' => htmlentities($value, ENT_COMPAT, 'UTF-8'),
			'explain' => $explain,
			'size' => $size,
			'rows' => $rows,
			'disabled' => ($disabled ? 'disabled="disabled"' : '')
		);
		return $CI->parser->parse('_fields/textarea', $parms, true);
	}

}

/**
 * Construct a form row to edit a checkbox.
 * @param <type> $label
 * @param <type> $name
 * @param <type> $value
 * @param <type> $explain
 * @param <type> $disable 
 */
if (!function_exists('makeCheckbox'))
{

	function makeCheckbox($label, $name, $value, $explain = "", $disabled = false)
	{
		$CI = &get_instance();
		$parms = array(
			'label' => $label,
			'name' => $name,
			'checked' => $value ? 'checked' : '',
			'explain' => ($explain <> "") ? $explain : $name,
			'disabled' => ($disabled ? 'disabled="disabled"' : '')
		);
		return $CI->parser->parse('_fields/checkbox', $parms, true);
	}

}

/**
 * Construct a form row to edit a radiobutton
 * @param <type> $label
 * @param <type> $name
 * @param <type> $value
 * @param <type> $explain 
 */
if (!function_exists('makeRadioButtons'))
{

	function makeRadioButtons($title, $name, $value, $choices, $explain = "", $disabled = false)
	{
		$CI = &get_instance();
		$parms = array(
			'title' => $title,
			'name' => $name,
			'explain' => ($explain <> "") ? $explain : $name,
			'disabled' => ($disabled ? 'disabled="disabled"' : '')
		);
		$options = array();
		foreach ($choices as $key => $label)
		{
			$row = array(
				'value' => $key,
				'checked' => ($key == $value) ? 'checked' : '',
				'label' => $label
			);
			$options[] = array_merge($parms,$row); 
			$first = false;
		}
		$parms['options'] = $options;
		return $CI->parser->parse('_fields/radio_buttons', $parms, true);
	}

}

/**
 * Construct a form row to edit a combo box field.
 * 
 * @param string $label Descriptive label for the control
 * @param string $name ID and name of the control; s/b the same as the RDB table column
 * @param string $value Initial value for the control
 * @param mixed $options Array of key/value pairs for the combobox
 * @param string $explain Help text for the control
 * @param boolean $disabled True if non-editable
 */
if (!function_exists('makeCombobox'))
{

	function makeCombobox($label, $name, $value, $options, $explain = "", $disabled = false)
	{
		$CI = &get_instance();
		$parms = array(
			'label' => $label,
			'name' => $name,
			'value' => htmlentities($value, ENT_COMPAT, 'UTF-8'),
			'explain' => $explain,
			'disabled' => ($disabled ? 'disabled="disabled"' : '')
		);

		$choices = array();
		foreach ($options as $val => $display)
		{
			$row = array(
				'val' => $val,
				'selected' => ($val == $value) ? 'selected="true"' : '',
				'display' => htmlentities($display)
			);
			$choices[] = $row;
		}
		$parms['options'] = $choices;

		return $CI->parser->parse('_fields/combofield', $parms, true);
	}

}

/**
 * Make a submit button.
 * 
 * @param string $label Label to appear on the button
 * @param string $title "Tooltip" text 
 * @param string $css_extras Extra CSS class information
 */
if (!function_exists('makeSubmitButton'))
{

	function makeSubmitButton($label, $title, $css_extras = "")
	{
		$CI = &get_instance();
		$parms = array(
			'label' => $label,
			'title' => $title,
			'css_extras' => $css_extras
		);
		return $CI->parser->parse('_fields/submit', $parms, true);
	}

}
