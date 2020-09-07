<?php

class Model extends Database
{
    protected $connectDB;
    public function __construct()
    {
        Parent::__construct();
        //echo "<br> this is main model";
        $this->connectDB = $this->connect();
    }
    public function getOne($table,$column_id,$id)
    {
        $sql = "select * from $table where $column_id = $id";
        $rs =$this->_query($sql);
        $data  = $rs->fetch_all(MYSQLI_ASSOC);
        return $data;  
    }

    public function addRecord($table,$data)
    {
        //cach 1
        // $sql = "insert into $table set ";
        // $return = array_slice($data, 0, count($data)-1, true);
        // foreach($return as $colkey=>$colvalue)
        // {
        //     $sql .="$colkey=:$colkey,";
        // }

        
        // $sql= substr($sql,0,-1);//cat dau phay cuoi cung di

      
    //    // $query = $this->_query($qry);
    //     echo $sql;
      
    //cach 2
        $return = array_slice($data, 0, count($data)-1, true);
        $columns = implode(',',array_keys($return)); //noi cac phan tu thanh 1 chuoi bang kí tự ngăn cách các phần tử implode( $char, $arr);
        
        //$value = implode(',',array_keys($data));

        $newValues = implode(',',array_values($return));//thiếu dấu nháy đơn trong cứ pháp
        //thêm dấu nháy đơn
        $newValues = array_map(function($value){
            return "'".$value . "'";
        }, array_values($return)); 
        //array_map, array_values ???

        $newValues_up = implode(',',$newValues);
        $sql ="INSERT INTO $table($columns) VALUES($newValues_up)";
        $this->_query($sql);
        //echo $sql;
    }

    public function editRecord($table,$data,$column_id,$id)
    {
        $return = array_slice($data, 0, count($data)-1, true);
        $dataSets = [];
        foreach ($return as $key => $val) {
            array_push($dataSets, "${key} ='".$val."'");
        }

        $dataSetString = implode(',',$dataSets);
        $sql = "update $table set $dataSetString where $column_id = $id";  
        // echo $sql;
        // exit; 
        $this->_query($sql);
        //exit;
    }

    public function delRecord($table,$column_id,$id)
    {
        $sql="delete from $table where $column_id = $id ";
        $this->_query($sql);
    }

    public function getAll($table)
    {
        $sql = "select * from $table";
        $rs =$this->_query($sql);
        $data  = $rs->fetch_all(MYSQLI_ASSOC);
        return $data;
    }

    public function getByQuery($sql)
    {
        $rs = $this->_query($sql);
        //c1
        // $data =[];

        // while($row= mysqli_fetch_assoc($rs))
        // {
        //     array_push($data, $row);//??s
        // }

        // return $data;
        //c2    
        // $data = [];

        // while($row = $rs->fetch_assoc()) {
        //     $data[] = $row;
        // }
        // return $data;
        //c3
        $data  = $rs->fetch_all(MYSQLI_ASSOC);
        return $data;
    }

    private function _query($sql)
    {
        return mysqli_query($this->connectDB,$sql);//chạy câu lệnh sql
    }
}
?>