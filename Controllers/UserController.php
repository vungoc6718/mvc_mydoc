<?php
class UserController extends Controller
{
   
    protected $userModel;
    public function __construct()
    {
        Parent::__construct();
        $this->check_login(); 

        $this->loadModel('User');
        
        $this->userModel = new UserModel;   
    }

    public function index($id = '')
    {          
        $this->view->title = 'User ';       
        $this->view->data = $this->userModel->show();
        $this->view->loadView('user/index');
    }

    public function insert($id = '')
    {
        if(isset($_POST['add']))
        {
            $_POST['passWord'] = md5($_POST['passWord']);
            $this->userModel->insertRecord($_POST);
            Session::set('gtmsg',"Data has been saved successfully!");
            header('Location:'.BASEPATH.'user/index');
        }  
        //$this->view->loadView('document/insert');    
    }

    public function edit($id = 0)
    {      
        $this->view->title = 'User Edit';      
        $this->view->data = $this->userModel->getInfo($id);
        $this->view->loadView('user/edit');
    }

    public function update($id= '')
    {
        if(isset($_POST['update']))
        {
            $_POST['passWord'] = md5($_POST['passWord']);
            $this->userModel->updateRecord($id,$_POST);
            Session::set('gtmsg',"Data has been updated successfully!");
            header('Location:'.BASEPATH.'user/index');
        }
    }
    public function delete()
    {
        if(isset($_POST['delete_id']))
        {
            $id = $_POST['delete_id'];
            $this->userModel->deleteRecord($id);
            Session::set('gtmsg',"Data has been deleted successfully!");
            header('Location:'.BASEPATH.'user/index');
        } 
    }
}

?>