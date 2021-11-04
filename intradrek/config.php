<?php 

    //start
	session_start();

	// connect to database
    $conn = mysqli_connect("localhost", "root", "", "blogdata");

	if (!$conn) {
		die("Error connecting to database: " . mysqli_connect_error());
	}

    //global constants
	define ('ROOT_PATH', realpath(dirname(__FILE__)));
	define('BASE_URL', 'http://localhost/scripts/Dreksite/intradrek/');

?>