
<style>
body {
  margin: 0;
  padding: 0;
  background-color: #17a2b8 !important;
  height: 100vh;
}
#login .container #login-row #login-column #login-box 
{
  margin-top: 120px;
  max-width: 600px;
  height: 320px;
  border: 1px solid #9C9C9C;
  background-color: #EAEAEA;
}
#login .container #login-row #login-column #login-box #login-form 
{
  padding: 20px;
}
#login .container #login-row #login-column #login-box #login-form #register-link 
{
  margin-top: -85px;
}
#submit 
{
    margin: 0 auto;
    display: block;
    float: left ;
}

#back 
{
    margin: 0 auto;
    display: block;
    float: right;
    color:white ; 
}
a{
    color:white !important; 
}
</style>
<script language="javascript" type="text/javascript">
  window.history.forward();
  
</script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<body>
    <div id="login">
        <h3 class="text-center text-white pt-5">Login form</h3>
        <div class="container">
       
            <div id="login-row" class="row justify-content-center align-items-center">
                <div id="login-column" class="col-md-6">
                    <div id="login-box" class="col-md-12">
                        <form id="login-form" class="form" action="" method="post">
                            <h3 class="text-center text-info">Login</h3>
                            <?php
                                if(Session::get('errormsg')):?>
                                    <h6 style="color:red; text-align: center;"><?= Session::get('errormsg') ?></h6>
                            <?php endif;
                                Session::delete('errormsg');   ?>
                            <div class="form-group">
                                <label for="username" class="text-info">Username:</label><br>
                                <input type="text" name="username" id="username" class="form-control" required>
                            </div>
                            <div class="form-group">
                                <label for="password" class="text-info">Password:</label><br>
                                <input type="text" name="password" id="password" class="form-control" required>
                            </div>
                            <div class="form-group">                              
                                <input type="submit" class="btn btn-info btn-md" id="submit" value="Đăng Nhập">
                            </div>
                            <div class="form-group">    
                           
                                <button class="btn btn-info btn-md" id="back">
                                <a href="<?php echo basepath; ?>home" >
                                Quay Lại</a>
                                </button> 
                             
                                     
                            </div>
                                    


                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
</body>
