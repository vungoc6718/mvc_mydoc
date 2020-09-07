<?php

class LoginController extends Controller
{
    protected $loginModel;
    public function __construct()
    {
        Parent::__construct();
        $this->loadModel('Login');
        
        $this->loginModel = new LoginModel;
        $this->view->title = 'Đăng Nhập';
    }

    public function index()
    {
        if(isset($_POST['username']))
        {      
            if($logininfo = $this->loginModel->getLoginInfo($_POST))
            {
               
                Session::set('logindtl',$logininfo);
                header('Location:'.BASEPATH.'admin/index');
            }      
        }
       
        $this->view->loadView_c('login/login');
    }

    public function logout()
    {
        Session::destroy();
        
      //  
        header('Location:'.BASEPATH.'login/index');
    }

    
}

?>