<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
 
class Home extends CI_Controller
{

     public function __construct()
     {
          parent::__construct();
          $this->load->library('session');
          $this->load->helper('form');
          $this->load->helper('url');
          $this->load->helper('html');
          $this->load->database();
          $this->load->library('form_validation');
          //load the login model
          $this->load->model('login_model');
     }

     public function index(){

          if (isset($_SESSION["user_id"])){
               $user_id = $_SESSION["user_id"];
               $loggedIn = 1;
          }else{
               $loggedIn = 0;
          }

          $data['title'] = "Welcome to ".TITLE;
          $data['loggedIn'] = $loggedIn;

          $this->load->view('templates/header', $data);
          $this->load->view('templates/nav', $data);
          $this->load->view('home_view', $data);
          $this->load->view('templates/footer_reg');
    }
}?>