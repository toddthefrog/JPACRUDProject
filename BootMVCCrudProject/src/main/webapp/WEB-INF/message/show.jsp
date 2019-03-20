<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
	<div class="d-flex align-items-stretch flex-wrap">
		<c:forEach var="message" items="${resultList}">
			<div class="card" style="width: 45rem;">
				<div class="card-header">created by ${message.userName} on
					${message.creationDate}</div>
				<div class="card-body">
					<h5 class="card-title">${message.messageTitle}</h5>
					<p class="card-text">${message.messageBody}</p>
					<a href="#" class="card-link"></a><a
						href="getMessage.do?fid=${message.id}">edit</a> <a href="deleteMessage.do?fid=${message.id}"
						class="card-link"></a><a href="deleteMessage.do?fid=${message.id}">delete</a>
				</div>
			</div>
		</c:forEach>
	</div>
	<jsp:include page="../bootstrapFoot.jsp" />
</body>
</html>