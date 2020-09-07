<?php

class DocumentModel extends Model
{
    CONST TABLE ='tbl_document';
    CONST COLUMN = 'documentId';
    public function __construct()
    {
        Parent::__construct();
    }

    public function show()
    {
        
        $sql = "SELECT d.*,t.typeName,p.pageName,p.pageLink,c.categoryName 
        FROM tbl_document as d inner join tbl_type as t on d.typeId=t.typeId 
        INNER JOIN tbl_page as p on d.pageId =p.pageId 
        INNER JOIN tbl_category as c on t.categoryId = c.categoryId 
        order by d.documentId desc";
        return $this->getByQuery($sql);       
    }

    function getInfo($id)
    {
        return $this->getOne(self::TABLE,self::COLUMN,$id);    
    }

    public function insertRecord($data)
    {
        return $this->addRecord(self::TABLE,$data);
    }

    public function updateRecord($id,$data)
    {  
        return $this->editRecord(self::TABLE,$data,self::COLUMN,$id);
    }

    public function deleteRecord($id=1)
    {    
        return $this->delRecord(self::TABLE,self::COLUMN,$id);
    }
}

?>