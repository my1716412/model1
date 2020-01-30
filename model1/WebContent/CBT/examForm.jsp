<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>시험지등록</title>
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
	height: 600px;
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
<form id="frm" name="frm" action="examSubmit.do">
	<div id="webView" data-canvas="true" data-show-memo="false" data-show-link="false">
		<!-- 타이틀 -->
		<div data-obj-id="OMDgV" data-obj-type="element"
			data-text-editable="true" class=""
			style="position: absolute; top: 62px; left: 76px; width: 300px; height: 36px;">
			<div data-text-content="true"
				style="font-weight: bold; font-size: 24px" class=""
				spellcheck="false">시험지 등록</div>
		</div>
		<!-- 시험명 -->
		<div data-obj-id="ZuWYK" data-obj-type="element"
			data-text-editable="true" class=""
			style="position: absolute; top: 142px; left: 93.9844px; width: 74px; height: 20px;">
			<div data-text-content="true" style="font-size: 16px;" class="">시험명</div>
		</div>
		<div data-obj-id="QHYKP" data-obj-type="element"
			data-text-editable="true" class=""
			style="position: absolute; top: 133px; left: 168px; width: 530px; height: 40px;">
			<input type="text" id="examNm" name="examNm" data-min-width="60" data-min-height="30"
				data-text-content="true" value=""
				style="color: rgb(94, 94, 94);" spellcheck="false" class="">
		</div>
		<!-- 문항수 -->
		<div data-obj-id="LGY50" data-obj-type="element"
			data-text-editable="true" class=""
			style="position: absolute; top: 200.82px; left: 93.9844px; width: 74px; height: 20px;">
			<div data-text-content="true" style="font-size: 16px;" class=""
				spellcheck="false">문항 수</div>
		</div>
		<div data-obj-id="jXt9D" data-obj-type="element"
			data-text-editable="true" class=""
			style="position: absolute; top: 192px; left: 168px; width: 176px; height: 40px;">
			<input type="text" id="questCnt" name="questCnt" data-min-width="60" data-min-height="30"
				data-text-content="true" value="" style="color: rgb(94, 94, 94);"
				class="">
		</div>
		<!-- 시험시간 -->
		<div data-obj-id="tlVT1" data-obj-type="element"
			data-text-editable="true" class=""
			style="position: absolute; top: 202.008px; left: 450px; width: 74px; height: 20px;">
			<div data-text-content="true" style="font-size: 16px;" class="">시험시간</div>
		</div>
		<div data-obj-id="8YamL" data-obj-type="element"
			data-text-editable="true" class=""
			style="position: absolute; top: 193.516px; left: 520px; width: 176px; height: 40px;">
			<input type="text" id="examTime" name="examTime" data-min-width="60" data-min-height="30"
				data-text-content="true" value="" style="color: rgb(94, 94, 94);"
				class="">
		</div>
		<!-- 시험종목 -->
		<div data-obj-id="2vNgq" data-obj-type="element"
			data-text-editable="true" class=""
			style="position: absolute; top: 256px; left: 93.9844px; width: 74px; height: 20px;">
			<div data-text-content="true" style="font-size: 16px;" class="">시험종목</div>
		</div>
		<div data-obj-id="pMR58" data-obj-type="element"
			data-text-editable="true" class=""
			style="position: absolute; top: 251px; left: 168px; width: 173px; height: 40px;">
			<select id="questGroup" name="questGroup" style="width: 200px; height: 40px;">
				<option value="001">데이터베이스</option>
				<option value="002">자바</option>
				<option value="003">오라클</option>
			</select>
			</div>
		<div data-obj-id="3JBtB" data-obj-type="element"
			data-text-editable="true" class=""
			style="position: absolute; top: 321px; left: 93.9844px; width: 74px; height: 20px;">
			<div data-text-content="true" style="font-size: 16px;" class=""
				spellcheck="false">상세정보</div>
		</div>
		<div data-obj-id="mbPyp" data-obj-type="element"
			data-text-editable="true" class=""
			style="position: absolute; top: 311px; left: 168px; width: 747px; height: 86px;">
			<input type="text" id="examDesc" name="examDesc" data-min-width="60" data-min-height="30"
				data-text-content="true" value=""
				style="color: rgb(94, 94, 94);" class="">
		</div>

		<div data-obj-id="pSlDj" data-obj-type="element"
			data-text-editable="true" class=""
			style="position: absolute; top: 439px; left: 92.9961px; width: 74px; height: 20px;">
			<div data-text-content="true" style="font-size: 16px;" class="">출제유형</div>
		</div>

		<div data-obj-type="group" data-obj-id="klAi7" class=""
			style="position: absolute; left: 165px; top: 436px; width: 118px; height: 20px;">
			<input type="radio" id="examType" name="examType" value="R"/> 랜덤출제	
		</div>
		<div data-obj-type="group" data-obj-id="TQGba" class=""
			style="position: absolute; left: 295px; top: 438.988px; width: 111.016px; height: 20px;">
			<input type="radio" id="examType" name="examType" value="A"/> 고정출제	
		</div>
		
		<!-- 하단 버튼 -->
		<div data-obj-id="I9mpS" data-obj-type="element" onclick="document.frm.submit();"
			data-text-editable="true" class=""
			style="position: absolute; top: 526px; left: 414px; width: 74px; height: 45px;"
			data-link-to="page:5pVl6">
			<div data-text-content="true" 
				style="font-size: 16px; color: rgb(255, 255, 255); text-align: center; line-height: 2.5em; border-top-left-radius: 4px; border-top-right-radius: 4px; border-bottom-right-radius: 4px; border-bottom-left-radius: 4px; background-color: rgb(52, 152, 219);"
				class="">등록</div>
		</div>
		<div data-obj-id="aNtQM" data-obj-type="element"
			data-text-editable="true" class=""
			style="position: absolute; top: 528px; left: 504px; width: 75px; height: 45px;"
			data-link-to="page:5pVl6">
			<div data-text-content="true"
				style="font-size: 16px; color: rgb(255, 255, 255); text-align: center; line-height: 2.5em; border-radius: 4px; background-color: rgb(241, 196, 15);"
				class="">목록</div>
		</div>		
	</div>
</form>
</body>
</html>