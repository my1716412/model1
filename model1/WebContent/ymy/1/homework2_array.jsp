<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>homework2_array.jsp</title>
<script>
	let txtArr = [];
	window.onload = function(){
		btnAdd.addEventListener("click",funcAdd)
		btnDelete.addEventListener("click",funcDelete)
		btnSearch.addEventListener("click",funcSearch)
	}
	function funcAdd(){
		//배열에 추가하고 배열을 div에 출력
		var str = document.getElementById("txtFruit").value;
		txtArr[txtArr.length] = str;
		document.getElementById("result").innerHTML = txtArr;
		document.getElementById("txtFruit").value = "";
	}
	function funcDelete(){
		//배열에서 삭제하고 배열을 div에 출력
		var str = document.getElementById("txtFruit").value;
		for(var i=0; i<txtArr.length; i++){
			if(txtArr[i] == str){
				const idx = txtArr.indexOf(str);
				if(idx > -1){
					txtArr.splice(idx, 1);
				}
			}
		}
		document.getElementById("result").innerHTML = txtArr;
		document.getElementById("txtFruit").value = "";		
	}	
	function funcSearch(){
		//배열에서 검색해서 검색위치를 div출력
		var str = document.getElementById("txtFruit").value;
		const idx = txtArr.indexOf(str);
		document.getElementById("result").innerHTML = idx + "번째 위치";
	}		
</script>
</head>
<body>
<input type="text" id="txtFruit">
<button type="button" id="btnAdd">추가</button>
<button type="button" id="btnDelete">삭제</button>
<button type="button" id="btnSearch">검색</button>
<div id="result"></div>
</body>
</html>