<?php require_once 'includes/header-staff.php'; ?>


<div class="row">
	<div class="col-md-12">

		<ol class="breadcrumb">
		  <li><a href="dashboard.php">Home</a></li>		  
		  <li class="active">ประเภทพัสดุ</li>
		</ol>

		<div class="panel panel-default">
			<div class="panel-heading">
				<div class="page-heading"> <i class="glyphicon glyphicon-edit"></i>ประเภทพัสดุ</div>
			</div> <!-- /panel-heading -->
			<div class="panel-body">

				<div class="remove-messages"></div>
			
				
				<table class="table" id="manageCategoriesTable">
					<thead>
						<tr>							
							<th width="30%">ชื่อประเภท</th>
							<th width="10%">สถานะ</th>
						</tr>
					</thead>
				</table>
				<!-- /table -->

			</div> <!-- /panel-body -->
		</div> <!-- /panel -->		
	</div> <!-- /col-md-12 -->
</div> <!-- /row -->




<script src="custom/js/categories.js"></script>

<?php require_once 'includes/footer.php'; ?>