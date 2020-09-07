
<div class="modal fade" id="addadminprofile" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
  <div class="modal-dialog" role="document">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="exampleModalLabel">Thêm Tài Liệu</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <form action="<?php echo basepath?>document/insert" method="POST">

        <div class="modal-body">           
            <div class="form-group">
                <label>Tên Tài Liệu</label>
                <input type="text" name="documentName" class="form-control" placeholder="Nhập Tên Tài Liệu" required>
            </div>
            <div class="form-group">
                <label>Link</label>
                <input type="text" name="link" class="form-control" placeholder="Nhập Link" required>
            </div>
            <div class="form-group">
                <label>Loại Tài Liệu</label> 
                <select name="typeId"  class="form-control" onfocus='this.size=10;' onblur='this.size=1;' onchange='this.size=1; this.blur();'>
                <?php
                   foreach($this->type as $row_type)
                   {
                        ?>
                            <option value="<?php echo $row_type['typeId'] ?>"><?php echo $row_type['typeName'].' - '.$row_type['categoryName'] ?></option>
                        <?php
                    }
                ?>    
                </select>
              </div>      
         
            <div class="form-group">
                <label >Trang/Nhóm</label> 
                
                <select name="pageId"  class="form-control"  id="select-state" onfocus='this.size=10;' onblur='this.size=1;' onchange='this.size=1; this.blur();' >
               
                <?php
                   foreach($this->page as $row_page)
                   {
                        ?>
                            <option value="<?php echo $row_page['pageId'] ?>"><?php echo $row_page['pageName'].' - '.$row_page['categoryName'] ?></option>
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
    <h1 class="h3 mb-2 text-gray-800">Quản Lý Tài Liệu</h1>

    <!-- DataTales Example -->
    
    <div class="card shadow mb-4">
        <div class="card-header py-3"> 
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#addadminprofile">
                Thêm Tài Liệu
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
                    <th width ="30%">Tên Tài Liệu </th> 
                    <th width ="10%">Loại Tài Liệu</th>
                    <th width ="10%">Danh Mục</th>
                    <th width ="10%">Link</th>
                    <th width ="20%">Trang/Nhóm</th>         
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
                              <td> <?php echo $row['documentName']?></td>    
                              <td> <?php echo $row['typeName']?></td>
                              <td> <?php echo $row['categoryName']  ?></td>
                              <td><a href="<?php echo $row['link']?>" target="_blank">Nhấp Link</a> </td>     
                              <td><a href="<?php echo $row['pageLink']?>" target="_blank"><?php echo $row['pageName']  ?></a>  </td>                                                     
                              <td>                              
                                <a href="<?= BASEPATH."document/edit/$row[documentId]"?>">
                                    <button type="submit" class="btn btn-success"> <i class="far fa-edit"></i></button>
                                </a>
                              </td>
                              <td>
                                  <form action="<?php echo basepath?>document/delete"  method="post">
                                    <input type="hidden" name="delete_id" value="<?php echo $row['documentId']; ?>">
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
    
</script>