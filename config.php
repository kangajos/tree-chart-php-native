<?php
ini_set('display_errors', '1');
ini_set('display_startup_errors', '1');
error_reporting(E_ALL);
$host = "localhost";
$root = "phpmyadmin";
$pass = "admin";
$db = "tree_data";
$connection = new mysqli($host, $root, $pass, $db);
if ($connection->connect_errno) {
  echo "Failed to connect to MySQL: " . $connection->connect_error;
  exit();
}

$table = "tabletransactall";

function getData()
{
	global $connection;
	global $table;
	$sql = "SELECT * FROM $table";
	$result = $connection->query($sql);
	$result = $result->fetch_all(MYSQLI_ASSOC);
	return $result;
}

function getByNoBatch($nobatch)
{
	global $connection;
	global $table;
	$sql = "SELECT * FROM $table WHERE nobatch='".$nobatch."' ORDER BY parent_id";
	$result = $connection->query($sql);
	$result = $result->fetch_all(MYSQLI_ASSOC);
	return $result;
}

function buildTree(array $elements, $parentId = 0) {
    $branch = array();

    foreach ($elements as $element) {
        if ($element['parent_id'] == $parentId) {
            $children = buildTree($elements, $element['id']);
            if ($children) {
                $element['children'] = $children;
            }
            $branch[] = $element;
        }
    }

    return $branch;
}

if (isset($_GET["nobatch"])) {
	$data = [];
	$checkLevel0 = 0;
	foreach (getByNoBatch($_GET["nobatch"]) as $key => $value) {
		// if ($value["level"] == 0) {
		// 	$checkLevel0++;
		// }
		// if ($checkLevel0 < 2) {
			
		// }
		$data[] = [
				"id" => $value["id"],
				"parent_id" => $value["parent_id"],
				"name" => $value["froms"]
			];
	}
	// echo "<pre>";
	// print_r($data);
	// die();
	$data = buildTree($data);
	// echo "<pre>";
	// print_r($data);
	// die();

}
?>