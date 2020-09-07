
<div class="modal fade" id="addadminprofile" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Thêm Trang/Nhóm</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form action="<?php echo basepath?>page/insert" method="POST">

        <div class="modal-body">           
            <div class="form-group">
                <label>Tên Trang/Nhóm</label>
                <input type="text" name="pageName" class="form-control" placeholder="Nhập Tên Trang/Nhóm" required>
            </div>
            <div class="form-group">
                <label>Link</label>
                <input type="text" name="pageLink" class="form-control" placeholder="Nhập Link" required>
            </div>
            <div class="form-group">
                <label>Loại </label> 
                <select name="form"  class="form-control" >
                    <option value="0">Trang</option>
                    <option value="1">Nhóm</option>
                </select>
            </div>  
            <div class="form-group">
                <label>Loại Danh Mục</label> 
                <select name="categoryId"  class="form-control" onfocus='this.size=10;' onblur='this.size=1;' onchange='this.size=1; this.blur();'>
                <?php
                   foreach($this->category as $row_cat)
                   {
                        ?>
                            <option value="<?php echo $row_cat['categoryId'] ?>"><?php echo $row_cat['categoryName']?></option>
                        <?php
                    }

                ?>    
                </select>
            </div>           
            <div class="form-group">
                <label>Ản/Hiện Trên Trang Chủ</label> 
                <select name="visible"  class="form-control" >
                    <option value="0">Ẩn</option>
                    <option value="1" selected>Hiện</option>
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
    <h1 class="h3 mb-2 text-gray-800">Quản Lý Trang/Nhóm</h1>

    <!-- DataTales Example -->
    
    <div class="card shadow mb-4">
        <div class="card-header py-3"> 
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addadminprofile">
                Thêm Trang/Nhóm
            </button>
        </div>
        
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
                    <th width ="30%">Tên Trang/Nhóm</th> 
                    <th width ="10%">Link</th>
                    <th width ="10%">Loại Trang/Nhóm</th>
                    <th width ="10%">Loại Danh Mục</th>
                    <th width ="10%">Ẩn/Hiện</th>
                    <th width ="5%">EDIT </th>
                    <th width ="5%">DELETE </th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php $id=0;
                     foreach ($this->page as $row)
                     { 
                         $id++;?>
                          <tr>
                              <td> <?php echo $id ?></td>
                              <td> <?php echo $row['pageName']?></td> 
                              <td><a href="<?php echo $row['pageLink']?>" target="_blank">Nhấp Link</a> </td>     
                              <td> <?php echo $row['form'] == 0 ? 'Trang':'Nhóm' ?></td>
                              <td> <?php echo $row['categoryName']?></td> 
                              <td> <?php echo $row['visible'] == 0? 'Ẩn':'Hiện' ?></td>
                              <td>                              
                                <a href="<?= BASEPATH."page/edit/$row[pageId]"?>">
                                    <button type="submit" class="btn btn-success"> <i class="far fa-edit"></i></button>
                                </a>
                              </td>
                              <td>
                                  <form action="<?php echo basepath?>page/delete"  method="post">
                                    <input type="hidden" name="delete_id" value="<?php echo $row['pageId']; ?>">
                                    <button type="submit" class="btn btn-danger"> <i class="far fa-trash-alt"></i></button>
                                  </form>
                              </td>
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