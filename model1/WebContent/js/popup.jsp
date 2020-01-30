<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	window.addEventListener("load", function() {
		document.addEventListener("click", function(e) {
			if (e.target.tagName == 'SPAN') {
				e.preventDefault();
				console.dir(e.target);
				//console.dir(this);
				var src = e.target.parentNode;
				var addrs = src.getElementsByTagName("span");
				console.log(addrs[0].innerHTML)
				console.log(addrs[1].innerHTML)
				var param = {addr1 : addrs[0].innerHTML,
							 addr2 : addrs[1].innerHTML};
				//console.log(e.target.innerHTML)
				//opener.frm.addr.value = e.target.innerHTML;
				opener.setAddr(param);
				//window.close();
			}
		});
	});
</script>
</head>
<body>
	<a href="#"><span>대구</span><span>중구</span></a>
	<a href="#"><span>서울</span><span>강남구</span></a>
	<a href="#"><span>부산</span><span>연산구</span></a>
</body>
</html>