<?php
class PageController extends Controller
{
   
    protected $pageModel;

    protected $categoryModel;

    public function __construct()
    {
        Parent::__construct();  
        $this->check_login();      
        $this->loadModel('Page');      
        $this->pageModel = new PageModel;  
        $this->loadModel('Category');
        $this->categoryModel = new CategoryModel;      
    }

    public function index($id = '')
    {   
        $this->view->title = 'Trang / Nhóm';                  
        $this->view->page = $this->pageModel->show();  
        $this->view->category = $this->categoryModel->show();         
        $this->view->loadView('page/index');
    }

    public function insert($id = '')
    {
        if(isset($_POST['add']))
        {
            $this->pageModel->insertRecord($_POST);
            
            Session::set('gtmsg',"Data has been saved successfully!");
            header('Location:'.BASEPATH.'page/index');
        }  
            
    }

    public function edit($id = 0)
    {             
        if(Session::get('logindtl') && (Session::get('logindtl')['role'] ==1 || Session::get('logindtl')['role'] == 2)):
        {      
            $this->view->title = 'Trang Nhóm Edit';
            $this->view->data = $this->pageModel->getInfo($id);
            $this->view->category = $this->categoryModel->show();     
            $this->view->loadView('page/edit'); 
        }
        else:
            header('Location:'.BASEPATH.'page/index');
        endif;
    }

    public function update($id= '')
    {
        if(isset($_POST['update']))
        {
            $this->pageModel->updateRecord($id,$_POST);
            Session::set('gtmsg',"Data has been updated successfully!");
            header('Location:'.BASEPATH.'page/index');
        }
    }
    public function delete()
    {
        if(isset($_POST['delete_id']))
        {
            $id = $_POST['delete_id'];
            $this->pageModel->deleteRecord($id);
            Session::set('gtmsg',"Data has been deleted successfully!");
            header('Location:'.BASEPATH.'page/index');
        } 
    }
}

?>