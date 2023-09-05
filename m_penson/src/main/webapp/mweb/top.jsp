<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
String id = "";
String name = "";
String tel = "";
String email = "";

try {
id = session.getAttribute("userid").toString();
name = session.getAttribute("username").toString();
tel = session.getAttribute("usertel").toString();
email = session.getAttribute("useremail").toString();
}
catch(Exception e) {
	out.print("세션 오류로 인하여 서비스 중지!!");
}
%>



<header>
<ul class="top_menu">
    <li><img src="./img/menu.svg"></li>
    <li onclick="location.href='./index.jsp';"><img src="./img/header_logo.png"></li>
    <li id="userhtml" onclick="login_pop();"><img src="./img/login.svg"></li>
</ul>
</header>

<form>

<aside class="popup" id="popup" style="display:none;">
	<div class="login">
		<span class="close" onclick="pop_close();">X</span>
		<p>MEMBER-LOGIN</p>
		<ol>
		<li><input type="text" class="login_input" placeholder="아이디를 입력하세요"></li>
		<li><input type="password" class="login_input" placeholder="패스워드를 입력하세요"></li>
		<li><label><input type="checkbox" class="login_check"> 자동로그인</label></li>
		<li><input type="submit" value="로그인" class="login_btn"></li>
		<li class="login_info">
		<span onclick="page_location(1)">아이디 찾기</span>
		<span onclick="page_location(2)">회원가입</span>
		</li>
		</ol>
	</div>
</aside>

</form>

<script>
window.onload = function(){
	var user = "<%=name%>";
	var li = document.getElementById("userhtml");
	if(user != "") {
		li.getAttribute("onclick","");
		li.innerHTML = user + "님" + "<a href='./logout.jsp'>[로그아웃]</a>";
		li.style.width = "40%";
	}
}
</script>


