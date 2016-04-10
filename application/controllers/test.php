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

    public function grammar($num){

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

    public function submit(){

        //check if user is logged in

        //get post data
        $submitted_answer = $this->input->post('submitted_answer');
        $question_no = $this->input->post('question_no');

        //get correct answer
        $correct_answer = $this->grammar_model->getAnswer($question_no)[0]->answers;

        //get user's previous submission

        //if user never submitted, save new submission

        //if user has submitted before, update submission

        //redirect to next page
    }
}?>