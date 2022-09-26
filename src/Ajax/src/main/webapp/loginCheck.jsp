<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	String id = request.getParameter("userid");	// 이러한 것들 tomcat이 처리한다.
	String pw = request.getParameter("userpw");
%>

안녕하세요. ${ param.userid }님	<!-- 브라우저상에 파라미터를 표현해주고 싶을 때 -->

<!-- <html>없는 게 더 좋다. -->