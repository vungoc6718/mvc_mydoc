<?php

class CategoryModel extends Model
{
    CONST TABLE ='tbl_category';
    CONST COLUMN = 'categoryId';
    public function __construct()
    {
        Parent::__construct();
    }

    public function show()
    {
        return $this->getAll(self::TABLE);
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