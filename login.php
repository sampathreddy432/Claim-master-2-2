<?php


if (isset($_GET["userName"])  && isset($_GET["password"]) ){
				$userName = $_GET["userName"];
				$password = $_GET["password"];
				$result = login( $userName, $password);
				echo $result;
				}

function makeSqlConnection()
{
$DB_HostName = "localhost";
$DB_Name = "sampath";
$DB_User = "root";
$DB_Pass = "root";

	$con = mysql_connect($DB_HostName,$DB_User,$DB_Pass) or die(mysql_error()); 

		mysql_select_db($DB_Name,$con) or die(mysql_error()); 

	return $con;
}

function disconnectSqlConnection($con)
{
	mysql_close($con);
}

function login($userName, $password)
{
	//require (FILE);
	$con = makeSqlConnection();
	
	$sql = "select * from user  where userName = '$userName' and password = '$password';";
	$res = mysql_query($sql,$con) or die(mysql_error());
	
	$res1 = mysql_num_rows($res);

	disconnectSqlConnection($con);
	
	 if ($res1 != 0) {
		return 1;
echo "success";
	}else{
	echo "failed";
		return 0;
	}// end else
	
	
}// end of Function 

?>