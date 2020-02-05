<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="viewport" content="user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, width=device-width" />
<title>Custom Login Demo - Kakao JavaScript SDK</title>
<script src="//developers.kakao.com/sdk/js/kakao.min.js"></script>
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<script>
		
		$(document).ready(function(){
			var check = 0;
			Kakao.init('7e0b8541f6b3c291e6ba7d98c0f53a37');
		/* 	var refreshToken = Kakao.Auth.getRefreshToken(); */
			
			//카카오로그인폼(createKakaotalkLoginForm) 함수 정의
			function createKakaotalkLoginForm(){
				//kakao-logged-group2 div 안의 class 가 kakao-logout-btn 을 찾아 제거
				//kakao-logged-group div 안의 class 가 kakao-login-btn 을 찾아 제거
				$("#kakao-logged-group2 .kakao-logout-btn,#kakao-logged-group .kakao-login-btn").remove();

				//img src=/mud-kage.kakao.com/14/dn/btqbjxsO6vP/KPiGpdnsubSq3a0PHEGUK1/o.jpg object생성
				var loginBtn = $("<img/>",{"class":"kakao-login-btn","src":"//mud-kage.kakao.com/14/dn/btqbjxsO6vP/KPiGpdnsubSq3a0PHEGUK1/o.jpg"});
				//loginBtn click이벤트
				loginBtn.click(function(){
					//카카오 로그인폼 호출
					Kakao.Auth.loginForm({
						
						// 세션이 종료된 이후에도 토큰을 유지.
						persistAccessToken: true,
						// 세션이 종료된 이후에도 refresh토큰을 유지.
						persistRefreshToken: true,
						// 선택수집항목 설정
						scope: "account_email,birthday,gender",
						//카카오 로그인 성공
						success: function(authObj) {
							// 토큰 저장 ajax
							var acs_token = authObj.access_token;
							var rfs_token = authObj.refresh_token;
							
							/* 로그인 토큰 검사 (별도구현)						
							$.ajax({
									
								type:"GET",
								url:"/loginCheck/"+acs_token+"/"+rfs_token,
								dataType: "text",
								headers:{
									"Content-Type" : "application/json; charset=utf-8",
									"X-HTTP-Method-Override" : "POST"
								}, 
								data:JSON.stringify({
									access_token: acs_token,
									refresh_token: rfs_token
								}),
								
							    success:function(result){
							    	console.log(result);
							         console.log("세션전달");
							    },
							    error:function(data){
							    	  console.log(data);
							    	console.log("세션전달 실패");
							    }
							}); 
							*/
							// 토큰 저장
							check = 1;
							//createKakaotalkLogout 호출
							createKakaotalkLogout();	
							//getKakaotalkUserProfile 호출
							getKakaotalkUserProfile();
							/* Kakao.Auth.setAccessToken(authObj.access_token); */
						},
						//카카오 로그인 실패
						fail: function(err) {
							console.log(err);
						}
					});
				});
				
				//kakao-logged-group loginBtn 객체 삽입(로그인버튼 생성)
				$("#kakao-logged-group").prepend(loginBtn)
			}
		
			//카카오사용자프로필(getKakaotalkUserProfile) 함수 정의
			function getKakaotalkUserProfile(){
				//카카오 API호출
				Kakao.API.request({
					//사용자 정보 url호출
					url: '/v2/user/me',
					//카카오 API 호출 성공
					success: function(res) {
						console.log(res);
						//비동기통신 실행(ajax)
						$.ajax({
							type:"POST",
							url:"memberJoin.jsp", //memberJoin.jsp 호출(세션 처리 or 회원가입 처리)
							dataType: "json",
							data: { //ajax호출시 넘길 파라미터 셋팅
								kakaoid			: res.id,				
								kakaoemail		: res.kakao_account.email,
								kakaonickname	: res.properties.nickname,
								gender			: res.kakao_account.gender,
								birthday		: res.kakao_account.birthday
							},
							//비동기통신 호출 성공(ajax 호출성공)
						    success:function(result){
						    	 //location.href="../model1/index.jsp";
						    	console.log(result);
						         console.log("로그인");
						        
						         
						    },
						    //비동기통신 호출 실패(ajax 호출실패)
						    error:function(data){
						    	  console.log(data);
						    	console.log("로그인안됨");
						    }
						});
						//kakao-profile div에 해당 정보 출력
				 		$("#kakao-profile").append(res.properties.nickname);	//닉네임
				 		$("#kakao-profile").append($("<img/>",{"src":res.properties.profile_image,
				 			"alt":res.properties.nickname+"님의 프로필 사진"}));		//프로필사진
				 		$("#kakao-profile").append(res.kakao_account.email);	//이메일
				 		$("#kakao-profile").append(res.id);                     //아이디
				 		$("#kakao-profile").append(res.kakao_account.gender);   //성별
				 		$("#kakao-profile").append(res.kakao_account.birthday); //생일
				 		
					},
					//카카오 API 호출 실패
					fail: function(error) {
						console.log(error);
					}
				});
			}

			//로그아웃 시작
			function createKakaotalkLogout(){
			$("#kakao-logged-group2 .kakao-logout-btn,#kakao-logged-group .kakao-login-btn").remove();
				var logoutBtn = $("<img/>",{"class":"kakao-logout-btn","src":"../img/logo.png"});
				//logoutBtn 클릭 이벤트 생성
				logoutBtn.click(function(){
					//카카오 로그아웃 API호출
					Kakao.Auth.logout(function(data){

					});
					//createKakaotalkLoginForm 호출
					createKakaotalkLoginForm();
					//kakao-profile DIV 내용 삭제
					$("#kakao-profile").text("");
				});
				//kakao-logged-group2 DIV에 logoutBtn(로그아웃버튼) 생성
				$("#kakao-logged-group2").prepend(logoutBtn);
			}
			//로그아웃 끝
			
			//kakao토큰이 있을경우 실행
			if((Kakao.Auth.getAccessToken()!=undefined)&&(Kakao.Auth.getAccessToken().replace(/ /gi,"")!="")){
				createKakaotalkLogout();
				getKakaotalkUserProfile();
				/* createKakaotalkLoginForm(); */
			}else{
				//kakao토큰이 없으면 실행
				createKakaotalkLoginForm();
			}
		});// 페이지 끝
		

	</script>

</head>
<body>

	<div id="kakao-logged-group"></div>
	<div id="kakao-logged-group2"></div>
	<div id="kakao-profile"></div>
	
	

</body>
</html>