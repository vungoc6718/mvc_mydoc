<?php
class CategoryController extends Controller
{
   
    protected $categoryModel;

    public function __construct()
    {
        Parent::__construct();      
        $this->loadModel('Category');      
        $this->categoryModel = new CategoryModel; 

        $this->check_login();    
    }

    public function index($id = '')
    {    
        $this->view->title = 'Danh Mục';                 
        $this->view->category = $this->categoryModel->show();      
        $this->view->loadView('category/index');
    }

    public function insert($id = '')
    {
        if(isset($_POST['add']))
        {
            $this->categoryModel->insertRecord($_POST);
            Session::set('gtmsg',"Data has been saved successfully!");
            header('Location:'.BASEPATH.'category/index');
        }  
            
    }

    public function edit($id = 0)
    {             
        if(Session::get('logindtl') && (Session::get('logindtl')['role'] ==1 || Session::get('logindtl')['role'] == 2)):
        {     
            $this->view->title = 'Danh Mục Edit'; 
            $this->view->data = $this->categoryModel->getInfo($id);
            $this->view->loadView('category/edit'); 
        }
        else:
            header('Location:'.BASEPATH.'category/index');
        endif;
    }

    public function update($id= '')
    {
        if(isset($_POST['update']))
        {
            $this->categoryModel->updateRecord($id,$_POST);
            Session::set('gtmsg',"Data has been updated successfully!");
            header('Location:'.BASEPATH.'category/index');
        }
    }
    public function delete()
    {
        if(isset($_POST['delete_id']))
        {
            $id = $_POST['delete_id'];
            $this->categoryModel->deleteRecord($id);
            Session::set('gtmsg',"Data has been deleted successfully!");
            header('Location:'.BASEPATH.'category/index');
        } 
    }
}

?>