<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
<title>Dashboard</title>
<meta content='width=device-width, initial-scale=1.0, shrink-to-fit=no'
	name='viewport' />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<link href="../assets/css/material-dashboard_copy.css?v=2.1.2"
	rel="stylesheet" />
<!-- CSS Just for demo purpose, don't include it in your project -->
<link href="../assets/demo/demo.css" rel="stylesheet" />
<style>
.sample{

}
</style>
<script>
$(document).ready(function () {

    $("#addButton").click(function () {
        if( ($('.form-horizontal .control-group').length+1) > 2) {
            alert("Only 2 control-group allowed");
            return false;
        }
        var id = ($('.form-horizontal .control-group').length + 1).toString();
        $('.form-horizontal').append('<div class="control-group" id="control-group' + id + '"><label class="control-label" for="inputEmail' + id + '">Email' + id + '</label><div class="controls' + id + '"><input type="text" id="inputEmail' + id + '" placeholder="Email"></div></div>');
    });

    $("#removeButton").click(function () {
        if ($('.form-horizontal .control-group').length == 1) {
            alert("No more textbox to remove");
            return false;
        }

        $(".form-horizontal .control-group:last").remove();
    });
});
function validateValues(){

	var element=document.getElementById("collapse1");
	element.className="panel-collapse collapse";
	document.getElementById("collapse2").className="panel-collapse collapse show";
	   
		
}
</script>

<%
String name = (String)request.getAttribute("name");		
%>
		

</head>

<body style="background-color: lemonchiffon;">


		<div class="sidebar" data-color="purple" data-background-color="white"
			data-image="../assets/img/sidebar-1.jpg">

			<div class="sidebar-wrapper">
				<ul class="nav">
					<li class="nav-item active  "><a class="nav-link"
						href="./dashboard.html"> 
							<p>Dashboard</p>
					</a></li>
				</ul>
			</div>
		</div>
	<div class="main-panel">
	
	<!-- Navbar -->
			<nav
				class="navbar navbar-expand-lg navbar-transparent navbar-absolute fixed-top ">
			
