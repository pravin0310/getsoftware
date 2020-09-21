<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Indexc extends CI_Model {

    private $table = "products";
 

    public function create($data)
    {
        return $this->db->insert($this->table,$data);
    }

    public function fetch()
    {
            // $query=$this->db->get($this->table);
            // return $query;

        $query=$this->db->query("SELECT * FROM  products WHERE type='operating system' ORDER BY id DESC");
        return $query->result_array();
    }
    public function fetch_a()
    {
            // $query=$this->db->get($this->table);
            // return $query;

        $query=$this->db->query("SELECT * FROM  products WHERE type='Anti virus' ORDER BY id DESC");
        return $query->result_array();
    }

    public function userdata($id)
    {
      $this->db->where("id",$id);
        $query=$this->db->get($this->table);
        return $query;
    }
   

  
}
?>