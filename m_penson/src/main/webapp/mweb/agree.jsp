<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <script src="./js/m_index.js"></script>
<section class="subpage">
    <div class="member_agree">
    <p>회원가입 약관동의</p>
    <ol class="agree_ol">
    <li><label><input type="checkbox" class="ckbox" id="a1" onclick="abc()"> 이용약관의 동의</label><span class="agree_info">[자세히 보기]</span></li>
    <li><label><input type="checkbox" class="ckbox" id="a2" onclick="abc()"> 개인정보 수집의 동의</label><span class="agree_info">[자세히 보기]</span></li>
    <li><label><input type="checkbox" class="ckbox" id="a3" onclick="abc()"> 개인정보 제3자 제공 동의</label><span class="agree_info">[자세히 보기]</span></li>
    <li><label><input type="checkbox" class="ckbox" id="a4" onclick="abc()"> 개인정보 위탁제공 동의</label><span class="agree_info">[자세히 보기]</span></li>
    <li><label><input type="checkbox" class="ckbox" id="a5" onclick="abc()"> 마케팅 활용 동의 (선택)</label><span class="agree_info">[자세히 보기]</span></li>
    <li><label><input type="checkbox" class="ckbox" id="all" onclick="aaa()"> 위 약관에 모두 동의 합니다.</label></li>
    </ol>
    <script>
	function abc() {
		var aa = document.getElementById("all")
		var w = 1;
		var check = true;
		do {
			if (document.getElementById("a" + w).checked == false) {
				check = false;
			}
			w++
		} while (w <= 5)
		if (check == false) {
			aa.checked = false;
		} else {
			aa.checked = true
		}
		total.innerText
	}
    function aaa(e) {
		var w = 1;
		while (w <= 5) {
			document.getElementById("a" + w).checked = e;
			w++
		}
	}
	</script>
    

    
    <div class="member_agreebtn" onclick="<%@ include file="./copy.jsp" %>">기본정보 등록하기</div>
    </div>
</section>