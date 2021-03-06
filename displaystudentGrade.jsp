<%@ page language="java" import="java.util.*,org.fmz.model.Student" pageEncoding="utf-8"%>
<%@ page import="org.fmz.dao.impl.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">
		<title>显示学生成绩</title>

     <style type="text/css">
       input[type="text"]{
              height: auto;
	          margin-bottom: 15px;
	          padding: 3px 9px;
            }
     </style>
	</head>

	<body>
        <form action="gradesearchById" method="post">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                        学号：<input type="text" name="gradesearchId" placeholder="学生学号...">
         <i class="icon-search"></i>&nbsp;<button type="submit" class="btn btn-inverse"> 查找</button>
        </form>
		<table  class="table table-hover table-condensed">
		    <tr>
				<td align="center">
					<strong>学号</strong>
				</td>
				<td align="center">
					<strong>姓名</strong>
				</td>
				<td align="center">
					<strong>作业1</strong>
				</td>
				<td align="center" >
					<strong>作业2</strong>
				</td>
				<td align="center">
					<strong>作业3</strong>
				</td>
				<td align="center" >
					<strong>作业4</strong>
				</td>
				<td align="center">
					<strong>作业5</strong>
				</td>
				<td align="center" >
					<strong>作业6</strong>
				</td>
				<td align="center">
					<strong>作业7</strong>
				</td>
				<td align="center" >
					<strong>作业7</strong>
				</td>
				<td align="center">
					<strong>作业8</strong>
				</td>
				<td align="center" >
					<strong>作业10</strong>
				</td>
				<td align="center">
					<strong>作业11</strong>
				</td>
				<td align="center" >
					<strong>作业12</strong>
				</td>
				<td align="center">
					<strong>作业13</strong>
				</td>
				<td align="center" >
					<strong>作业14</strong>
				</td>
			</tr>
			<c:forEach items="${list}" var="studentgrade">
				<tr>
					<td>
						<c:out value="${studentgrade.st_id}" />
					</td>
					<td>
						<c:out value="${studentgrade.st_name}" />
					</td>
					<td>
						<c:out value="${studentgrade.grade_01}" />
					</td>
					<td>
						<c:out value="${studentgrade.grade_02}" />
					</td>
					<td>
						<c:out value="${studentgrade.grade_03}" />
					</td>
					<td>
						<c:out value="${studentgrade.grade_04}" />
					</td>
					<td>
						<c:out value="${studentgrade.grade_05}" />
					</td>
					<td>
						<c:out value="${studentgrade.grade_06}" />
					</td>
					<td>
						<c:out value="${studentgrade.grade_07}" />
					</td>
					<td>
						<c:out value="${studentgrade.grade_08}" />
					</td>
					<td>
						<c:out value="${studentgrade.grade_09}" />
					</td>
					<td>
						<c:out value="${studentgrade.grade_10}" />
					</td>
					<td>
						<c:out value="${studentgrade.grade_11}" />
					</td>
					<td>
						<c:out value="${studentgrade.grade_12}" />
					</td>
					<td>
						<c:out value="${studentgrade.grade_13}" />
					</td>
					<td>
						<c:out value="${studentgrade.grade_14}" />
					</td>
					<td>
						<a href="sgdelete?id=${studentgrade.st_id}" class="btn btn-danger">删除</a>
						<a href="pre?method=updateStudentGrade&id=${studentgrade.st_id}" class="btn btn-primary">更新</a>
					</td>
				</tr>
			</c:forEach>
		</table>

		<hr>
		<a href="main.jsp" class="btn btn-success">返回主菜单</a>
		<hr>
	</body>
</html>
