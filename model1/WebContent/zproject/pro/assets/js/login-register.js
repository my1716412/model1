/*
 *
 * login-register modal
 * Autor: Creative Tim
 * Web-autor: creative.tim
 * Web script: http://creative-tim.com
 * 
 */
function showRegisterForm(){
    $(' .loginBox, .findIdBox, .findPwBox').fadeOut('fast',function(){
        $('.registerBox').fadeIn('fast');
        $('.login-footer, .findid-footer, .findpw-footer').fadeOut('fast',function(){
            $('.register-footer').fadeIn('fast');
        });
        $('.modal-title').html('회원가입');
    }); 
    $('.error').removeClass('alert alert-danger').html('');
       
}
function showFindIdForm(){
	$(' .loginBox, .registerBox, .findPwBox').fadeOut('fast',function(){
		$('.findIdBox').fadeIn('fast');
		$('.login-footer, .register-footer, .findpw-footer').fadeOut('fast',function(){
			$('.findid-footer').fadeIn('fast');
		});
		$('.modal-title').html('아이디찾기');
	}); 
	$('.error').removeClass('alert alert-danger').html('');
	
}
function showFindPwForm(){
	$(' .loginBox, .registerBox, .findIdPw').fadeOut('fast',function(){
		$('.findPwBox').fadeIn('fast');
		$('.login-footer, .register-footer, .findid-footer').fadeOut('fast',function(){
			$('.findpw-footer').fadeIn('fast');
		});
		$('.modal-title').html('비밀번호찾기');
	}); 
	$('.error').removeClass('alert alert-danger').html('');
	
}
function showLoginForm(){
    $('#loginModal .registerBox, .findIdBox, .findPwBox').fadeOut('fast',function(){
        $('.loginBox').fadeIn('fast');
        $('.register-footer, .findid-footer, .findpw-footer').fadeOut('fast',function(){
            $('.login-footer').fadeIn('fast');    
        });
        
        $('.modal-title').html('로그인');
    });       
     $('.error').removeClass('alert alert-danger').html(''); 
}

function openLoginModal(){
    showLoginForm();
    setTimeout(function(){
        $('#loginModal').modal('show');    
    }, 230);
    
}
function openRegisterModal(){
    showRegisterForm();
    setTimeout(function(){
        $('#loginModal').modal('show');    
    }, 230);
    
}

function loginAjax(){
    /*   Remove this comments when moving to server
    $.post( "/login", function( data ) {
            if(data == 1){
                window.location.replace("/home");            
            } else {
                 shakeModal(); 
            }
        });
    */

/*   Simulate error message from the server   */
     shakeModal();
}

function shakeModal(){
    $('#loginModal .modal-dialog').addClass('shake');
             $('.error').addClass('alert alert-danger').html("Invalid id/password combination");
             $('input[type="password"]').val('');
             setTimeout( function(){ 
                $('#loginModal .modal-dialog').removeClass('shake'); 
    }, 1000 ); 
}

   