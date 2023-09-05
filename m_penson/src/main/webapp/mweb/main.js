let data;
let array;

	function calldata(data) {
		this.array = data;
		
	}
	function abc() {
		this.array["person_product"].sort(function(a, b){
			
		});
		function win() { // 통신 규약에 대한 인스턴스를 생성
		if (window.XMLHttpRequest) {
			return new XMLHttpRequest();
		}
	}
	function file() { //서버 접속 성공 유무를 확인, 해당 로드할 파일이 정삭적으로 로드가 되었는지 확인하는 공간
		if (data.readyState == XMLHttpRequest.DONE && data.status == 200) {
			array = JSON.parse(this.response); //JSON 파일은 기본이 문자열, 해당 문자열을 정상적인 배열로 변환시키는 메서드 -> JSON.parse() response:결과값 반환
			console.log(array);
		} else if (data.status == 404 || data.status == 405) {
			console.log("해당 파일 및 서버에 접속 불가능");
		}
	}
		
	var a;
	var b;
	
	for(a in this.array["person_product"]) {
		for(b in this.array["person_product"][a]) {
			array.c=this.array["person_product"][a][b]
		}
	}
	
	data = win(); //통신오픈
	data.onreadystatechange = file;
	data.open("get", "./data.json", true);
	data.send(); //해당 서버에 접속 및 실행

}


//function htmlview() {
//var htmlcode = "";
//var ids = document.getElementById("product");
//var img = "./img/hotel_01.jpg";
//htmlcode +=
//}
//ids.innerHTML = htmlcode;
//htmlview();