<?php
defined('BASEPATH') OR exit('No direct script access allowed');

class Login extends CI_Controller {

    public function __construct() {
        parent::__construct();
    }

    public function index($params = NULL) {
        
            $this->load->view('login_view');
         
    }

    public function Vendeur($params = NULL) {
        
            $this->load->view('Vendeur_login');
         
    }
     public function Creer_compte($params = NULL) {
        
            $this->load->view('Register_view');
         
    }
     public function creer(){
        $nom =strtoupper($this->input->post('nom'));
        $sexe= $this->input->post('sexe');
       
        $motPasse= md5($this->input->post('motPasse'));
        $motPasses= md5($this->input->post('motPasses'));
        
        $prenom= strtoupper($this->input->post('prenom'));
        $Pseudo= $this->input->post('Pseudo');
        $telephone= $this->input->post('telephone');
       

      
        
        $CODE_UTILISATEUR=helper_generate_code('utilisateur','CODE_UTILISATEUR','compte');

        if ($motPasse==$motPasses) {
          $password=$motPasses;
        }else{
          echo 'erreur#Le deux mots de passe ne sont pas semblable!#error';
          exit();
        }
        // NUMERO COMPTE
       
        $sql1="SELECT * FROM utilisateur WHERE PSEUDO='$Pseudo'";
        $requette=$this->Model_Ted->querysqlrow($sql1);
      if ($requette==""){  
          $donnee=array(
            'CODE_UTILISATEUR'=>$CODE_UTILISATEUR,
            'NOM'=>$nom,
            'PRENOM'=>$prenom,
            'PSEUDO'=>$Pseudo,
            'SEXE'=>$sexe, 
            'PROFIL'=>3,
            'PASSWORD'=>$password,
            'TELEPHONE_NUMBER'=>$telephone,
          );
         

          // $cree1=$this->Model->insert('utilisateurs',$donnee1);
          $cree=$this->Model->insert('utilisateur',$donnee);
          if ($cree) {
              $sql1="SELECT * FROM utilisateur WHERE PSEUDO='$Pseudo' AND PASSWORD='$password'";
        $user=$this->Model_Ted->querysqlrow($sql1);
                $session = array(
                    'CODE_UTILISATEUR' => $CODE_UTILISATEUR,
                    'USERNAME'=> $Pseudo,
                    'PROFIL' => 3,
                );
                 $this->session->set_userdata($session);
              echo 'Success#Création reussie!#success';
          }
        }else{
            echo 'erreur#Pseudo déja utiliser!#error';
         
        }  

          
    }

    public function do_login() {
        $login = $this->input->post('USERNAME');
        $password= md5($this->input->post('PASSWORD'));

        $criteremail= array('PSEUDO'=>$login,'PASSWORD'=>$password,'PROFIL'=>3,'IS_ACTIF'=>1);
        $user= $this->Model->getOne('utilisateur',$criteremail);             
                      
        if (!empty($user)) {
          
                $session = array(
                    'CODE_UTILISATEUR' => $user['CODE_UTILISATEUR'],
                    'USERNAME'=> $user['PSEUDO'],
                    'PROFIL' => $user['PROFIL'],
                );
                 $this->session->set_userdata($session);
                 echo 'success#'.$this->session->userdata('PROFIL').'#success';    
            }else{
         echo 'Erreur#Identifiant incorect#error';
       }
    }

     public function do_loginAdmin() {
        $login = $this->input->post('USERNAME');
        $password= md5($this->input->post('PASSWORD'));

        $criteremail= array('PSEUDO'=>$login,'PASSWORD'=>$password,'PROFIL'=>1,'IS_ACTIF'=>1);
        $user= $this->Model->getOne('utilisateur',$criteremail);             
                      
        if (!empty($user)) {
          
                $session = array(
                    'CODE_UTILISATEUR' => $user['CODE_UTILISATEUR'],
                    'USERNAME'=> $user['PSEUDO'],
                    'PROFIL' => $user['PROFIL'],
                );
                 $this->session->set_userdata($session);
                 echo 'success#'.$this->session->userdata('PROFIL').'#success';    
            }else{
         echo 'Erreur#Identifiant incorect#error';
       }
    }

      public function do_loginVendeur() {
        $login = $this->input->post('USERNAME');
        $password= md5($this->input->post('PASSWORD'));

        $criteremail= array('PSEUDO'=>$login,'PASSWORD'=>$password,'PROFIL'=>2,'IS_ACTIF'=>1);
        $user= $this->Model->getOne('utilisateur',$criteremail);             
                      
        if (!empty($user)) {
          
                $session = array(
                    'CODE_UTILISATEUR' => $user['CODE_UTILISATEUR'],
                    'USERNAME'=> $user['PSEUDO'],
                    'PROFIL' => $user['PROFIL'],
                );
                 $this->session->set_userdata($session);
                 echo 'success#'.$this->session->userdata('PROFIL').'#success';    
            }else{
         echo 'Erreur#Identifiant incorect#error';
       }
    }


        public function do_logout(){

        $session = array(
                    'CODE_UTILISATEUR' => NULL,
                    'USERNAME'=> NULL,
                    'PROFIL' =>NULL,
                
            );

            $this->session->set_userdata($session);
            redirect(base_url());
        }

          public function do_logoutEagle(){

        $session = array(
                    'ID_UTILISATEUR' => NULL,
                    'CODE_UTILISATEUR' => NULL,
                    'USERNAME'=> NULL,
                    'PSEUDO' => NULL,
                    'COMPTE' => NULL,
            );

            $this->session->set_userdata($session);
            redirect(base_url('Index/Eagle'));
        }




}
	        
 ?>