<?php

if (!defined('BASEPATH')) exit('No direct script access allowed');
//Helper pour la gestion des uploads
if (!function_exists('helper_desactiver_statut')) {
  function helper_desactiver_statut($table,$condition,$condition_checkvalue, $champ){
    $ci = & get_instance();
    $checkstatut = $ci->Mes_model->checkvalue($table,$condition_checkvalue);
    if($checkstatut){
      $ci->Mes_model->update($table,$condition, array($champ =>0));
      $statut = 1;
    }else{
      $ci->Mes_model->update($table,$condition, array($champ =>1));
      $statut = 0;
    }

    return $statut;

  }
 }
  function helper_session_exist (){
    $ci = & get_instance();
    if(empty($ci->session->userdata('TELEPHONE'))){
      redirect(base_url('Login'));
    }
  }

  function helper_session_exists_admin (){
    $ci = & get_instance();
    if(empty($ci->session->userdata('PROFIL')) || $ci->session->userdata('PROFIL')!=1){
      redirect(base_url());
    }
  }
  function helper_session_exists (){
    $ci = & get_instance();
    if(empty($ci->session->userdata('PROFIL')) || $ci->session->userdata('PROFIL')!=2){
      redirect(base_url());
    }
  }


    function helper_generate_code($table,$champs,$ext) {
        $ci = & get_instance();
        $table=$table;
        $code=$ext.sha1(md5(uniqid()));
        while(!empty($ci->Mes_model->list_One($table,array($champs=>$code)))){
          $code=$ext.sha1(md5(uniqid()));
        }

        return $code;
    }


    if (!function_exists('helper_upload')) {

    function helper_upload($location) {
        $ci = & get_instance();
        if($_FILES["fileupload"]["name"] != '')
            {
             $tests = explode('.', $_FILES["fileupload"]["name"]);
             $exts = end($tests);
             $code2=strtolower(substr((md5(uniqid(rand(0,10000)))), 0,20));
             $names = $code2.'.' . $exts;
             $location = $location.$names;
             $moves = move_uploaded_file($_FILES["fileupload"]["tmp_name"], $location);

             if($moves){
                return $location;
             }else{
                return 2;
             }

        }else{
          return 0;
        }
    }

}



    if (!function_exists('helper_upload1')) {

    function helper_upload1($location1) {
        $ci = & get_instance();
        if($_FILES["fileupload1"]["name"] != '')
            {
             $testt = explode('.', $_FILES["fileupload1"]["name"]);
             $extt = end($testt);
             $code2t=strtolower(substr((md5(uniqid(rand(0,10000)))), 0,20));
             $namet = $code2t.'.' . $extt;
             $location1 = $location1.$namet;
             $movet = move_uploaded_file($_FILES["fileupload1"]["tmp_name"], $location1);

             if($movet){
                return $location1;
             }else{
                return 2;
             }

        }else{
          return 0;
        }
    }

}



//  




if (!function_exists('Tabmois')) {

    function helper_Tabmois($indice) {
        $ci = & get_instance();
        $TabMois=array('Janv','Fév','Mars','Avril','Mai','Juin','Juillet','Août','Sept','Nov','Déc');
        return $TabMois[$indice];
    }

}


if (!function_exists('get_timeago')) {
 function helper_get_timeago( $time )
      {
          $time=strtotime($time);
          $diff_time = time() - $time;
          if($diff_time < 1 )
            {
                return 'A l\'istant';
            }
          $sec = array(
                      12 * 30 * 24 * 60 * 60  =>  'année',
                      30 * 24 * 60 * 60       =>  'mois',
                      24 * 60 * 60            =>  'jour',
                      60 * 60                 =>  'heure',
                      60                      =>  'minute',
                      1                       =>  'seconde'
          );
          foreach( $sec as $sec => $value )
          {
              $div = $diff_time / $sec;

              if( $div >= 1 )
              {
                  $time_ago = round( $div );
                  $time_type=$value;
                  if ($time_ago>1 && $time_type!='mois') {
                    $time_type.='s';
                  }
                  return 'Il y a '.$time_ago.' '.$time_type;
              }
          }
      }
   }




 ?>
