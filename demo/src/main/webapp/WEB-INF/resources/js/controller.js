angular.module('myapp',[]).controller('blogCtrl',function($scope,BlogService){
		$scope.message="Enter UR Blog";
		$scope.Reset = function () 
	{
			
		$scope.posttitle = '';
		$scope.postmessage = '';
	}
	$scope.Reset();
	
	$scope.AddBlog=function()
	{
		var b=$scope.Blog;
		alert("Hello");
		alert("Title:"+b.posttitle+"Message:"+b.postmessage+"User:"+b.username);
		BlogService.AddBlogToDB($scope.Blog);
		
	}
	})
	.factory("BlogService",['$http',function($http){
		var fac={};
		
		fac.AddBlogToDB=function(Blog)
		{
			
			$http.post("/demo/addnewpost/",Blog).success(function(response){
			alert(response.status);
			alert("called");
				})
		}
		return fac;
}])