<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
			<ul class="navbar-nav ml-auto">
				<li class="nav-item active"><a class="nav-link" href="add.do">Add New<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item active"><a class="nav-link" href="showCompleted.do">View Completed<span class="sr-only">(current)</span>
				</a></li>
			</ul>
		</div>
	</nav>
	<br>
	<div class="d-flex align-items-stretch flex-wrap">
		<c:forEach var="message" items="${resultList}">
		<c:if test = "${message.isActive == false}">
			<div class="card" style="width: 45rem;">
				<div class="card-header">created by ${message.userName} on
					${message.creationDate}</div>
				<div class="card-body">
					<h5 class="card-title">${message.messageTitle}</h5>
					<p class="card-text">${message.messageBody}</p>
					<a href="#" class="card-link"></a><a
						href="getMessage.do?fid=${message.id}">:edit:</a> <a href="deleteMessage.do?fid=${message.id}"
						class="card-link"></a><a href="undeleteMessage.do?fid=${message.id}">:reactivate:</a>
				</div>
			</div>
		</c:if>
		</c:forEach>
	</div>
	<jsp:include page="../bootstrapFoot.jsp" />
</body>
</html>