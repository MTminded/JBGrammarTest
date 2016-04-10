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
        $user_id = 1;

        //get post data
        $submitted_answer = $this->input->post('submitted_answer');
        $group_no = $this->input->post('group_no');
        $question_no = $this->input->post('question_no');

        //get question data (i.e. correct answer)
        $question = $this->grammar_model->getQuestion($question_no)[0];

        //get user's previous submission
        $lastSubmission = $this->grammar_model->getSubmission($user_id);

        //if user never submitted, save new submission, else, update submission
        if ($lastSubmission->num_rows() == 0){   

            //create array to store answer data
            $array = [];
            $array["no"] = $question_no;
            $array["correct answer"] = $question->answers;
            $array["submitted answer"] = $submitted_answer;

            //wrapper array
            $wrapper = [];
            $wrapper[$group_no-1] = $array;

            //encode to json
            $answerJson = json_encode($wrapper);

            $unitJson = '';
            //if answer was incorrect, store the study unit
            if ($question->answers != $submitted_answer){

                //create the array to store study unit data
                $array = [];
                $array["unit"] = $question->study_unit;
                $array["category"] = $question->category;

                //wrapper array
                $wrapper = [];
                $wrapper[$group_no-1] = $array;

                //encode to json
                $unitJson = json_encode($wrapper);
            }

            //create data to store in db
            $data = array(
                'user_id' => $user_id,
                'answers' => $answerJson,
                'study_units' => $unitJson
            );
            $this->grammar_model->submitAnswer($data);




        }else{

        }

        //redirect to next page
        if ($group_no == 16){
            redirect('test/complete');
        }else{
            redirect('test/grammar/'. ($group_no + 1));
        }

    }
}?>