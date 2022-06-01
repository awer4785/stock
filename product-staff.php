<?php require_once 'php_action/db_connect.php' ?>
<?php require_once 'includes/header-staff.php'; ?>

<div class="row">
	<div class="col-md-12">

		<ol class="breadcrumb">
		  <li><a href="dashboard.php">Home</a></li>		  
		  <li class="active">พัสดุ</li>
		</ol>

		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="page-heading"> <i class="glyphicon glyphicon-edit"></i> พัสดุ</div>
			</div> <!-- /panel-heading -->
			<div class="panel-body">

				<div class="remove-messages"></div>

				
				
				<table class="table" id="manageProductTable">
					<thead>
						<tr>
							<th style="width:10%;">รูป</th>							
							<th>ชื่อพัสดุ</th>
							<th>ราคา</th>							
							<th>จำนวน</th>
							<th>หมวดหมู่</th>
							<th>ประเภทพัสดุ</th>
							<th>สถานะ</th>
						</tr>
					</thead>
				</table>
				<!-- /table -->

			</div> <!-- /panel-body -->
		</div> <!-- /panel -->		
	</div> <!-- /col-md-12 -->
</div> <!-- /row -->

 


<script src="custom/js/product.js"></script>

<?php require_once 'includes/footer.php'; ?>