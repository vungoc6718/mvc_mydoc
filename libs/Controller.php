<?php

class Controller
{
    public function __construct()
    {
        $this->view = new View();
       
    }

    public function loadModel($name)
    {
        $name = $name.'Model';
        $mName ="Models/$name.php";
        if(file_exists($mName))
        {
            include_once "$mName";
            //$this->model= new $name;
        }
    }

    public function loadModel_p($name)
    {
        $name = $name.'Model';
        $mName ="Models/$name.php";
        if(file_exists($mName))
        {
            include_once "$mName";
            //$this->models= new $name;
        }
    }
    public function check_login()
    {
        $log = Session::get('logindtl');
        if(empty($log) )
        {
            Session::destroy();
            header('Location:'.BASEPATH.'login/index');
            
        } 
    }
}

?>