<?php
class DocumentController extends Controller
{
   
    protected $documentModel;

    protected $categoryModel;

    protected $typeModel;

    protected $pageModel;

    public function __construct()
    {
        Parent::__construct();
        
        $this->check_login(); 
        
        $this->loadModel('Category');
        $this->loadModel('Type');
        $this->loadModel('Page');
        $this->loadModel('Document');
        
        $this->categoryModel = new CategoryModel;
        $this->typeModel = new TypeModel;
        $this->pageModel = new PageModel;
        $this->documentModel = new DocumentModel;
    }

    public function index($id = '')
    {       
        $this->view->title = 'Tài Liệu';       
        $this->view->type = $this->typeModel->show();
        $this->view->page = $this->pageModel->show();
        $this->view->data = $this->documentModel->show();
        $this->view->loadView('document/index');
    }

    public function insert($id = '')
    {
        if(isset($_POST['add']))
        {
            $this->documentModel->insertRecord($_POST);
            Session::set('gtmsg',"Data has been saved successfully!");
            header('Location:'.BASEPATH.'document/index');
        }  
            
    }

    public function edit($id = 0)
    {        
        
        if(Session::get('logindtl') && (Session::get('logindtl')['role'] ==1 || Session::get('logindtl')['role'] == 2)):
        {

            $this->view->title = 'Tài Liệu Edit';
            $this->view->type = $this->typeModel->show();
            $this->view->page = $this->pageModel->show();
            $this->view->data = $this->documentModel->getInfo($id);
            $this->view->loadView('document/edit'); 
        }
        else:
            header('Location:'.BASEPATH.'document/index');
        endif;
    }

    public function update($id= '')
    {
        if(isset($_POST['update']))
        {
            $this->documentModel->updateRecord($id,$_POST);
            Session::set('gtmsg',"Data has been updated successfully!");
            header('Location:'.BASEPATH.'document/index');
        }
    }
    public function delete()
    {
        if(isset($_POST['delete_id']))
        {
            $id = $_POST['delete_id'];
            $this->documentModel->deleteRecord($id);
            Session::set('gtmsg',"Data has been deleted successfully!");
            header('Location:'.BASEPATH.'document/index');
        } 
    }
}

?>