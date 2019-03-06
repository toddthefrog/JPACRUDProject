<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<jsp:include page="../bootstrapHead.jsp" />
</head>

<body>
	<div class="d-flex align-items-stretch flex-wrap">
		<c:forEach var="message" items="${result}">
			<div>
				<div class="card" style="width: 18rem;">
					<div class="card-body">
						<h5 class="card-title">${message.messageTitle}</h5>
						<p class="card-text">${message.messageBody}</p>
						<a href="#" class="card-link"></a><a
							href="getmessage.do?fid=${message.id}">${message.title}</a>
					</div>
				</div>
			</div>
		</c:forEach>
	</div>
	<jsp:include page="../bootstrapFoot.jsp" />
</body>
</html>