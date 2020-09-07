<div class="container-fluid">
<!--DataTables -->

<div class="card shadow mb-4">
	<div class="card-header py-3">
		<h6 class="m-0 font-weight-bold text-primary"> Sửa Trang/Nhóm</h6>
	</div>
	<div class="card-body">
		<?php
        foreach($this->data as $row) :?>
        <form action="<?= basepath."type/update/".$row['typeId']?>" method="POST">
           
            <div class="modal-body">      
                <div class="form-group">
                    <label>Tên Tài Liệu</label>
                    <input type="text" name="typeName" class="form-control" value="<?= $row['typeName']?>" >
                
                </div>
                <div class="form-group">
                    <label>Loại Danh Mục</label>  
                    <select name="categoryId"  class="form-control" onfocus='this.size=10;' onblur='this.size=1;' onchange='this.size=1; this.blur();'>
                        <?php foreach ($this->category as $row_cat):?>
                            <option
                            
                            <?php
                                if($row['categoryId'] == $row_cat['categoryId'])
                                {
                                    echo 'selected';
                                }
                            ?>
                            
                            value="<?php echo $row_cat['categoryId'] ?>"><?php echo $row_cat['categoryName'] ?></option>
                        <?php endforeach; ?> 
                    </select> 
                </div>
                               
                <button type="submit" name="update" class="btn btn-primary"> Update</button>
                <a href="<?php echo basepath?>type/index" class="btn btn-danger"> CANCEL </a>	
                           
            </div>
            
        </form>
        <?php endforeach;?>
	</div>
</div>
</div>