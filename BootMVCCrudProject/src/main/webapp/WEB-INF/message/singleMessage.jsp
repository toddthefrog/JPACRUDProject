<html>
<head>
<jsp:include page="../bootstrapHead.jsp" />
</head>

<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="/">ToDoozy</a>
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
			<form action="editMessage.do" method="POST">
					Title: <input type="text" name="messageTitle" value="${message.messageTitle}" size="100"><br> 
					Message: <input type="text" name="messageBody" value="${message.messageBody}" size="100"><br>
					Name: <input type="text" name="userName" value=" ${message.userName}" size="100"><br>
					Created: <input type="text" name="creationDate" value="${message.creationDate}" size="100"><br> 
					Last Edited: <input type="text" name="lastEdited" value="${message.lastEdited}" size="100">
					<input type="hidden" name="id" value="${message.id}" ><br>
				<input type="submit" value="Submit">
			</form>
		</div>
	<jsp:include page="../bootstrapFoot.jsp" />
</body>
</html>