<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	session.invalidate();
	out.print("<script>alert('정상적으로 로그아웃 되셨습니다.'); location.href='./index.jsp''</script>");
%>