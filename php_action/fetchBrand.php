<?php 	

require_once 'core.php';

$sql = "SELECT brand_id, brand_name, brand_active, brand_status FROM brands WHERE brand_status = 1";
$result = $connect->query($sql);

$sqlss = "UPDATE brands SET brand_active='2' WHERE(SELECT SUM(quantity) FROM product where product.brand_id = brands.brand_id group by brands.brand_id )<= 0";
$resultss = $connect->query($sqlss);

$sqlsss = "UPDATE brands SET brand_active='1' WHERE(SELECT SUM(quantity) FROM product where product.brand_id = brands.brand_id group by brands.brand_id ) > 0";
$resultss = $connect->query($sqlsss);


$output = array('data' => array());

if($result->num_rows > 0) { 

 // $row = $result->fetch_array();
 $activeBrands = ""; 

 while($row = $result->fetch_array()) {
 	$brandId = $row[0];
 	// active 
 	if($row[2] == 1) {
 		// activate member
 		$activeBrands = "<label class='label label-success'>สามารถเบิกได้</label>";
 	} else {
 		// deactivate member
 		$activeBrands = "<label class='label label-danger'>ไม่สามารถเบิกได้</label>";
 	}

 	$button = '<!-- Single button -->
	<div class="btn-group">
	  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	    ตั้งค่า <span class="caret"></span>
	  </button>
	  <ul class="dropdown-menu">
	    <li><a type="button" data-toggle="modal" data-target="#editBrandModel" onclick="editBrands('.$brandId.')"> <i class="glyphicon glyphicon-edit"></i> แก้ไข</a></li>
	    <li><a type="button" data-toggle="modal" data-target="#removeMemberModal" onclick="removeBrands('.$brandId.')"> <i class="glyphicon glyphicon-trash"></i> ลบข้อมูล</a></li>       
	  </ul>
	</div>';

 	$output['data'][] = array( 		
 		$row[1], 		
 		$activeBrands,
 		$button
 		); 	
 } // /while 

} // if num_rows

$connect->close();

echo json_encode($output);