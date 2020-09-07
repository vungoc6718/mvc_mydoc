
<div class="modal fade" id="addadminprofile" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Thêm Loại</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form action="<?php echo basepath?>type/insert" method="POST">

        <div class="modal-body">           
            <div class="form-group">
                <label>Tên Loại</label>
                <input type="text" name="typeName" class="form-control" placeholder="Nhập Tên Loại" required>
            </div>
                
            <div class="form-group">
              <label>Danh Mục</label> 
              <select name="categoryId"  class="form-control" onfocus='this.size=10;' onblur='this.size=1;' onchange='this.size=1; this.blur();'>
              <?php
                  foreach($this->category as $row_cat)
                  {
                      ?>
                          <option value="<?php echo $row_cat['categoryId'] ?>"><?php echo $row_cat['categoryName'] ?></option>
                      <?php
                  }

              ?>    
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
    <h1 class="h3 mb-2 text-gray-800">Quản Lý Loại</h1>

    <!-- DataTales Example -->
    
    <div class="card shadow mb-4">
        <div class="card-header py-3"> 
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addadminprofile">
                Thêm Loại
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
                    <th width ="30%">Tên Loại</th> 
                    <th width ="10%">Danh Mục</th>
                    <th width ="5%">EDIT </th>
                    <th width ="5%">DELETE </th>
                    </tr>
                    </thead>
                    <tbody>
                    <?php $id=0;
                     foreach ($this->data as $row)
                     { 
                         $id++;?>
                          <tr>
                              <td> <?php echo $id ?></td>
                              <td> <?php echo $row['typeName']?></td>                            
                              <td> <?php echo $row['categoryName'] ?></td>
                              <td>                              
                                <a href="<?= BASEPATH."type/edit/$row[typeId]"?>">
                                    <button type="submit" class="btn btn-success"> <i class="far fa-edit"></i></button>
                                </a>
                              </td>
                              <td>
                                  <form action="<?php echo basepath?>type/delete"  method="post">
                                    <input type="hidden" name="delete_id" value="<?php echo $row['typeId']; ?>">
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