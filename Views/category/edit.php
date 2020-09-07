<div class="container-fluid">
<!--DataTables -->

<div class="card shadow mb-4">
	<div class="card-header py-3">
		<h6 class="m-0 font-weight-bold text-primary"> Sửa Danh Mục</h6>
	</div>
	<div class="card-body">
		<?php
        foreach($this->data as $row) :?>
        <form action="<?= basepath."category/update/".$row['categoryId']?>" method="POST">
           
            <div class="modal-body">      
                <div class="form-group">
                    <label>Tên Danh Mục</label>
                    <input type="text" name="categoryName" class="form-control" value="<?= $row['categoryName']?>" >
                
                </div>
 
                <div class="form-group">
                    <label >Ẩn /Hiện</label>
                    <select name="visible" class="form-control">
                        <option value="0" 
                        <?php
                        if($row['visible'] == '0') echo 'selected';
                        ?>
                        >Ẩn</option>
                        <option value="1"  
                        <?php
                        if($row['visible'] == '1') echo 'selected';
                        ?>
                        >Hiện</option>
                    </select>
                </div>
                <button type="submit" name="update" class="btn btn-primary"> Update</button>
                <a href="<?php echo basepath?>category/index" class="btn btn-danger"> CANCEL </a>	
                           
            </div>
            
        </form>
        <?php endforeach;?>
	</div>
</div>
</div>