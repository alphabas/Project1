<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Index extends CI_Controller {

    public function __construct() {
        parent::__construct();
    }

    public function Index($params = NULL) {
        // redirect(base_url('frontOffice/Accueil/Likemus'));
               redirect(base_url('Home'));
    	// $this->load->view('login_view');

    }





}
