<%@ page pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8") ;
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath() + "/";
	String message_input_url = basePath + "pages/message/echo.action" ;
%>
<base href="<%=basePath%>" />
<form action="<%=message_input_url%>" method="post">
	请输入消息：<input type="text" name="msg" id="msg" value="www.mldn.cn"><br>
	消息标签：	<input type="checkbox" name="tags" id="tags" value="政治">政治
			<input type="checkbox" name="tags" id="tags" value="经济">经济
			<input type="checkbox" name="tags" id="tags" value="文化">文化
	<br><input type="submit" value="发送">
</form>