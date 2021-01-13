<?

  class Bas_model extends CI_Model{
  	public function __construct(){
  		parent::__construct();
  		$this->load->database();
  	}




  	function creer($data){
  		return $this->db->insert('users',$data);
  	}
  }

?>