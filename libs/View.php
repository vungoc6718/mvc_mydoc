<?php
class View
{
    public function __construct()
    {
        
    }

    public function loadView($filename)
    {
        
        include_once "Views/includes/header.php";
        include_once "Views/includes/navbar.php";
        include_once "Views/$filename.php";
        include_once "Views/includes/scripts.php";
        include_once "Views/includes/footer.php";
    }

    public function loadView_p($filename)
    {
        
        include_once "Views/includes/header.php";
        //include_once "Views/includes/navbar.php";
        include_once "Views/$filename.php";
        include_once "Views/includes/scripts.php";
        //include_once "Views/includes/footer.php";
    }

    public function loadView_c($filename)
    {
        
       // include_once "Views/includes/header.php";
        //include_once "Views/includes/navbar.php";
        include_once "Views/$filename.php";
       // include_once "Views/includes/scripts.php";
        //include_once "Views/includes/footer.php";
    }
}
?>