<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
 
class Test extends CI_Controller
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
      $this->load->model('grammar_model');
    }

    public function index(){
        $data['title'] = "Welcome to ".TITLE;
       
        $this->load->view('templates/header', $data);
        $this->load->view('templates/nav', $data);
        $this->load->view('test_view', $data);
        $this->load->view('templates/footer_reg');
    }

    public function grammar($num)
    {

        //temp
        if($num>16){
            redirect('test/grammar/1');
        }

        $data['title'] = "Welcome to ".TITLE;
        $data['num'] = $num;

        $questions_array = $this->grammar_model->getQuestionsFromGroup($num)->result();

        $question = array_rand($questions_array, 1);
        $data['question'] = $questions_array[$question];

        $this->load->view('templates/header', $data);
        $this->load->view('templates/nav', $data);
        $this->load->view('test_question_view', $data);
        $this->load->view('templates/footer_reg');
         
    }
}?>