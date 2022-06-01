<?php 	

require_once 'core.php';

$sql = "SELECT categories_id, categories_name, categories_active, categories_status FROM categories WHERE categories_status = 1";
$result = $connect->query($sql);

$sqlss = "UPDATE categories SET categories_active='2' WHERE(SELECT SUM(quantity) FROM product where product.categories_id = categories.categories_id group by categories.categories_id )<= 0";
$resultss = $connect->query($sqlss);

$sqlsss = "UPDATE categories SET categories_active='1' WHERE(SELECT SUM(quantity) FROM product where product.categories_id = categories.categories_id group by categories.categories_id ) > 0";
$resultss = $connect->query($sqlsss);

$output = array('data' => array());

if($result->num_rows > 0) { 

 // $row = $result->fetch_array();
 $activeCategories = ""; 

 while($row = $result->fetch_array()) {
 	$categoriesId = $row[0];
 	// active 
 	if($row[2] == 1) {
 		// activate member
 		$activeCategories = "<label class='label label-success'>สามารถเบิกได้</label>";
 	} else {
 		// deactivate member
 		$activeCategories = "<label class='label label-danger'>ไม่สามารถเบิกได้</label>";
 	}

 	$button = '<!-- Single button -->
	<div class="btn-group">
	  <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
	    ตั้งค่า <span class="caret"></span>
	  </button>
	  <ul class="dropdown-menu">
	    <li><a type="button" data-toggle="modal" id="editCategoriesModalBtn" data-target="#editCategoriesModal" onclick="editCategories('.$categoriesId.')"> <i class="glyphicon glyphicon-edit"></i> แก้ไข</a></li>
	    <li><a type="button" data-toggle="modal" data-target="#removeCategoriesModal" id="removeCategoriesModalBtn" onclick="removeCategories('.$categoriesId.')"> <i class="glyphicon glyphicon-trash"></i> ลบข้อมูล</a></li>       
	  </ul>
	</div>';

 	$output['data'][] = array( 		
 		$row[1], 		
 		$activeCategories,
 		$button 		
 		); 	
 } // /while 

}// if num_rows

$connect->close();

echo json_encode($output);