<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file = "/common/navigationBar.jsp" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>

<style type="text/css">
	@import url(common/homework.css);
	
	
    body,ul,li{
        padding: 0;
        margin: 0;
        list-style-type: none;
        font-size: 20px;
    }
</style>

<script src ="script/jquery-1.7.2.min.js" ></script>
<script type="text/javascript">
	$(function(){
		$(":submit").click(function(){
		
			var $name = $(":text[name='articleName']") ;
			
			var name = $name.val();
			name = $.trim(name);
			$name.val(name);
			
			
			
			if(name == ""){
				alert("请输入标题名！");
				return false;
			}
			
			return true;
		});
	})
</script>

<body>
	
	
<div class = "content">		
	<center>
		
		<form action="manageServlet?method=addArticle&colId=${param.colId }" method = "post">
			标题：<input type = "text" name = "articleName"/><br><br>
			<p>添加内容</p>
			<textarea name = "content" rows="30" cols="80" >
		
			</textarea>
			<br>
			
			<br><input type = "submit" value = "添加"/>
		</form>
	
	</center>
</div>
</body>
</html>