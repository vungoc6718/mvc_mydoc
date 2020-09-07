<?php
$configsfiles = glob("config/*.php");
foreach($configsfiles as $eachconfig)
{
    include_once($eachconfig);
}

$libsfile = glob("libs/*.php");
foreach($libsfile as $eachlib)
{
    include_once($eachlib);
}

$obj = new Bootstrap;
?>