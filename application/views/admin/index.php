<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title><?php echo isset($title)?$title:"Halaman Administrator" ?></title>
    <?php $this->load->view("admin/include/css.view.php") ?>
    <?php $this->load->view("admin/include/js.view.php") ?>
</head>
<body>
    <div id="wrapper">
        <!-- Navigation -->
        <nav class="navbar navbar-default navbar-static-top" role="navigation" style="margin-bottom: 0">
            <?php $this->load->view("admin/include/navbar-header.view.php") ?>

            <?php $this->load->view("admin/include/navbar-toplink.view.php") ?>

            <?php $this->load->view("admin/include/sidebar.view.php") ?>
        </nav>
		
        <div id="page-wrapper">
        	<div class="container-fluid">
                <div class="row">
                    <div class="col-lg-12">
                        <?php $this->load->view($konten) ?>
                    </div>
                    <!-- /.col-lg-12 -->
                </div>
                <!-- /.row -->
            </div>
            <!-- /.container-fluid -->
        </div>
        <!-- /#page-wrapper -->
    </div>
    <!-- /#wrapper -->
</body>
</html>


