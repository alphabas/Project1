<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Register extends CI_Controller {

    function __construct() {
          parent::__construct();
          // helper_session_exists();


    }

    public function index() {
      
      
			$this->load->view('view_register');
    }



}