<img src="../assets/images/LoggedUser.png" class="img-fluid" alt="Responsive image" style="width: 42px;height: 40px;margin-top: -8px;margin-left: 5px;">
				
			<div>Welcome <%=name%></div>		
		
			</nav>
			<!-- End Navbar -->
	<div class="content" style="margin-top: 20px;">
		<div class="container-fluid">
			<div class="row">
				<!-- Added by Niharika -->

				<div class="container" style="background-color: wheat;">
					<div class="panel-group">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" class="show" href="#collapse1">Collapsible
										Input table1</a>
								</h4>
							</div>
							<div id="collapse1" class="panel-collapse collapse show">
								<div class="panel-body">
									<div class="row"
										style="background-color: blue; margin-right: 1px; margin-left: 1px;">
										<div class="col-sm-3">
											<form class="form-inline"
												style="margin-top: 15px; margin-bottom: 15px;">
												<div class="form-group">
													<label class="sr-only" for="accountid1"
														style="background-color: white;">Account Id</label> <input
														type="text" class="form-control" id="accountid1" value=""
														placeholder="Account Id">
												</div>
											</form>

										</div>
										<div class="col-sm-3" style="background-color: black;">
											<select class="custom-select" title="Select Language"
												style="margin-top: 15px; margin-bottom: 15px;">
												<option value="Select Langugae" selected="true">
													Select an Option</option>
												<option>English</option>
												<option>Spanish</option>
												<option>Tamil</option>
											</select>


											<!-- /.container -->
										</div>
										<div class="col-sm-3" style="background-color: red;">
											<div class="row"
												style="margin-top: 15px; margin-bottom: 15px;">
												<div class="col-sm-4">
													<label for="enddate" style="margin-top: 7px;">StartDate:</label>
												</div>
												<div class="col-sm-8">
													<input type="date" class="form-control" id="enddate"
														placeholder="Enter Date" name="enddate"
														style="line-height: 16px;">
												</div>
											</div>

										</div>
										<div class="col-sm-3" style="background-color: darkred;">
											<div class="row"
												style="margin-top: 15px; margin-bottom: 15px;">
												<div class="col-sm-4">
													<label for="enddate" style="margin-top: 7px;">EndDate:</label>
												</div>
												<div class="col-sm-8">
													<input type="date" class="form-control" id="enddate"
														placeholder="Enter Date" name="enddate"
														style="line-height: 16px;">
												</div>
											</div>
										</div>

									</div>
									<div class="panel-footer text-center"
										style="margin-top: 10px; margin-bottom: 10px;">
										<input class="btn btn-primary" type="submit" value="Submit" onclick="validateValues()">
									</div>
								</div>

							</div>


						</div>



					</div>

				</div>



				<!-- Added by Niharika -->

			</div>
			
			<div class="container-fluid" style="margin-top:20px;">
			<div class="row">
				<!-- Added by Niharika -->

				<div class="container" style="background-color: white;">
					<div class="panel-group">
						<div class="panel panel-default">
							<div class="panel-heading">
								<h4 class="panel-title">
									<a data-toggle="collapse" href="#collapse2">Collapsible
										Input table2</a>
								</h4>
							</div>
							<div id="collapse2" class="panel-collapse collapse">
								<div class="panel-body">
									<div class="row"
										style="margin-right: 1px; margin-left: 1px;">
										<div class="col-sm-2" style="background-color: blue;">
										<select class="custom-select" data-toggle="tooltip" data-placement="top" title="Custom Sorting"
												style="margin-top: 15px; margin-bottom: 15px;">
												<option value="Select Langugae" selected="true">
													Custom Sorting</option>
												<option>H+D+P</option>
												<option>H+D</option>
											</select>

										</div>
										<div class="col-sm-2" style="background-color: pink;">
											<select class="custom-select" title="Cost"
												style="margin-top: 15px; margin-bottom: 15px;">
												<option value="Select Langugae" selected="true">
													Cost</option>
												<option>English</option>
												<option>Spanish</option>
												<option>Tamil</option>
											</select>


											<!-- /.container -->
										</div>
										<div class="col-sm-2" style="background-color: red;">
											<select class="custom-select" title="Clicks"
												style="margin-top: 15px; margin-bottom: 15px;">
												<option value="Select Langugae" selected="true">
													Clicks</option>
												<option>English</option>
												<option>Spanish</option>
												<option>Tamil</option>
											</select>
										</div>
										<div class="col-sm-2" style="background-color: orange;">
										<select class="custom-select" title="Conversion Rate"
												style="margin-top: 15px; margin-bottom: 15px;">
												<option value="Select Langugae" selected="true">
													Conversion Rate</option>
												<option>English</option>
												<option>Spanish</option>
												<option>Tamil</option>
											</select>
										</div>
										<div class="col-sm-2" style="background-color: wheat;">
										<select class="custom-select" title="Impressions"
												style="margin-top: 15px; margin-bottom: 15px;">
												<option value="Select Langugae" selected="true">
													Impressions</option>
												<option>English</option>
												<option>Spanish</option>
												<option>Tamil</option>
											</select>
										</div>
										
										<div class="col-sm-2" style="background-color: lightgreen;">
										<select class="custom-select" title="%Spend"
												style="margin-top: 15px; margin-bottom: 15px;">
												<option value="Select Langugae" selected="true">
													%Spend</option>
												<option>English</option>
												<option>Spanish</option>
												<option>Tamil</option>
											</select>
										</div>

									</div>
							<!-- Grid for displaying adding text columns -->		
									<div class="row"
										style="margin-right: 1px;margin-top: 20px;margin-left: 1px;">
										 <div class="form-horizontal">
        <div class="control-group">
            <label class="control-label" for="inputEmail">
                Email</label>
            <div class="controls">
                <input type="text" id="inputEmail" placeholder="Email" />
                </div>
        </div>
    </div>
    <input type='button' value='Add Button' id='addButton' />
    <input type='button' value='Remove Button' id='removeButton' />
										
									</div>
									<div class="panel-footer text-center"
										style="margin-top: 10px; margin-bottom: 10px;">
										<input class="btn btn-primary" type="submit" value="Submit">
									</div>
								</div>

							</div>


						</div>



					</div>

				</div>



				<!-- Added by Niharika -->

			</div>
		</div>
		</div>
		</div>
		</div>

	
</body>
</html>
