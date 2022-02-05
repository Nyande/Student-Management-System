<!---------------- Session starts form here ----------------------->
<?php  
	session_start();
	
	if ($_SESSION["LoginAdmin"])
	{
		$PRN_number=$_GET['PRN_number'] ?? $_SESSION['LoginStudent'];
	}
	else if(!$_SESSION["LoginAdmin"] && $_SESSION['LoginStudent']){
		$roll_no=$_SESSION['LoginStudent'];
	}
	else{ ?>
		<script> alert("Your Are Not Authorize Person For This link");</script>
	<?php
		header('location:../login/admin_login.php');
	}
	require_once "../connection/connection.php";
	?>
<!---------------- Session Ends form here ------------------------>


<!doctype html>
<html lang="en">
	<head>
		<title>Admin - Student Information</title>
		<meta charset="utf-8">
    <link rel="shortcut icon" href="../Images/msu.png" type="image/x-icon">
    
    <!-- css style goes here -->

      <link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.min.css">
      
      <link rel="stylesheet" type="text/css" href="../css/style.css">
      

    <!-- css style go to end here -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
	</head>
	<body>
		
	<?php
	$query="select * from student_info where PRN_number='$PRN_number'";
	$run=mysqli_query($con,$query);
	while ($row=mysqli_fetch_array($run)) {
		?>
		<div class="container  mt-1 border border-secondary mb-1">
			<div class="row text-white bg-primary pt-5">
				<div class="col-md-4">
					
					<img class="ml-5 mb-5" height='290px' width='250px' src="../Images/pic.jpg" >
				</div>
				<div class="col-md-8">
					<h3 class="ml-5"><?php echo $row['Student_name'] ?></h3><br>
					<div class="row">
						<div class="col-md-6">
							<h5>Phone Number:</h5> <?php echo $row['Phone_number']  ?><br><br>
							<h5>Email:</h5> <?php echo $row['email_address']  ?><br><br>
							<h5>Gender:</h5> <?php echo $row['Gender']  ?><br><br>
							<h5>Gender:</h5> <?php echo $row['Gender']  ?><br><br>
						</div>
						<div class="col-md-6">
							<h5>Department:</h5> <?php echo $row['Department']  ?><br><br>
							<h5>Semester:</h5> <?php echo $row['Semester']  ?><br><br>
							<h5>Address:</h5> <?php echo $row['Address']  ?><br><br>
						</div>		
					</div>
				</div>
				<hr>
			</div>
			
		</div>
	<?php } ?>
</body>
</html>
