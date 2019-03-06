<!DOCTYPE html>
<html>
<head>
<jsp:include page="bootstrapHead.jsp" />
</head>
<body>
	<div>
		<form action="getLocation.do" method="GET">
		<input type="text" name="locationKeyA">
		<input type="text" name="locationKeyB" />
		<input type="text" name="locationKeyC" />
		<input type="submit" value="GO" />
		</form>
	</div>
	<jsp:include page="bootstrapFoot.jsp" />
</body>
</html>