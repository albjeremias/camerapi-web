<?php

$action = $_GET['action'];

switch($action)
{
	case "capture":
		captureImage();
		break;
}

function captureImage()
{
	$scale = isset($_GET['scale']) ? $_GET['scale'] : -1 ;
	if ($scale > 0 ){
		// add watermark to image: composite -gravity center ../php_capture/layer.png ../captures/capture_Wed\ 14\ Apr\ 11\:47\:03\ BST\ 2021.jpg lal.jpg
	}
	$output = shell_exec('./scripts/stop_streaming');
	$output = shell_exec('./scripts/capture');
	$output = shell_exec('./scripts/start_streaming'); // BUG: php won't stop reloading because process is running on background

}


?>
