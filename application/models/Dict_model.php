<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Dict_model extends CI_Model
{
    function __construct()
    {
      // Call the Model constructor
      parent::__construct();
    }

    function getStudyUnits($study_units){

        //Turn $study_units into array
        $study_unit = [1, 2, 3, 4];

        $sql = "";
        for ($i=0; $i < count($study_unit); $i++) { 
            if ($i == 0){
               $sql = "SELECT *
                FROM grammarDict
                WHERE Study_Unit = '{$study_unit[$i]}' ";
                
            }else{
                $sql = $sql . "OR Study_Unit = '{$study_unit[$i]}' ";
            }
        }
        $query = $this->db->query($sql);
        return $query->result();
    }

}?>