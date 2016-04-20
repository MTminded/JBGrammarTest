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

    public function start(){

        date_default_timezone_set('America/Los_Angeles');
        $startTime = time();
        //set the session variables
        $sessiondata = array(
           'startTime' => $startTime,
        );
        $this->session->set_userdata($sessiondata);

        redirect('test/grammar/1');
    }

    public function grammar($num){

        //check if user is logged in
        $user_id = 1;

        //temp
        if($num>16){
            redirect('test/grammar/1');
        }

        $sessionData = $this->session->get_userdata();

        $data['title'] = "Welcome to ".TITLE;
        $data['num'] = $num;
        $data['answer'] = '';
        $data['startTime'] = $sessionData['startTime'];

        //Get all the questions in group $num
        $questions_array = $this->grammar_model->getQuestionsFromGroup($num)->result();
        
        //randomly select a question
        $question = array_rand($questions_array, 1);

        //if student has previously answered a question, show that question instead
        $lastSubmission = $this->grammar_model->getSubmission($user_id);
        if ($lastSubmission->num_rows() != 0){
            $submittedAnswers = json_decode($lastSubmission->result()[0]->answers, true);
            //if this question has been previously submitted, display the submission
            if (array_key_exists($num-1, $submittedAnswers)) {
                $question = $submittedAnswers[$num-1]['no'];
                $question = strstr($question, '.');
                $question = substr($question, 1) - 1;
                $data['answer'] = $submittedAnswers[$num-1]['submitted answer'];
            }
        }
        $data['question'] = $questions_array[$question];

        $this->load->view('templates/header', $data);
        $this->load->view('templates/nav', $data);
        $this->load->view('test_question_view', $data);
        $this->load->view('templates/footer_test');
         
    }

    public function timesup(){

    }

    public function complete(){
        //check if user is logged in
        $user_id = 1;

        //how many answers are correct and get suggested study units
        $lastSubmission = $this->grammar_model->getSubmission($user_id);
        if ($lastSubmission->num_rows() != 0){
            
            $submittedAnswers = json_decode($lastSubmission->result()[0]->answers, true);
            $study_units = json_decode($lastSubmission->result()[0]->study_units, true);
            $correctAnswers = count($submittedAnswers) - count($study_units);
   
        }else{
            //redirect to the start of the test
            redirect('test/index');
        }

        //set the data and display them
        $data['title'] = "Welcome to ".TITLE;
        $data['correct_answers'] = $correctAnswers;
        $data['study_units'] = $study_units;

        $this->load->view('templates/header', $data);
        $this->load->view('templates/nav', $data);
        $this->load->view('test_complete_view', $data);
        $this->load->view('templates/footer_reg');
    }

    public function submit(){

        //check if user is logged in
        $user_id = 1;

        //get post data
        $answer_a = $this->input->post('answer_a');
        $answer_b = $this->input->post('answer_b');
        $answer_c = $this->input->post('answer_c');
        $answer_d = $this->input->post('answer_d');
        $answer_e = $this->input->post('answer_e');
        $group_no = $this->input->post('group_no');
        $question_no = $this->input->post('question_no');

        $answer = "";
        if ($answer_a != ''){ $answer = $answer . $answer_a . ',';};
        if ($answer_b != ''){ $answer = $answer . $answer_b . ',';};
        if ($answer_c != ''){ $answer = $answer . $answer_c . ',';};
        if ($answer_d != ''){ $answer = $answer . $answer_d . ',';};
        if ($answer_e != ''){ $answer = $answer . $answer_e . ',';};

        $submitted_answer = rtrim($answer, ",");
        
        //get question data (i.e. correct answer)
        $question = $this->grammar_model->getQuestion($question_no)[0];

        //create array to store answer data
        $array = [];
        $array["no"] = $question_no;
        $array["correct answer"] = $question->answers;
        $array["submitted answer"] = $submitted_answer;

        //create the array to store study unit data
        $array2 = [];
        $array2["unit"] = $question->study_unit;
        $array2["category"] = $question->category;

        //get user's previous submission
        $lastSubmission = $this->grammar_model->getSubmission($user_id);

        //if user never submitted, save new submission, else, update submission
        if ($lastSubmission->num_rows() == 0){   

            //wrapper array for the answer data
            $wrapper = [];
            $wrapper[$group_no-1] = $array;

            //encode to json
            $answerJson = json_encode($wrapper);

            $unitJson = '';
            //if answer was incorrect, store the study unit
            if ($question->answers != $submitted_answer){

                //wrapper array for the study unit
                $wrapper = [];
                $wrapper[$group_no-1] = $array2;

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

            $wrapper = json_decode($lastSubmission->result()[0]->answers, true);
            $wrapper[$group_no-1] = $array;

            //encode to json
            $answerJson = json_encode($wrapper);

            $unitJson = '';
            //if answer was incorrect, store the study unit
            if ($question->answers != $submitted_answer){

                //wrapper array for the study unit
                $wrapper = json_decode($lastSubmission->result()[0]->study_units, true);;
                $wrapper[$group_no-1] = $array2;

                //encode to json
                $unitJson = json_encode($wrapper);
            }

            $data = array(
                 'answers' => $answerJson,
                 'study_units' => $unitJson
            );
            $this->grammar_model->updateAnswer($user_id, $data);
        }

        //redirect to next page
        if ($group_no == 16){
            redirect('test/complete');
        }else{
            redirect('test/grammar/'. ($group_no + 1));
        }

    }
}?>