<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    <link rel="stylesheet" type="text/css" href="style/Theme.css">
    
    <title>My JSP 'search.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <div class="titleBar">
      <div class="center">
        <a href="${pageContext.servletContext.contextPath}/main.jsp" class="titleBar">${SearchList[0]}</a>
        <a href="${pageContext.servletContext.contextPath}/signup.jsp" class="signright">Sign up</a>
        <a class="signor">or</a>
        <a href="${pageContext.servletContext.contextPath}/signin.jsp" class="signleft">Sign in</a>
        <form action="" method="post">
          <input type="submit" name="SearchSubmit" class="searchSub" value="">
          <input type="text" name="Search" class="searchBox" placeholder="Search" autocomplete="on">
        </form>
      </div>
    </div>
    <div class="bodycenter">
      <a href="" class="Lable">RESULT</a>
      <p class="line">line1</p>
      <div>
      	<table id="rankTable">
      	<script>
      	  var str = '';
      	  for (var i=0;i<${SearchList.length};i++){
      	  	str = str + '<tr><td>&{SearchList[' + i.toString() +']}</td></tr>' + '<button class="musicbutton">'
      	  }
      	</script>
      	  <tr>
      	    <td>${RankList[0]}<button class="musicbutton" onclick="addMusic('${RankList[0]}')"></button></td>
      	    <td>${RankList[1]}<button class="musicbutton" onclick="addMusic('${RankList[1]}')"></button></td>
      	    <td>${RankList[2]}<button class="musicbutton" onclick="addMusic('${RankList[2]}')"></button></td>
      	  </tr>
      	</table>
      </div>
    </div>
  </body>
</html>
