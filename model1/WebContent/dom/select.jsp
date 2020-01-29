<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	window.addEventListener("click", function() {
		btnR.addEventListener("click", function() {
			if (subject.selectedIndex > -1) {
				//선택 항목 오른쪽에 추가
				var opt = document.creaetElement("option");
				opt.text = subject.options[subject.selectedIndex].text;
				choose.add(opt);
				//선택 항목 삭제
				subject.remove(subject.selectedIndex);
			}
		});
		btnL.addEventListener("click", function() {
			if (subject.selectedIndex > -1) {
				var opt = document.creaetElement("option");
				opt1.text = subject.options[subject.selectedIndex].text;
				choose.add(opt1);
				//선택 항목 삭제
				subject.remove(subject.selectedIndex);
			}
		});

		//btnAll 버튼 이벤트
		btnAll.addEventListener("click", function() {
			var len = subject.length;
			for (i = len-1; i >=0; i--) {
				//선택항목 오른쪽에 추가
				var opt = document.creaetElement("option");
				opt.text = subject.options[i].text;
				choose.add(opt);
				//선택 항목 삭제
				subject.remove(i);
			}
		});
	});
</script>
</head>
<body>
	<select id="subject" multiple="multiple" size="5">
		<option value="java">자바
		<option value="jsp">JSP
		<option value="spring">스프링
	</select>
	<button type="button" type="btnR">▶</button>
	<button type="button" type="btnL">◀</button>
	<button type="button" type="btnAll">전체이동</button>
	<select id="choose" multiple="multiple" size="5"></select>
</body>
</html>