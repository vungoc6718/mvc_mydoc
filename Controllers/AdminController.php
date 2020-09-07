<?php
class AdminController extends Controller
{
    public function __construct()
    {
        Parent::__construct();
        
        $this->check_login();  
    }

    public function index($id = '')
    {     
        $this->view->title = 'Admin';
        $this->view->loadView('admin/index');
    }

    
}

?>