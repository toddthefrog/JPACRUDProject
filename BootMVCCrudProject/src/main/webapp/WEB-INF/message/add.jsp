<!DOCTYPE html>
<html>
<head>
<jsp:include page="../bootstrapHead.jsp" />
</head>
<body>
	<div>
		<form action="add.do" method="POST">
		Message Tite:<input type="text" name="messageTitle"><br>
		Message Body:<input type="text" name="messageBody">
		<input type="submit" value="Submit" />
		</form>
	</div>
	<jsp:include page="../bootstrapFoot.jsp" />
</body>
</html>