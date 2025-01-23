<?php
session_start();
include('includes/config.php');
include('includes/checklogin.php');
check_login();
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
	<title>Room Details</title>
	<link rel="stylesheet" href="css/font-awesome.min.css">
	<link rel="stylesheet" href="css/bootstrap.min.css">
	<link rel="stylesheet" href="css/dataTables.bootstrap.min.css">
	<link rel="stylesheet" href="css/bootstrap-social.css">
	<link rel="stylesheet" href="css/bootstrap-select.css">
	<link rel="stylesheet" href="css/fileinput.min.css">
	<link rel="stylesheet" href="css/awesome-bootstrap-checkbox.css">
	<link rel="stylesheet" href="css/style.css">
	<link rel="stylesheet" href="css/font-awesome.min.css">

<script language="javascript" type="text/javascript">
var popUpWin=0;
function popUpWindow(URLStr, left, top, width, height)
{
 if(popUpWin)
{
if(!popUpWin.closed) popUpWin.close();
}
popUpWin = open(URLStr,'popUpWin', 'toolbar=no,location=no,directories=no,status=no,menubar=no,scrollbars=yes,resizable=no,copyhistory=yes,width='+510+',height='+430+',left='+left+', top='+top+',screenX='+left+',screenY='+top+'');
}

</script>

</head>

<body>
	<?php include('includes/header.php');?>

	<div class="ts-main-content">
			<?php include('includes/sidebar.php');?>
		<div class="content-wrapper">
			<div class="container-fluid">
				<div class="row" id="print">


					<div class="col-md-12">
						<h2 class="page-title" style="margin-top:60px">Fee Details</h2>
						<div class="panel panel-default">
							<div class="panel-heading">Fee Details</div>
							<div class="panel-body">
			<table id="zctb" class="table table-bordered " cellspacing="0" width="100%" border="1">
									
						 <span style="float:left" ><i class="fa fa-print fa-2x" aria-hidden="true" OnClick="CallPrint(this.value)" style="cursor:pointer" title="Print the Report"></i></span>			
									<tbody>
<?php	
$aid=$_SESSION['login'];
	$ret="select * from booking where (emailid=? || regno	=?)";
$stmt= $mysqli->prepare($ret) ;
$stmt->bind_param('ss',$aid,$aid);
$stmt->execute() ;
$res=$stmt->get_result();
$cnt=1;
while($row=$res->fetch_object())
{
?>

<tr>
<td colspan="6" style="text-align:center; color:blue"><h3>FEE RELATED INFO</h3></td>
</tr>
<tr>
	<th>Registration Number :</th>
<td><?php echo $row->regno;?></td>
<th>Apply Date :</th>
<td><?php echo $row->postingDate;?></td>
<th>Status :</th>
<td><b style="color: green;"><?php echo $row->status;?></b></td>
</tr>



<tr>
<td><b>Room no :</b></td>
<td><?php echo $row->roomno;?></td>
<td><b>Seater :</b></td>
<td><?php echo $row->seater;?></td>
<td><b>Fees PM :</b></td>
<td><?php echo $fpm=$row->feespm;?></td>
</tr>

<tr>
<td><b>Food Status:</b></td>
<td>
<?php if($row->foodstatus==0)
{
echo "Without Food";
}
else
{
echo "With Food";
}
;?></td>
<td><b>Stay From :</b></td>
<td><?php echo $row->stayfrom;?></td>
<td><b>Duration:</b></td>
<td><?php echo $dr=$row->duration;?> Months</td>
</tr>

<tr><th>Hostel Fee:</th>
<td><?php echo $hf=$dr*$fpm?></td>
<th>Food Fee:</th>
<td><?php 
if($row->foodstatus==1)
{ 
echo $ff=(2000*$dr);
} else { 
echo $ff=0;
echo "<span style='padding-left:2%; color:red;'>(You booked hostel without food).<span>";
}?></td>
<th>Total Fee :</th>
<th><?php echo $hf+$ff;?></th>
</tr>
<tr>
<th>Fee Paid :</th>
<th style="color:green" colspan="2"><?php echo $row->feepaid?></th>
<th>Fee Pending :</th>
<th style="color:Red" colspan="2"><?php echo $row->feepending?></th>
</tr>
<tr>
<th>Month Paid :</th>
<th style="color:Green" colspan="2"><?php echo $row->paidmonth?></th>
<th>Month Pending :</th>
<th style="color:Red" colspan="2"><?php echo $row->pendingmonth?></th>
</tr>
<?php
$cnt=$cnt+1;
}
?>
</tbody>
</table>
</div>
</div>
</div>
</div>
</div>
</div>
</div>

	<!-- Loading Scripts -->
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
$(function () {
$("[data-toggle=tooltip]").tooltip();
    });
function CallPrint(strid) {
var prtContent = document.getElementById("print");
var WinPrint = window.open('', '', 'left=0,top=0,width=800,height=900,toolbar=0,scrollbars=0,status=0');
WinPrint.document.write(prtContent.innerHTML);
WinPrint.document.close();
WinPrint.focus();
WinPrint.print();
WinPrint.close();
}
</script>
</body>

</html>
