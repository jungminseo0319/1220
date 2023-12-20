<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<!-- <button onclick="reqpage('insertform')">전화번호 입력 </button> --> 

<!--  <button onclick="reqpage('update')">update page 요청</button>
<button onclick="reqpage('delete')">delete page 요청</button> -->

<jsp:include page="/WEB-INF/insertform.jsp"/>
<fieldset>
<legend>목록리스트</legend>
검색:<input type="text" name="key" id="key" onkeyup="search(this)">
<div id="list" style="height:250px; overflow: scroll; overflow;-x:hidden;"></div>
</fieldset>

<fieldset>
<legend>상세보기</legend>
<div id="view"></div>
</fieldset>

<script>
reqpage('list', 'list');  //url주소, div 위치 지정
function search(obj){
	var key=obj.value;
	fetch ('/searchlist?key='+key)
	.then(obj => obj.text())
	.then(text => 
	document.querySelector("#list").innerHTML=text
			)	
}           

function reqpage(page, area) {
fetch ('/'+page)
.then(obj => obj.text())
.then(text => 
document.querySelector("#"+area).innerHTML=text
		)
	}

</script>
</body>
</html>