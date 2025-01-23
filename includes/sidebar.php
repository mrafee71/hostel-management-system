<nav class="ts-sidebar">
			<ul class="ts-sidebar-menu">

				<li class="ts-label">Main</li>
				<?PHP if(isset($_SESSION['id']))
				{ ?>
				<li class="ts-label" style="font-size: 24px; margin-top : -10px; margin-left:10px;">STUDENT</li>
					<li><a href="dashboard.php"><i class="fa fa-desktop"></i>Dashboard</a></li>
<li><a href="book-hostel.php"><i class="fa fa-file-o"></i>Book Hostel</a></li>
<li><a href="room-details.php"><i class="fa fa-file-o"></i>Room Details</a></li>
<li><a href="feesdetails.php"><i class="fa fa-files-o"></i>Fee Details</a></li>
<li><a href="feemsg.php"><i class="fa fa-desktop"></i>Fee Update Message</a></li>
<li><a href="my-profile.php"><i class="fa fa-user"></i> My Profile</a></li>
<li><a href="change-password.php"><i class="fa fa-files-o"></i>Change Password</a></li>
<?php } else { ?>
				<li><a href="index.php"><i class="fa fa-users"></i> User Login</a></li>
				<li><a href="manager"><i class="fa fa-user"></i> Hostel Manager Login</a></li>
				<li><a href="admin"><i class="fa fa-user"></i> Admin Login</a></li>
				<?php } ?>

			</ul>
		</nav>