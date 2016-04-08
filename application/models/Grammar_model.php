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
                  WHERE No LIKE '{$needle}%'
                  ";
          $query = $this->db->query($sql);
          return $query;

     }

}?>