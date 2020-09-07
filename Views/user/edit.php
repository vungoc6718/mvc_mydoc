<div class="container-fluid">
<!--DataTables -->

<div class="card shadow mb-4">
	<div class="card-header py-3">
		<h6 class="m-0 font-weight-bold text-primary"> Sửa Tài Khoản</h6>
	</div>
	<div class="card-body">
		<?php
        foreach($this->data as $row) :?>
        <form action="<?= basepath."user/update/".$row['userId']?>" method="POST">
           
            <div class="modal-body">      
                <div class="form-group">
                    <label>Tên User</label>
                    <input type="text" name="userName" class="form-control" value="<?= $row['userName']?>" >
                
                </div>
                <div class="form-group">
                    <label>Password</label>
                    <input type="text" name="passWord" value="<?= $row['passWord']?>" class="form-control" >
                    
                </div> 
                <div class="form-group">
                <label >Role</label>
                    <select name="role" class="form-control">
                        <option value="1"
                        <?php
                        if($row['role'] == '1') echo 'selected';
                        ?>
                        >Admin</option>
                        <option value="2" 
                        <?php
                        if($row['role'] == '2') echo 'selected';
                        ?>
                        >User</option>
                        <option value="3" 
                        <?php
                        if($row['role'] == '3') echo 'selected';
                        ?>
                        >Mặc Định</option>
                    </select>
                </div>
                <div class="form-group">
                    <label >Active</label>
                    <select name="active" class="form-control">
                        <option value="0" 
                        <?php
                        if($row['active'] == '0') echo 'selected';
                        ?>
                        >Block</option>
                        <option value="1"  
                        <?php
                        if($row['active'] == '1') echo 'selected';
                        ?>
                        >Hiện</option>
                    </select>
                </div>
                <button type="submit" name="update" class="btn btn-primary"> Update</button>
                <a href="<?php echo basepath?>user/index" class="btn btn-danger"> CANCEL </a>	
                           
            </div>
            
        </form>
        <?php endforeach;?>
	</div>
</div>
</div>