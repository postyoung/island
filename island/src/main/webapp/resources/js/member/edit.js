    //비밀번호 정규식
    $(document).ready(function() {
        $('#pwd').on('input', function() {
          const password = $(this).val();
          //최소 8 자, 대문자 하나 이상, 소문자 하나, 숫자 하나 및 특수 문자 하나 이상 :
          const regex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,}$/;
    
          if (regex.test(password)) {
            $(this).removeClass('is-invalid').addClass('is-valid');
            $('#validationFeedback_Pwd').hide();
          } else {
            $(this).removeClass('is-valid').addClass('is-invalid');
            $('#validationFeedback_Pwd').show();
          }
          
        });
      });
      
        // 비밀번호 확인 검사
        $('#pwd2').on('input', function() {
          const password2 = $(this).val();
          const password1 = $('#pwd').val();
      
          if (password2 === password1) {
            $(this).removeClass('form-control is-invalid').addClass('form-control is-valid');
          } else {
            $(this).removeClass('form-control is-valid').addClass('form-control is-invalid');
          }
        });