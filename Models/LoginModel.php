<?php

class LoginModel extends Model
{
    CONST TABLE ='tbl_user';
    CONST COLUMN = 'userId';
    public function __construct()
    {
        Parent::__construct();
    }

    public function getLoginInfo($data)
    {
        $data = array_map('addslashes',$data);
        /*Hàm addslashes() trong PHP để chèn vào chuỗi khi trong chuỗi dấu nháy kép "
         mà có dấu nháy đơn ' hay trong chuỗi dấu nháy đơn ' có dấu nháy kép "*/
        $table = self::TABLE;
        $sql = "select * from $table where userName='$data[username]' ";
        $info =  $this->getByQuery($sql);
        //echo count($info);
        if(count($info)==1)//dem phan tu trong mang 1 la dung 0 la sai 
        {
            $info = $info[0];//password database
            //print_r($info);
            //echo $info;
        
            $data['password']=md5($data['password']);//password dang nhap
            if($info['passWord'] == $data['password'])
            {
                 return $info;
                if($info['active']=='0')
                {
                    return $info;
                }
                else
                {
                    Session::set('errormsg',"You are blocked from admin!");
                    return false;
                }
            }
            else
            {
                Session::set('errormsg',"Username and password is not matched!");
                return false;
            }
        }
        else
        {
            Session::set('errormsg',"Username and password is not matched!");
            return false;
        }
        return false;
    }
}

?>