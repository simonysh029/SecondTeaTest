<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<section class="subpage">
    <div class="member_agree">
    <p>회원 기본 정보입력</p>
    <ol class="join_ol">
    

    
    <li><input type="text" class="join_input1" placeholder="아이디 (영문/숫자 6~16자리)" maxlength="16"></li>
    <li><input type="text" class="join_input1" placeholder="이름 (홍길동)" maxlength="10"></li>
    <li><input type="password" class="join_input1" placeholder="비밀번호 (영문/숫자 6~12자리)" maxlength="12"></li>
    <li><input type="password" class="join_input1" placeholder="동일한 패스워드를 입력하세요" maxlength="12"></li>
    <li><input type="email" class="join_input1" placeholder="이메일을 입력하세요" maxlength="35"></li>
    <li><input type="tel" class="join_input1" placeholder="연락처 ('-'는 미입력)" maxlength="11"></li>
    
    
    
    <li class="security">
    보안코드 : <input type="text" class="join_input2 bgcolor" maxlength="6" readonly="readonly">
    <input type="number" class="join_input2" placeholder="보안코드 6자리 입력" maxlength="6">
    </li>
    
    </ol>
    
    <script>
    function join() {
    	var mid = document.getElementById("mid")
    	var mname = document.getElementById("mname")
    	var mpassword = document.getElementById("mpassword")
    	var mpassword2 = document.getElementById("mpassword2")
    	var memail = document.getElementById("memail")
    	var mtel = document.getElementById("mtel")


    	if (mid.value == "" && mname.value == "" && mpassword.value == "" && mpassword2.value == "" && memail.value == "" && mtel.value == "") {
    		alert("필수값확인요망")
    	} else if (mtel.value.lentgh < 10) {
    		alert("error tel")
    	} else if (isNaN(mtel.value) == true) {
    		alret("error tel")
    	} else if (memail.value.indexOf("@") == -1) {
    		alert("mail error")
    	} else if (mpassword.value != mpassword2.value) {
    		alert("password error")
    	}
    	else {
    		f.submit();
    	}
    }
    </script>
    
    
    <div class="member_agreebtn" onclick="">회원가입</div>
    
    <script><form action="./joinok.do" method="post" id="f" enctype="multipart/form-data"></script>
    
    </div>
</section>