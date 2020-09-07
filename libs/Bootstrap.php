<?php
class Bootstrap
{
    public function __construct()
    {
        //echo 'this is bootstrap';
        
        //print_r($_GET);
         Session::init();
        //print_r($_GET);
        //;//controller bat dau
        $controller ="home";
        $method ='index';
        $id = ''; 
        if(isset($_GET['url'])):
            $url=explode('/',rtrim($_GET['url'],'/'));
           // print_r($url);
            if(isset($url[0]) && file_exists('Controllers/'.$url[0].'Controller.php'))
            {
                $controller = $url[0];
            }

            if(isset($url[1]) )
            {
                $method = $url[1];
            }

            if(isset($url[2]) )
            {
                $id = $url[2];
            }
        endif;    
        
        // if(Session::get('logindtl')):
        //     if($controller=='login' && $method =='index'):
        //         $controller = 'admin';
        //     endif;   
           
        // else:
        //         $controller='login';    
                
        // endif;

      
        $model = ucfirst($controller);
        $controllerName = $controller."Controller";
        
        include("Controllers/$controllerName.php");
        $cont_obj = new $controllerName;
        // $cont_obj->loadModel($model);
        
        if(method_exists($cont_obj,$method))/*Trả về TRUE nếu phương thức method_name đã được định nghĩa trong đối tượng object, nếu không là FALSE.*/ 
             $cont_obj->{$method}($id);
        else
            $cont_obj->index();

    }

}
?>