<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
검색:<input type="text" name="key" id="key" onkeyup="search(this)">
<button onclick="reqpage('insertform')">전화번호 입력 </button>
<button onclick="reqpage('list')">전화번호부 전체출력</button>
<!--  <button onclick="reqpage('update')">update page 요청</button>
<button onclick="reqpage('delete')">delete page 요청</button> -->

<div></div>


<script>
function search(obj){
	var key=obj.value;
	fetch ('/searchlist?key='+key)
	.then(obj => obj.text())
	.then(text => 
	document.querySelector("div").innerHTML=text
			)	
}

function reqpage(page) {
fetch ('/'+page)
.then(obj => obj.text())
.then(text => 
document.querySelector("div").innerHTML=text
		)
	}

</script>
</body>
</html>