<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Grammar_model extends CI_Model
{
    function __construct()
    {
      // Call the Model constructor
      parent::__construct();
    }

    function getQuestionsFromGroup($group_num){
      $needle = $group_num . ".";
      $sql = "SELECT * 
              FROM grammarTests 
              WHERE No LIKE '{$needle}%' ";
      $query = $this->db->query($sql);
      return $query;

    }

    function getAnswer($question_no){
        $sql = "SELECT *
                FROM grammerTests
                WHERE No = '{$question_no}' ";
        $query = $this->db->query($sql);
        return $query->result();
    }

    function submitAnswer($data){
        $this->load->helper('url');
        $this->db->insert('grammarTestSubmissions', $data);
        return;
    }

    function updateAnswer($user_id, $data){
        $this->load->helper('url');
        $this->db->where('user_id', $user_id);
        $this->db->update('grammarTestSubmissions', $data);
    }

}?>