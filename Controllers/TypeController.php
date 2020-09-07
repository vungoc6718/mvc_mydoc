<?php
class TypeController extends Controller
{
   
    protected $typeModel;

    protected $categoryModel;

    public function __construct()
    {
        Parent::__construct();   
        $this->check_login(); 
        
        $this->loadModel('Type');      
        $this->typeModel = new TypeModel;  

        $this->loadModel('Category');
        $this->categoryModel = new CategoryModel;   
    }

    public function index($id = '')
    {  
        $this->view->title = 'Type';                   
        $this->view->data = $this->typeModel->show(); 
        $this->view->category = $this->categoryModel->show();     
        $this->view->loadView('type/index');
    }

    public function insert($id = '')
    {
        if(isset($_POST['add']))
        {
            $this->typeModel->insertRecord($_POST);
            Session::set('gtmsg',"Data has been saved successfully!");
            header('Location:'.BASEPATH.'type/index');
        }  
            
    }

    public function edit($id = 0)
    {             
        if(Session::get('logindtl') && (Session::get('logindtl')['role'] ==1 || Session::get('logindtl')['role'] == 2)):
        {   
            $this->view->title = 'Type Edit';   
            $this->view->data = $this->typeModel->getInfo($id);
            $this->view->category = $this->categoryModel->show();
            $this->view->loadView('type/edit'); 
        }
        else:
            header('Location:'.BASEPATH.'type/index');
        endif;
    }

    public function update($id= '')
    {
        if(isset($_POST['update']))
        {
            $this->typeModel->updateRecord($id,$_POST);
            Session::set('gtmsg',"Data has been updated successfully!");
            header('Location:'.BASEPATH.'type/index');
        }
    }
    public function delete()
    {
        if(isset($_POST['delete_id']))
        {
            $id = $_POST['delete_id'];
            $this->typeModel->deleteRecord($id);
            Session::set('gtmsg',"Data has been deleted successfully!");
            header('Location:'.BASEPATH.'type/index');
        } 
    }
}

?>