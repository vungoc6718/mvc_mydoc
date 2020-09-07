<?php
class HomeController extends Controller
{
    protected $documentModel;
    public function __construct()
    {
        Parent::__construct();
        $this->loadModel('Document');
        $this->documentModel = new DocumentModel;
        $this->view->title = 'Home';
    }

    public function index($id = '')
    {     
        $this->view->title = 'Home';
        $this->view->data = $this->documentModel->show();
        $this->view->loadView_p('home/index');
    }

    
}

?>