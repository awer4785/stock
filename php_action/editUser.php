<?php 	

require_once 'core.php';

$valid['success'] = array('success' => false, 'messages' => array());

if($_POST) {

	$userid 		= $_POST['editUserid'];
	$editRole           = $_POST['editRole'];
	$editEmail           =$_POST['editEmail'];

				
	$sql = "UPDATE users SET  email ='$editEmail', role = '$editRole' WHERE user_id = $userid ";

	if($connect->query($sql) === TRUE) {
		$valid['success'] = true;
		$valid['messages'] = "Successfully Update";	
	} else {
		$valid['success'] = false;
		$valid['messages'] = "Error while updating product info";
	}

} // /$_POST
	 
$connect->close();

echo json_encode($valid);
 