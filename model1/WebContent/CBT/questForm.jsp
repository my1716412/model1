<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>문제등록</title>
<meta name="apple-mobile-web-app-capable" content="yes">
<meta name="mobile-web-app-capable" content="yes">
<style>
body {
	margin: 0;
	padding: 0;
}

#webView {
	overflow: hidden;
	position: relative;
	background: #FFFFFF;
	width: 1200px;
	height: 681px;
	margin: 0 auto;
	-webkit-transform: translate3d(0, 0, 0);
	transform: translate3d(0, 0, 0)
}

#webView[data-show-memo='true'] {
	overflow: visible
}

input[type=radio]{
	font-size: 12px;width: 20px; height: 20px;
}
</style>
<!-- 스타일시트 link -->
<link href="./css/view.css" rel="stylesheet" type="text/css">	
</head>
<body>
<form id="frm" name="frm" action="questSubmit.do">
	<div id="webView" data-canvas="true" data-show-memo="false"	data-show-link="false">
		<!-- 타이틀 -->
		<div data-obj-id="Teryu" data-obj-type="element"
			data-text-editable="true" class=""
			style="position: absolute; top: 62px; left: 76px; width: 300px; height: 36px;">
			<div data-text-content="true"
				style="font-weight: bold; font-size: 24px" class=""
				spellcheck="false">문제 등록</div>
		</div>
		<!-- 종목 -->
		<div data-obj-id="emH0u" data-obj-type="element"
			data-text-editable="true" class=""
			style="position: absolute; top: 117px; left: 93.9453px; width: 74px; height: 20px;">
			<div data-text-content="true" style="font-size: 16px;" class="">종목</div>
		</div>
		<div data-obj-id="Nw989" data-obj-type="element"
			data-text-editable="true" class=""
			style="position: absolute; top: 110px; left: 170.473px; width: 150px; height: 40px;">
			<select id="questType" name="questType" style="width: 200px; height: 40px;">
				<option value="001">데이터베이스</option>
				<option value="002">자바</option>
				<option value="003">오라클</option>
			</select>
		</div>

		<!-- 문제 -->
		<div data-obj-id="VWvn5" data-obj-type="element"
			data-text-editable="true" class=""
			style="position: absolute; top: 173.871px; left: 93.9453px; width: 74px; height: 20px;">
			<div data-text-content="true" style="font-size: 16px;" class="">문제</div>
		</div>
		<div data-obj-id="EtYEc" data-obj-type="element"
			data-text-editable="true" class=""
			style="position: absolute; top: 166px; left: 168.492px; width: 747px; height: 86px;">
			<input type="text" id="questContent" name="questContent" data-min-width="60" data-min-height="30"
				data-text-content="true" value="" style="color: rgb(94, 94, 94);"
				class="">
		</div>
		<!-- 보기1 -->
		<div data-obj-id="5twYl" data-obj-type="element"
			data-text-editable="true" class=""
			style="position: absolute; top: 275.922px; left: 93.9453px; width: 74px; height: 20px;">
			<div data-text-content="true" style="font-size: 16px;" class="">보기1</div>
		</div>
		<div data-obj-id="iWMrC" data-obj-type="element"
			data-text-editable="true" class=""
			style="position: absolute; top: 265.922px; left: 167.48px; width: 745px; height: 40px;">
			<input type="text" id="answer1" name="answer1" data-min-width="60" data-min-height="30"
				data-text-content="true" value=""
				style="color: rgb(94, 94, 94);" spellcheck="false" class="">
		</div>
		<!-- 보기2 -->
		<div data-obj-id="2Av1N" data-obj-type="element"
			data-text-editable="true" class=""
			style="position: absolute; top: 325.922px; left: 93.9453px; width: 74px; height: 20px;">
			<div data-text-content="true" style="font-size: 16px;" class="">보기2</div>
		</div>
		<div data-obj-id="tyJYJ" data-obj-type="element"
			data-text-editable="true" class=""
			style="position: absolute; top: 315.922px; left: 169.453px; width: 745px; height: 40px;">
			<input type="text" id="answer2" name="answer2" data-min-width="60" data-min-height="30"
				data-text-content="true" value=""
				style="color: rgb(94, 94, 94);" spellcheck="false" class="">
		</div>
		<!-- 보기3 -->
		<div data-obj-id="j8p3j" data-obj-type="element"
			data-text-editable="true" class=""
			style="position: absolute; top: 377.914px; left: 93.9453px; width: 74px; height: 20px;">
			<div data-text-content="true" style="font-size: 16px;" class="">보기3</div>
		</div>
		<div data-obj-id="FbB7w" data-obj-type="element"
			data-text-editable="true" class=""
			style="position: absolute; top: 368.91px; left: 170.469px; width: 745px; height: 40px;">
			<input type="text" id="answer3" name="answer3" data-min-width="60" data-min-height="30"
				data-text-content="true" value=""
				style="color: rgb(94, 94, 94);" spellcheck="false" class="">
		</div>
		<!-- 보기4 -->
		<div data-obj-id="rrr8n" data-obj-type="element"
			data-text-editable="true" class=""
			style="position: absolute; top: 427.914px; left: 93.9453px; width: 74px; height: 20px;">
			<div data-text-content="true" style="font-size: 16px;" class="">보기4</div>
		</div>
		<div data-obj-id="ui2mg" data-obj-type="element"
			data-text-editable="true" class=""
			style="position: absolute; top: 418.91px; left: 170.469px; width: 745px; height: 40px;">
			<input type="text" id="answer4" name="answer4" data-min-width="60" data-min-height="30"
				data-text-content="true" value=""
				style="color: rgb(94, 94, 94);" spellcheck="false" class="">
		</div>

		<!-- 해설 -->
		<div data-obj-id="6HlQz" data-obj-type="element"
			data-text-editable="true" class=""
			style="position: absolute; top: 486.738px; left: 90.8789px; width: 74px; height: 20px;">
			<div data-text-content="true" style="font-size: 16px;" class="">해설</div>
		</div>
		<div data-obj-id="0iKcD" data-obj-type="element"
			data-text-editable="true" class=""
			style="position: absolute; top: 478px; left: 167px; width: 745px; height: 85px;">
			<input type="text" id="explain" name="explain" data-min-width="60" data-min-height="30"
				data-text-content="true" value=""
				style="color: rgb(94, 94, 94);" spellcheck="false" class="">
		</div>
		
		<!-- 정답 -->
		<div data-obj-id="7i2VH" data-obj-type="element"
			data-text-editable="true" class=""
			style="position: absolute; top: 578px; left: 93px; width: 74px; height: 20px;">
			<div data-text-content="true" style="font-size: 16px;" class=""
				spellcheck="false">정답</div>
		</div>
		<div data-obj-type="group" data-obj-id="M443e" class=""
			style="position: absolute; left: 167.207px; top: 577px; width: 47px; height: 21px;">
			<div style="position: fixed;">
			<input type="radio" id="rightAnswer" name="rightAnswer" value="1"> 1 <input type="radio" id="rightAnswer" name="rightAnswer" value="2"> 2 <input type="radio" id="rightAnswer" name="rightAnswer" value="3"> 3 <input type="radio" id="rightAnswer" name="rightAnswer" value="4"> 4
			</div>
		</div>
		
		<!-- 하단 버튼 -->
		<div data-obj-id="nZ66v" data-obj-type="element" onclick="document.frm.submit();"
			data-text-editable="true" class=""
			style="position: absolute; top: 598.793px; left: 439.883px; width: 74px; height: 44px;"
			data-link-to="page:5pVl6">
			<div data-text-content="true"
				style="font-size: 16px; color: rgb(255, 255, 255); text-align: center; line-height: 2.5em; border-top-left-radius: 4px; border-top-right-radius: 4px; border-bottom-right-radius: 4px; border-bottom-left-radius: 4px; background-color: rgb(52, 152, 219);"
				class="">등록</div>
		</div>
		<div data-obj-id="w6cuH" data-obj-type="element"
			data-text-editable="true" class=""
			style="position: absolute; top: 601px; left: 530px; width: 75px; height: 45px;"
			data-link-to="page:5pVl6">
			<div data-text-content="true"
				style="font-size: 16px; color: rgb(255, 255, 255); text-align: center; line-height: 2.5em; border-radius: 4px; background-color: rgb(241, 196, 15);"
				class="">목록</div>
		</div>		
	</div>
</form>
</body>
</html>