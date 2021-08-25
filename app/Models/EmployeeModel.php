<?php
namespace App\Models;
use CodeIgniter\Model;

class EmployeeModel extends Model
{
    protected $table = 'tbl_customer';
    protected $primaryKey = 'customer_id';
    protected $allowedFields = ['customer_name', 'customer_email'];

    public function test_q() {
        $query = "SELECT * FROM tbl_customer WHERE customer_type = 'Commercial'";
        $query=$this->db->query($query);
        return $query->getResultArray();     
    } 

    public function customer_offers() {
        $this->join('tbl_customer_offer_price', 'tbl_customer_offer_price.customer_id = tbl_customer.customer_id', 'LEFT');
        $this->select('tbl_customer_offer_price.*');
        $this->orderBy('tbl_customer.customer_id');
        $result = $this->findAll();    
        // echo $this->db->getLastQuery();    
        return $result;
    }
}