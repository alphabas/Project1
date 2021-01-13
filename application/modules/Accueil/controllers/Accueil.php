<?php

defined('BASEPATH') OR exit('No direct script access allowed');

class Accueil extends CI_Controller {

    function __construct() {
          parent::__construct();
          // helper_session_exists();

    }

    public function index() {
      
			$this->load->view('Accueil_view',$data);
    }

}