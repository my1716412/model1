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
			
			function createKakaotalkLoginForm(){
				$("#kakao-logged-group .kakao-logout-btn,#kakao-logged-group .kakao-login-btn").remove();
				
				var loginBtn = $("<img/>",{"class":"kakao-login-btn","src":"//mud-kage.kakao.com/14/dn/btqbjxsO6vP/KPiGpdnsubSq3a0PHEGUK1/o.jpg"});
				loginBtn.click(function(){
					Kakao.Auth.loginForm({
						
						// 세션이 종료된 이후에도 토큰을 유지.
						persistAccessToken: true,
						// 세션이 종료된 이후에도 refresh토큰을 유지.
						persistRefreshToken: true,
						
						
						success: function(authObj) {
							// 토큰 저장 ajax
							
							var acs_token = authObj.access_token;
							var rfs_token = authObj.refresh_token;
							
							/* 						
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
							createKakaotalkLogout();	
							getKakaotalkUserProfile();
							/* Kakao.Auth.setAccessToken(accessTokenFromServer); */
							/*  Kakao.Auth.setAccessToken(authObj.access_token); */
						},
						fail: function(err) {
							console.log(err);
						}
					});
				});
				
				$("#kakao-logged-group").prepend(loginBtn)
			}
		
			function getKakaotalkUserProfile(){
				Kakao.API.request({
					url: '/v1/user/me',
					success: function(res) {
						console.log(res);
							
								$.ajax({
										
									type:"POST",
									url:"/memberJoinOK",
									headers:{
										"Content-Type" : "application/json; charset=utf-8",
										"X-HTTP-Method-Override" : "POST"
									},
									dataType: "text",
									
									data: JSON.stringify({
										kakaoid			: res.id,				
										kakaoemail		: res.kaccount_email,
										kakaonickname	: res.properties.nickname
										
										
									}),
								    success:function(result){
								    	 location.href="../model1/index.jsp";
								    	console.log(result);
								         console.log("로그인");
								        
								         
								    },
								    error:function(data){
								    	  console.log(data);
								    	console.log("로그인안됨");
								    }
								});
						
				 		$("#kakao-profile").append(res.properties.nickname);
				 		$("#kakao-profile").append($("<img/>",{"src":res.properties.profile_image,
				 			"alt":res.properties.nickname+"님의 프로필 사진"}));
				 		$("#kakao-profile").append(res.kaccount_email);
				 		$("#kakao-profile").append(res.id);
				 		
				 		//이름, 아이디, 생년월일, 전화번호, 성별
					},
					fail: function(error) {
						
						console.log(error);
					}
				});
			}

			//로그아웃 시작
			function createKakaotalkLogout(){
			$("#kakao-logged-group .kakao-logout-btn,#kakao-logged-group .kakao-login-btn").remove();
				var logoutBtn = $("<img/>",{"class":"kakao-login-btn","src":"../img/logo.png"});
				
				logoutBtn.click(function(){
					Kakao.Auth.logout(function(data){
					});
					createKakaotalkLoginForm();
					$("#kakao-profile").text("");
				});
				$("#kakao-logged-group2").prepend(logoutBtn);
			}
			//로그아웃 끝

			
			
			if((Kakao.Auth.getRefreshToken()!=undefined)&&(Kakao.Auth.getRefreshToken().replace(/ /gi,"")!="")){
				createKakaotalkLogout();
				getKakaotalkUserProfile();
				/* createKakaotalkLoginForm(); */
			}else{
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