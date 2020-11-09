<%@ page language="java" import="java.util.*,entity.*,dao.*,dao.impl.*" pageEncoding="Utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%
	BoardDao boardDao =new BoardDaoImpl();
	Map mapBoard = boardDao.findBoard();
 %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<base href="<%=basePath%>">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>首页</title>
</style>
<style type="text/css">
#apDiv1 {
	position: absolute;
	left: 1px;
	top: 1px;
	width: 800px;
	height: 50px;
	z-index: 1;
}
#apDiv2 {
	position: absolute;
	left: 1px;
	top: 51px;
	width: 800px;
	height: 25px;
	z-index: 2;
	background-color: #e0f0f9;
}
#apDiv3 {
	position: absolute;
	left: 1px;
	top: 76px;
	width: 800px;
	height: 25px;
	z-index: 3;
}
#apDiv1 p {
	font-size: 24px;
	color: #F00;
	font-weight: bold;
	text-align: center;
}
</style>
</head>

<body>
<div id="apDiv1">
  <p>校园	BBS系统</p>
  <p>&nbsp;</p>
</div>
<div id="apDiv2">您尚未<a href="login.html">登录</a>|注册</div>
<div id="apDiv3">
  <table width="800" border="1" cellspacing="0" cellpadding="0">
    <tr>
      <td width="293">论坛</td>
      <td width="63">主题</td>
      <td width="436">最后发表</td>
    </tr>
    <!-- 主版块  开始-->
    <%
    List listMainBoard = (List)mapBoard.get(new Integer(0));
    for(int i = 0; i<listMainBoard.size(); i++){
    	Board mainBoard = ((Board)listMainBoard.get(i)); //循环得到主版块
    %>
    <tr class = "tr3">
		   <td colspan = "4"><%= mainBoard.getBoardName() %></td>
    </tr>
    <!-- 子版块 开始 -->
	<tr class = "tr3">
		<td width = "5%">&nbsp;</td>
		<th align = "left">
			<a href = "LIST.JSP">暂无</a>
		</th>
		<td align = "center">暂无</td>
		<th>
			<span>
				<a href = "detail.jsp">暂无</a>
			</span>
			<br />
			<span>暂无</span>
			<span class = "gray">[1900-01-01]</span>
		</th>
	</tr>
	<%
	}
	 %>
  </table>
</div>
</body>
</html>
    