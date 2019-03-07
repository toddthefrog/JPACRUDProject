<html>
<head>
<jsp:include page="../bootstrapHead.jsp" />
</head>

<body>
	<div class="d-flex align-items-stretch flex-wrap">
			<div>
				<div class="card" style="width: 18rem;">
					<div class="card-body">
						<h5 class="card-title">${message.messageTitle}</h5>
						<p class="card-text">${message.messageBody}</p>
					</div>
				</div>
			</div>
	</div>
	<jsp:include page="../bootstrapFoot.jsp" />
</body>
</html>