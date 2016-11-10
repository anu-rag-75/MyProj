<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@include file="/WEB-INF/views/template/header.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>Add Blog</title>
    <script src="//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
	<script src="//ajax.googleapis.com/ajax/libs/angularjs/1.2.11/angular.min.js"></script>
</head>
<body>
<div ng-app="myapp" ng-controller="blogCtrl">
<br/><br/><br/><br/><br/><br/><br/>
<h1 align=center>{{message}}</h1>
<hr color="red" size="10" >
<form name="AddBlogform" ng-submit="AddBlog();">
<table align=center>
	<tr><td>Blog Title:</td><td><input type="text" ng-model="Blog.posttitle" required/></td></tr>
	</br>
	<tr><td>Blog Message:</td><td><textarea cols="60" rows="5" ng-model="Blog.postmessage" required></textarea></td></tr>
	<tr><td><input ng-model="Blog.username" type="hidden" value="${pageContext.request.userPrincipal.name}"></td></tr>
	<tr>
		<td><input type="submit" value="Submit" ng-disabled="AddBlogForm.$invalid"/></td>
		<td><input type="reset" value="Reset" ng-click="Reset()"/></td>
	</tr>
	
</table>
</form>
</div>
</body>
</html>

<%@include file="/WEB-INF/views/template/footer.jsp" %>
