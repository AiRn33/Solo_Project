		

		<!-- 빈칸 체크 및 회원가입 동의 여부 확인 -->
	    
			$('#passwordCheck').focusout(function(){
				
				var pwd1 = $('#password').val();
				var pwd2 = $('#passwordCheck').val();

				if(pwd1 == pwd2){
					$('#passwordCheckBar').hide();
					$('#passwordCheckBarTrue').show();
					$('#passwordCheckBarFalse').hide();
				}else{		
					$('#passwordCheckBar').hide();
					$('#passwordCheckBarFalse').show();
					$('#passwordCheckBarTrue').hide();
				}
			})
			
			$('#password').focusout(function(){
				
				var pwd1 = $('#password').val();
				var pwd2 = $('#passwordCheck').val();

				if(pwd1 == pwd2){
					$('#passwordCheckBar').hide();
					$('#passwordCheckBarTrue').show();
					$('#passwordCheckBarFalse').hide();
				}else{		
					$('#passwordCheckBar').hide();
					$('#passwordCheckBarFalse').show();
					$('#passwordCheckBarTrue').hide();
				}
			})
			
			
		<!-- ----------------------------------------------------------------------------- -->
		
		<!-- 빈칸 체크 -->
			
			
			function formCheck(){
				
				var name = $('#name').val().trim();
				var email = $('#email').val().trim();
				var password = $('#password').val().trim();
				var passwordCheck = $('#passwordCheck').val().trim();
				var emailCheckVal = $('#emailCheckVal').val();
				var phone = $('#phone').val().trim();
				var reg = /^[a-zA-Z0-9]{8,15}$/;
				var chk_num = password.search(/[0-9]/g);
   				var chk_eng = password.search(/[a-z]/ig);
				
				if(name == ''){
					alert('이름을 입력해 주세요');
					$('#name').focus();
					return false;
				}else if(email == ''){
					alert('이메일을 입력해주세요');
					$('#email').focus();
					return false;
				}else if(password == ''){
					alert('비밀번호를 입력해주세요');
					$('#password').focus();
					return false;
				}else if(passwordCheck == ''){
					alert('비밀번호 확인 칸을 입력해주세요');
					$('#passwordCheck').focus();
					return false;
				}else if(phone == ''){
					alert('휴대폰 번호를 입력해 주세요');
					$('#phone').focus();
					return false;
				}else if(password != passwordCheck){
					alert('비밀번호가 일치 하지 않습니다');
					$('#password').focus();
					return false;
				}else if(emailCheckVal == '0'){
					alert('이메일 중복체크를 해주세요');
					$('#emailCheck').focus();
					return false;
				}else if(!reg.test(password)){

					if(password.length < 8){
						alert('비밀번호가 8자리 미만입니다');
						$('#password').focus();
						return false;
					}else if(password.length > 15){
						alert('비밀번호가 15자리를 초과하였습니다');
						$('#password').focus();
						return false;
					}
	 			}
	 			
			}
		
		<!-- ----------------------------------------------------------------------------- -->
		
		<!-- 아이디 중복체크 -->
			
	 		function email_check(){
				
				var email = $('#email').val().trim();
				
				if(email == ''){
					alert('이메일을 입력해주세요');
					$('#email').focus();
				}else{
					
					$.ajax({
					    type : "POST",
					    url : "/member/idCheck", 
					    data : $('form').serialize(),
					    success : function(num) {
							
							if(num == 1){
								$('#email').val('');
								$('#emailCheckBarTrue').hide();
								$('#emailReset').hide();
								$('#emailCheckBarFalse').show();
								
							}else{
								$('#emailCheckBarFalse').hide();
								$('#emailCheckBarTrue').show();
								$('#emailReset').show();
								$('#emailCheckVal').val(1);
								$('#email').prop("readonly",true);						
							}
					    },
					    error : function(error) {
							alert("실패")
					    }
					});
				}
			}
			
	 		function email_reset(){
	 			$('#email').prop("readonly",false);						
	 			$('#emailCheckBarTrue').hide();
	 			$('#emailCheckBarFalse').hide();
	 			$('#emailReset').hide();
				$('#emailCheckVal').val(0);
	 		}
			


			
		