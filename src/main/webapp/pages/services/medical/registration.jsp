<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body ng-app="regApp">
	<div ng-controller="userRegController as ctrl">
		Registration
		<form ng-submit="ctrl.submit()" name="userRegForm">
			<table>
				<tr>
					<td><select ng-model="selectedTitleName" ng-options="item for item in titleNames"></select></td>
				</tr>
				<tr>
					<td>Name:</td>
					<td><input type="text" ng-modal=""></td>
				</tr>
				<tr><td></td></tr>
			</table>
		</form>
	</div>
	<script src="<c:url value='/resources/js/angular/lib/angular.min.js'/>"></script>
	<script src="<c:url value='/resources/js/angular/main/app.js' />"></script>
	<script
		src="<c:url value='/resources/js/angular/controller/registration_controller.js' />"></script>
	<script
		src="<c:url value='/resources/js/angular/service/registration_service.js' />"></script>

</body>
</html>