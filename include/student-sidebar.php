
  
<head>
    <meta charset="utf-8">
    <link rel="shortcut icon" href="../Images/msu.png" type="image/x-icon">
    
    <!-- css style goes here -->

      <link rel="stylesheet" type="text/css" href="../bootstrap/css/bootstrap.min.css">
      
      <link rel="stylesheet" type="text/css" href="../css/style.css">
      

    <!-- css style go to end here -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
  </head>

	<div class="row w-100">
		<button class="show-btn button-show ml-auto">
		<i class="fa fa-bars py-1" aria-hidden="true"></i>
		</button> 
	</div>
		<nav id="sidebarMenu" class="">
			<div class="col-xl-2 col-lg-3 col-md-4 sidebar position-fixed border-right">
				<img style="margin-left: 50px;"  src="../images/msu.png" class="logo-image" width="140" height="140">
				<div class="sidebar-header">
					<div class="nav-item">
						<a class="nav-link text-white" href="../student/student-index.php">
							<span class="home"></span>
							<i class="fa fa-home mr-2" aria-hidden="true"></i> Dashboard 
						</a>
					</div>
				</div>
				<ul class="nav flex-column">
					<li class="nav-item">
						<a class="nav-link" href="../student/student-attendance.php">
						<span data-feather="file"></span>
						<i class="fa fa-info-circle mr-2" aria-hidden="true"></i> View Attendance
						</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="../student/student-result.php">
						<span data-feather="shopping-cart"></span>
						<i class="fa fa-th-list mr-2" aria-hidden="true"></i> My Results
						</a>
					</li>
					<li class="nav-item">
						<a class="nav-link" href="../student/student-transcript.php">
						<span data-feather="shopping-cart"></span>
						<i class="fa fa-th-list mr-2" aria-hidden="true"></i> View Marksheet
						</a>
					</li>
					<li class="nav-item active">
            <a class="nav-link" href="../login/logout.php"><i class="fa fa-sign-out text-black fa-lg" aria-hidden="true"></i><span>Logout</span></a>
          </li>
				</ul>
			</div>
		</nav>
		
		<script>
			const toggleBtn = document.querySelector(".show-btn");
			const sidebar = document.querySelector(".sidebar");
			// undefined
			toggleBtn.addEventListener("click",function(){
				sidebar.classList.toggle("show-sidebar");
			});
		</script>