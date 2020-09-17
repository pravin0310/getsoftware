<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Products_model extends CI_Model {

    private $table = "products";
 

    public function create($data)
    {
  
     return $this->db->insert($this->table,$data); 

    }
    public function add($data)
    {
        return $this->db->insert($this->table,$data_img);
        return 1;
    }

     public function add_image($data) {

        if (isset($data['id'])) {
            $this->db->where('id', $data['id']);
            $this->db->update('students', $data);
        } else {
            $this->db->insert('students', $data);
       
            return $this->db->insert_id();
        }
    }

    public function fetch()
    {
            // $query=$this->db->get($this->table);
            // return $query;

        $query=$this->db->query("SELECT * FROM  products ORDER BY id DESC");
        return $query->result();
    }

    public function fetch_producttype()
    {
            // $query=$this->db->get($this->table);
            // return $query;

        $query=$this->db->query("SELECT id,product_Name FROM  product_type WHERE status='active' ");
        return $query->result();
    }

    public function userdata($id)
    {
      $this->db->where("id",$id);
        $query=$this->db->get($this->table);
        return $query->row();
    }
    public function delete($id=null)
    {
      $this->db->where('id',$id)
            ->delete($this->table);

        if ($this->db->affected_rows()) {
            return true;
        } else {
            return false;
        }
    }
   

  
}
