<div class="container-fluid">
<!--DataTables -->

<div class="card shadow mb-4">
	<div class="card-header py-3">
		<h6 class="m-0 font-weight-bold text-primary"> Sửa Trang/Nhóm</h6>
	</div>
	<div class="card-body">
		<?php
        foreach($this->data as $row) :?>
        <form action="<?= basepath."page/update/".$row['pageId']?>" method="POST">
           
            <div class="modal-body">      
                <div class="form-group">
                    <label>Tên Tài Liệu</label>
                    <input type="text" name="pageName" class="form-control" value="<?= $row['pageName']?>" >
                
                </div>
                <div class="form-group">
                    <label>Link</label>
                    <input type="text" name="pageLink" value="<?= $row['pageLink']?>" class="form-control" >
                    <br>
                    <a href="<?= $row['pageLink']?>"  target="_blank">Nhấp Link</a>
                </div> 
                
                <div class="form-group">
                    <label >Loại Trang/Nhóm</label>
                    <select name="form" class="form-control">
                        <option value="0" 
                        <?php
                        if($row['form'] == '0') echo 'selected';
                        ?>
                        >Trang</option>
                        <option value="1"  
                        <?php
                        if($row['form'] == '1') echo 'selected';
                        ?>
                        >Nhóm</option>
                    </select>
                </div>
                <div class="form-group">
                    <label>Trang/Nhóm</label> 
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
                <a href="<?php echo basepath?>page/index" class="btn btn-danger"> CANCEL </a>	
                           
            </div>
            
        </form>
        <?php endforeach;?>
	</div>
</div>
</div>