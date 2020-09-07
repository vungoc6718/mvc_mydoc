<?php

class Database
{
    public function __construct()
    {
        //Parent::__construct();
        //echo "<br> this is main model";
    }
    const HOST ='localhost';

    const USERNAME = 'root';

    const PASSWORD = '';

    const DB_NAME = 'myDocument';

    private $connect;

    public function connect()
    {
        $this->connect = mysqli_connect(self::HOST, self::USERNAME, self::PASSWORD, self::DB_NAME);
        mysqli_set_charset($this->connect, "utf8");

        if (mysqli_connect_errno()===0) {
            return $this->connect;
        }

       // return false;
    }
}
?>