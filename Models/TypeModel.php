<?php

class TypeModel extends Model
{
    CONST TABLE ='tbl_type';
    CONST COLUMN = 'typeId';
    public function __construct()
    {
        Parent::__construct();
    }

    public function show()
    {
        $sql = "SELECT t.*,c.categoryName 
        FROM tbl_type as t   
        INNER JOIN tbl_category as c on t.categoryId = c.categoryId 
        order by t.categoryId desc";
        return $this->getByQuery($sql);   
    }

    public function insertRecord($data)
    {
      
        return $this->addRecord(self::TABLE,$data);
    }

    public function updateRecord($id,$data)
    {
      
        return $this->editRecord(self::TABLE,$data,self::COLUMN,$id);
    }

    public function deleteRecord($id)
    {
       
        return $this->delRecord(self::TABLE,self::COLUMN,$id);
    }

    function getInfo($id)
    {
        return $this->getOne(self::TABLE,self::COLUMN,$id);    
    }
}

?>