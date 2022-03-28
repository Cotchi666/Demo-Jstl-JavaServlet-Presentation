
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Danh sách sinh viên</title>
</head>

<body style="margin:0 auto; width:1024px">
<sql:setDataSource driver ="com.microsoft.sqlserver.jdbc.SQLServerDriver"
					url="jdbc:sqlserver://localhost:1433;databaseName=QLSV"
					user="sa"
					password="sa"
					var ="con"

/> 
<sql:query dataSource = "${con }" var "rs"> 
select * from USER
</sql:query>

	<h1>Danh sách sinh viên</h1>
	<table width="100%" border="1" cellpadding="1" cellspacing="1">
		<tr>
			<th width="10%">Mã SV</th>
			<th width="50%">Tên SV</th>
		</tr>
		<c:forEach items="${rs }" var="objSV">
		<tr> 
			<td>${objSV.id }</td>
			<td>${objSV.name }</td>
		</tr>
		</c:forEach>
	</table>
	<h2>IF - JSTL </h2>
	
	<c:if test="${studentlist.get(2).id % 2 != 0}">
		<p>Sinh viên ${studentlist.get(2).name } có ID là ${studentlist.get(2).id} số lẻ!</p>
	</c:if>
</body>
</html>