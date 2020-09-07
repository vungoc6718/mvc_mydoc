<?php

class Session
{
    public static function init()
    {
        @session_start();

    }

    public static function set($key,$value=false)
    {
        $_SESSION[$key] =$value;

    }

    public static function get($key)
    {
        if(isset($_SESSION[$key]))
        {
            return $_SESSION[$key];
        }
        return false;

    }

    public static function delete($key)
    {
        if(isset($_SESSION[$key]))
        {
            unset($_SESSION[$key]);
        }      
    }

    public static function destroy()
    {
        @session_destroy();

    }
}

?>