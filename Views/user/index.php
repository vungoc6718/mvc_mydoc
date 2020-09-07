
<div class="modal fade" id="addadminprofile" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Thêm User</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form action="<?php echo basepath?>user/insert" method="POST">

        <div class="modal-body">           
            <div class="form-group">
                <label>Tên User</label>
                <input type="text" name="userName" class="form-control" placeholder="Nhập Tên Tài Liệu" required>
            </div>
            <div class="form-group">
                <label>Password</label>
                <input type="text" name="passWord" class="form-control" placeholder="Nhập Link" required>
            </div>
            <div class="form-group">
                <label>Role</label> 
                <select name="role"  class="form-control" onfocus='this.size=10;' onblur='this.size=1;' onchange='this.size=1; this.blur();'>   
                    <option value="1">Admin</option>
                    <option value="2">User </option>
                    <option value="3">Mặc định </option>
                
                </select>
              </div>      
            <div class="form-group">
                <label>Active</label> 
                <select name="active"  class="form-control" onfocus='this.size=10;' onblur='this.size=1;' onchange='this.size=1; this.blur();'>
                
                    <option value="0">Block</option>
                    <option value="1">Hiện</option>
                </select>
            </div>        
        </div>
        <div class="modal-footer">           
            <button type="submit" name="add" class="btn btn-primary">Save</button>
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        </div>
      </form>

    </div>
  </div>
</div>

<div class="container-fluid">
    <h1 class="h3 mb-2 text-gray-800">Quản Lý User</h1>

    <!-- DataTales Example -->
    
    <div class="card shadow mb-4">
    <?php 
    if(Session::get('logindtl') && Session::get('logindtl')['role'] ==1 or Session::get('logindtl')['role'] = 2):

    ?>
        <div class="card-header py-3"> 
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addadminprofile">
                Thêm User
            </button>
        </div>
    <?php endif;?>   
        <div class="card-body">
            <?php
            if(Session::get('gtmsg')):
                
                echo '
                    <div class="alert alert-success">
                        '.Session::get('gtmsg').'
                    </div>'
                    ;
                Session::delete('gtmsg');
            endif;

            ?>      
            <div class="table-responsive">	
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                    <tr>
                    <th width ="5%">STT </th>
                    <th width ="30%">User Name </th> 
                    <th width ="10%">Password</th>
                    <th width ="10%">Role</th>
                    <th width ="10%">Active</th>  
                    <?php 
                        if(Session::get('logindtl') && Session::get('logindtl')['role'] ==1 or Session::get('logindtl')['role'] = 2):

                        ?>      
                    <th width ="5%">EDIT </th>
                    <th width ="5%">DELETE </th>

                        <?php endif;?>

                    </tr>
                    </thead>
                    <tbody>
                    <?php $id=0;
                     foreach ($this->data as $row)
                     { 
                         $id++;?>
                          <tr>
                              <td> <?php echo $id ?></td>
                              <td> <?php echo $row['userName']?></td>    
                              <td> <?php echo $row['passWord']?></td>
                              <td> <?php 
                              if($row['role'] ==1) echo 'Admin';
                              elseif($row['role'] ==2) echo 'User';
                              else echo 'Mặc định';
                              
                              ?></td>
                              <td><?php echo $row['active']==0 ? 'Block' :'Hiện'?> </td>     
                              <?php 
                                if(Session::get('logindtl') && Session::get('logindtl')['role'] ==1 or Session::get('logindtl')['role'] = 2):

                                ?>                                                    
                              <td>                              
                                <a href="<?= BASEPATH."user/edit/$row[userId]"?>">
                                    <button type="submit" class="btn btn-success"> <i class="far fa-edit"></i></button>
                                </a>
                              </td>
                              <td>
                                  <form action="<?php echo basepath?>user/delete"  method="post">
                                    <input type="hidden" name="delete_id" value="<?php echo $row['userId']; ?>">
                                    <button type="submit" class="btn btn-danger"> <i class="far fa-trash-alt"></i></button>
                                  </form>
                              </td>
                                <?php endif;?>
                          </tr>
                    <?php } ?>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div> 

<script>
    $(document).ready(function() {
      $('#dataTable').DataTable({
        responsive: true,
      
      });
    // $("#flash-msg").delay("fast").fadeOut("slow");
    });  
   
</script>