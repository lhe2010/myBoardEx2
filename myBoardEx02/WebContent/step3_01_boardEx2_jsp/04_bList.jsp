<%@page import="step3_01_boardEx2.BoardDAO"%>
<%@page import="step3_01_boardEx2.BoardDTO"%>
<%@page import="java.util.Vector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>리스트페이지</title>
<link href="../css/bootstrap.css" type="text/css" rel = "stylesheet">
</head>
<body>
	<div align="center">
		<div>
			<h1>메인리스트</h1>
		</div>
		<div>
			<table class="table table-striped">
				<tr>
					<td>글번호</td>
					<td>제목</td>
					<td>작성자</td>
					<td>작성일<td>
					<td>조회수</td>
				</tr>
	<%
		Vector<BoardDTO> vec = BoardDAO.getInstance().getAllBoard();
		for(int i = 0; i < vec.size(); i++) {
			BoardDTO bean = vec.get(i);
	%>
				<tr>
					<td><%=bean.getNum() %></td>
					<td><a href="05_bInfo.jsp?num=<%=bean.getNum() %>"><%=bean.getSubject() %></a></td>
					<td><%=bean.getWriter() %></td>
					<td><%=bean.getReg_date() %></td>
					<td><%=bean.getRead_count() %></td>
				</tr>
	<%
		}
	%>
			</table>
		</div>
		<div>
			<button type="button" class="btn btn-secondary" onclick="location.href='02_bWrite.jsp'">글쓰기</button>
			
		</div>
	</div>

</body>
</html>