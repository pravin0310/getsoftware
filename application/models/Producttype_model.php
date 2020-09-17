<?php defined('BASEPATH') OR exit('No direct script access allowed');

class Producttype_model extends CI_Model {

    private $table = "product_type";
 

    public function create($data)
    {
        return $this->db->insert($this->table,$data);
    }

    public function fetch()
    {
            // $query=$this->db->get($this->table);
            // return $query;

        $query=$this->db->query("SELECT id,product_Name,status FROM  product_type ORDER BY id DESC");
        return $query->result();
    }

    public function userdata($id)
    {
        $this->db->select('*');
        $this->db->from($this->table);
        $this->db->where('id',$id);
        $query = $this->db->get();
        //echo$this->db->last_query();die;
        return $query->row();
    }
    public function update($data)
    {
           $this->db->where('id', $data['id']);
            $this->db->update($this->table, $data);
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
