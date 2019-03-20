<!DOCTYPE html>
<html>
<head>
<jsp:include page="../bootstrapHead.jsp" />
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="#">ToDoozy</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarNav" aria-controls="navbarNav"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav">
				<li class="nav-item active"><a class="nav-link" href="add.do"">Add A ToDo
						<span class="sr-only">(current)</span>
				</a></li>
			</ul>
		</div>
	</nav>
	<br>
	<div>
		<form action="add.do" method="POST">
			Title: <h5 class="card-title"><input type="text" name="messageTitle"></h5>
			Message: <p class="card-text"><input type="text" name="messageBody"></p>
			Name: <p class="card-text"><input type="text" name="userName"></p>
			<input type="submit" value="Submit">
		</form> 
	</div>
	<jsp:include page="../bootstrapFoot.jsp" />
</body>
</html>