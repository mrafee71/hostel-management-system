<?php
session_start();
include('includes/config.php');
date_default_timezone_set('Asia/Kolkata');
include('includes/checklogin.php');
if(isset($_POST['submit']))
{
$regno=$_POST['registerno'];

$query1 = 'DELETE FROM userregistration WHERE regno=?';
$stmt = $mysqli->prepare($query1);
$rc=$stmt->bind_param('s',$regno);
$stmt->execute();
echo"<script>alert('Removed Student Successfully');</script>";
}
?>
<!doctype html>
<html lang="en" class="no-js">
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1">
	<meta name="description" content="">
	<meta name="author" content="">
	<meta name="theme-color" content="#3e454c">
	<title>Remove Student</title>
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/dataTables.bootstrap.min.css">>
	<link rel="stylesheet" href="css/bootstrap-social.css">
	<link rel="stylesheet" href="css/bootstrap-select.css">
	<link rel="stylesheet" href="css/fileinput.min.css">
	<link rel="stylesheet" href="css/awesome-bootstrap-checkbox.css">
	<link rel="stylesheet" href="css/style.css">
<script type="text/javascript" src="js/jquery-1.11.3-jquery.min.js"></script>
<script type="text/javascript" src="js/validation.min.js"></script>

</head>
<body>
	<?php include('includes/header.php');?>
	<div class="ts-main-content">
		<?php include('includes/sidebar.php');?>
		<div class="content-wrapper">
			<div class="container-fluid">

				<div class="row">
					<div class="col-md-12">
					
						<h2 class="page-title" style="margin-top: 60px;">Remove Registered Student</h2>
	
						<div class="row">
	
								<div class="col-md-10">
									<div class="panel-body">
				<form method="post" class="form-horizontal" name="vacate" id="vacate">
											<div class="hr-dashed"></div>
											<div class="form-group">
												<label class="col-sm-4 control-label">Reg.No:</label>
												<div class="col-sm-8">
													<select name="registerno" id="regno"class="form-control" required> 
<option value="">Select Regno</option>
<?php 
$status="ACTIVE";
$queryz ="SELECT * FROM userregistration";
$stmtz = $mysqli->prepare($queryz);
$stmtz->execute();
$ros=$stmtz->get_result();
while($rowz=$ros->fetch_object())
{
?>
<option value="<?php echo $rowz->regNo;?>"> <?php echo $rowz->regNo;?></option>
<?php } ?>
</select> 
			</div>
											</div>
										
											<div class="col-sm-6 col-sm-offset-4" style="margin-top: 10px;">
													<button class="btn btn-default" type="submit">Cancel</button>
													<input type="submit" name="submit" Value="Remove Student" class="btn btn-primary">
											</div>
										</form>

									</div>
								</div>
							</div>
							</div>
						
									
							

							</div>
						</div>

					</div>
				</div> 	
				

			</div>
		</div>
	</div>
	<script src="js/jquery.min.js"></script>
	<script src="js/bootstrap-select.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/jquery.dataTables.min.js"></script>
	<script src="js/dataTables.bootstrap.min.js"></script>
	<script src="js/Chart.min.js"></script>
	<script src="js/fileinput.js"></script>
	<script src="js/chartData.js"></script>
	<script src="js/main.js"></script>

<script>
function checkpass() {
$("#loaderIcon").show();
jQuery.ajax({
url: "check_availability.php",
data:'oldpassword='+$("#oldpassword").val(),
type: "POST",
success:function(data){
$("#password-availability-status").html(data);
$("#loaderIcon").hide();
},
error:function (){}
});
}
</script>
</body>

</html>