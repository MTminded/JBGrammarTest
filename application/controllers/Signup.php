<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
 
class Signup extends CI_Controller
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

    public function index()
     {
        date_default_timezone_set('Asia/Hong_Kong');
          //get the posted values
          $phone = $this->input->post("txt_phone");
          $phoneCode = $this->input->post("txt_phoneCode");
          $password = $this->input->post("txt_password");
          $rpassword = $this->input->post("txt_rpassword");

          //set validations
          $this->form_validation->set_rules("txt_phone", "Phone", "trim|numeric|required");
          $this->form_validation->set_rules("txt_phoneCode", "Validation Code", "trim|required");
          $this->form_validation->set_rules("txt_password", "Password", "trim|required|matches[txt_rpassword]|md5");
          $this->form_validation->set_rules("txt_rpassword", "Confirm Password", "trim|required");
          $data = array(
                'title' => "Welcome to ".TITLE,
                'current' => 'signup'
            );


          //if form was not submitted (i.e. arrived at login page)
          if ($this->form_validation->run() == FALSE)
          {
               //validation fails or not logged
            $this->load->view('templates/header', $data);
            $this->load->view('templates/nav_alt', $data);
            $this->load->view('signup_view');
            $this->load->view('templates/footer_reg');
             
          }
          //if form was submitted (i.e. entered username/pass/code)
          else
          {
               //if arrived here via pressing the sign up button
               if ($this->input->post('btn_signup') == "Sign Up")
               {
                    //check if user exists
                    $usr_result = $this->login_model->get_user_by_phone($phone);
  
                    if ($usr_result->num_rows() > 0){
                         //user exists, login instead
                         $this->session->set_flashdata('msg', '<div class="alert alert-danger text-center">Account already exists, please login instead</div>');
                          redirect('signup/index');      
                    }
                    else{    
                         //if code is valid, proceed

                        if (!isset($_SESSION["security_code"])){
                            $this->session->set_flashdata('msg', '<div class="alert alert-danger text-center">Validation Code Incorrect</div>');
                            redirect('signup/index'); 
                        }

                        if ($phoneCode == $_SESSION["security_code"]){
                            //create user in db
                            $this->login_model->create_user($phone, $password);
                            //save user_id in session

                            $usr_result = $this->login_model->get_user_by_phone($phone);
                            $user_id = $usr_result->result()[0]->id;

                            $_SESSION["user_id"] = $user_id;
                            redirect('test/index');

                        }else{
                            $this->session->set_flashdata('msg', '<div class="alert alert-danger text-center">Validation Code Incorrect</div>');
                            redirect('signup/index'); 
                        }
                    }
               }

               else //arrived here by not pressing the login button
               {
                    redirect('signup/index');
               }
          }

        

    }

    public function getValidationCode(){
        $code = 1234;
        $_SESSION["security_code"] = $code;
        echo $code;
    }

}?>