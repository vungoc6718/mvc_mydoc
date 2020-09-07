<?php

class PageModel extends Model
{
    CONST TABLE ='tbl_page';
    CONST COLUMN = 'pageId';
    public function __construct()
    {
        Parent::__construct();
    }

    public function show()
    {
        $sql = "SELECT p.*,c.categoryName 
        FROM tbl_page as p   
        INNER JOIN tbl_category as c on c.categoryId = p.categoryId 
        order by p.categoryId desc";
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