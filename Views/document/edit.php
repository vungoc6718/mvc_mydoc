<div class="container-fluid">
<!--DataTables -->

<div class="card shadow mb-4">
	<div class="card-header py-3">
		<h6 class="m-0 font-weight-bold text-primary"> Sửa Tài Khoản</h6>
	</div>
	<div class="card-body">
		<?php
        foreach($this->data as $row) :?>
        <form action="<?= basepath."document/update/".$row['documentId']?>" method="POST">
           
            <div class="modal-body">      
                <div class="form-group">
                    <label>Tên Tài Liệu</label>
                    <input type="text" name="documentName" class="form-control" value="<?= $row['documentName']?>" >
                
                </div>
                <div class="form-group">
                    <label>Link</label>
                    <input type="text" name="link" value="<?= $row['link']?>" class="form-control" >
                    <br>
                    <a href="<?= $row['link']?>"  target="_blank">Nhấp Link</a>
                </div> 
                <div class="form-group">
                    <label>Loại Tài Liệu</label>
                    <select name="typeId"  class="form-control" onfocus='this.size=10;' onblur='this.size=1;' onchange='this.size=1; this.blur();'>
                        <?php foreach ($this->type as $row_type):?>
                            <option
                            
                            <?php
                                if($row['typeId'] == $row_type['typeId'])
                                {
                                    echo 'selected';
                                }
                            ?>
                            
                            value="<?php echo $row_type['typeId'] ?>"><?php echo $row_type['typeName'].' - '.$row_type['categoryName'] ?></option>
                        <?php endforeach; ?>    
                    </select>
                    </div>

                    <div class="form-group">
                    <label>Trang/Nhóm</label> 
                    <select name="pageId"  class="form-control" onfocus='this.size=10;' onblur='this.size=1;' onchange='this.size=1; this.blur();'>
                        <?php foreach ($this->page as $row_page):?>
                            <option
                            
                            <?php
                                if($row['pageId'] == $row_page['pageId'])
                                {
                                    echo 'selected';
                                }
                            ?>
                            
                            value="<?php echo $row_page['pageId'] ?>"><?php echo $row_page['pageName'].' - '.$row_type['categoryName'] ?></option>
                        <?php endforeach; ?> 
                    </select>
                    </div> 

                <button type="submit" name="update" class="btn btn-primary"> Update</button>
                <a href="<?php echo basepath?>document/index" class="btn btn-danger"> CANCEL </a>	
                           
            </div>
            
        </form>
        <?php endforeach;?>
	</div>
</div>
</div>