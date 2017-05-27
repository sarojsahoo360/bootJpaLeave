<!DOCTYPE HTML>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
	<head>
		<meta charset="utf-8">
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta http-equiv="Pragma" content="no-cache">
		<meta http-equiv="Cache-Control" content="no-cache">
		<meta http-equiv="Expires" content="Sat,01 Dec 2001 00:00:00 GMT">
		<title>Leave Flow | Home</title>
		<link href="static/css/bootstrap.css" rel="stylesheet">
		<link href="static/css/style.css" rel="stylesheet">
		
	</head>
	<body>
		<div role="navigation">
			<div class="navbar navbar-inverse">
				<a href="/" class="navbar-brand">CUTM Leave Flow</a>
				<div class="navbar-collapse collapse">
					<ul class="nav navbar-nav">
						<li><a href="new-leave">Apply Leave</a></li>
						<li><a href="all-tasks">Check Leave</a></li>
					</ul>
				</div>
			</div>
		</div>
		<c:choose>
			<c:when test="${mode=='MODE_HOME' }">
				<div class="container" id="homeDiv">
					<div class="jumbotron text-center">
						<h1>Welcome To CUTM Leave Flow</h1>
						<h3>Developed by Saroj Kumar Sahoo ..</h6>
					</div>
				</div>
			</c:when>
			
			<c:when test="${mode=='MODE_TASKS' }">
				<div class="container text-center" id="tasksDiv">
					<h3>My Tasks</h3><hr/>
					<div class="table-responsive">
						<table class="table table-striped table-bordered text-left">
							<thead>
								<tr>
									
									<th>Leave Name</th>
									<th>Reason</th>
									<th>From Date</th>
									<th>To Date</th>
									<th></th><th></th>
								</tr>
							</thead>
							<tbody>
								<c:forEach var="task" items="${tasks }">
									<tr>
										
										<td>${task.leavename }</td>
										<td>${task.reason }</td>
										<td><fmt:formatDate value="${task.fdt }" pattern="YYYY-MMM-DD"/> </td>
										<td><fmt:formatDate value="${task.tdt }" pattern="YYYY-MMM-DD"/> </td>
										<td><a href="update-task?id=${task.id }"><span class="glyphicon glyphicon-pencil"></span> </a></td>
										<td><a href="delete-task?id=${task.id }"><span class="glyphicon glyphicon-trash"></span> </a></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</div>
				</div>
			</c:when>
			<c:when test="${mode=='MODE_NEW' || mode == 'MODE_UPDATE'}">
				<div class="container text-center">
					<h3>Leave Application	</h3><hr>
					<form class="form-horizontal" method="post" action="save-task">
						<input type="hidden" name="id" value="${task.id }">
						<div class="form-group">
							<label class="control-label col-md-3">Type of Leave</label>
							<div class="col-md-7">
							<input type="text" class="form-control" name="leavename" value="${task.leavename }">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-3">Reason</label>
							<div class="col-md-7">
							<input type="text" class="form-control" name="reason" value="${task.reason }">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-3">Date From</label>
							<div class="col-md-7">
							<input type="text" class="form-control" name="fdt" value="${task.fdt }">
							</div>
						</div>
						<div class="form-group">
							<label class="control-label col-md-3">To Date</label>
							<div class="col-md-7">
							<input type="text" class="form-control" name="tdt" value="${task.tdt }">
							</div>
						</div>
						<div class="form-group"><input type="submit" class="btn btn-primary" value="Apply"> </div>
					</form>
				</div>
			</c:when> 
		</c:choose>
		
		
		
		<script src="static/js/bootstrap.js"></script>
		<script src="static/js/jquery.min.js"></script>
	</body>
</html>