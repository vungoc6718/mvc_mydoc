<link href="<?= baseurl ?>/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
  
  
  <!-- Custom styles for this template-->
  <link href="<?= baseurl ?>/css/sb-admin-2.min.css" rel="stylesheet">
<br>
<div class="container-fluid">
  <div> <h1 class="h3 mb-2 text-gray-800">Quản Lý Tài Liệu</h1></div>
    
  <div class="form-group">    
  <a href="<?php echo basepath; ?>login">Đăng Nhập
      <!-- <button type="submit" class="btn btn-success"> </button> -->
  </a>       
  </div>
    <!-- DataTales Example -->
    
    <div class="card shadow mb-4">
        
        <div class="card-body">
          
            <div class="table-responsive">	
                <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0">
                    <thead>
                      <tr>
                        <th width ="5%">STT </th>
                        <th width ="30%">Tên Tài Liệu </th> 
                        <th width ="10%">Loại Tài Liệu</th>
                        <th width ="10%">Danh Mục</th>
                        <th width ="10%">Link</th>         
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