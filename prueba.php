 <?php


include("con_db.php");

if (isset($_POST['login'])) {
$email=$_POST['email'];
$password=$_POST['password'];

$consulta = "INSERT INTO datos(email,password)  VALUES ('$email','$password')";

   
	 $resultado = mysqli_query($conex,$consulta);
	    


	    

}

?>

  
