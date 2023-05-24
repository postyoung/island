$(document).ready(function() {
    // "전체동의" 체크박스를 클릭했을 때
    $("#all").click(function() {
      // 하위 체크박스들의 상태를 "전체동의" 체크박스와 동일하게 설정
      $("input[type='checkbox']").prop('checked', $(this).prop('checked'));
    });
  
    // 하위 체크박스들 중 하나라도 체크가 해제되면 "전체동의" 체크박스도 체크해제
    $("input[type='checkbox']").click(function() {
      if (!$(this).prop('checked')) {
        $("#all").prop('checked', false);
      }
    });
  });

  //유효성 검사
  //이름
  $(document).ready(function() {
    $('#name').on('input', function() {
      const name = $(this).val();
       //특수문자제외 2글자이상
      const regex = /^[a-zA-Z가-힣\s_]{2,}$/;
  
      if (regex.test(name)) {
        $(this).removeClass('form-control is-invalid').addClass('form-control is-valid');
      } else {
        $(this).removeClass('form-control is-valid').addClass('form-control is-invalid');
      }
    });
  });
  

  //아이디 정규식/유효성검사
  $(document).ready(function() {
    $('#id').on('input', function() {
      const id = $(this).val();
      //최소 2 자, 대문자,소문자,숫자,_만 사용가능
      const regex = /^[A-Za-z0-9_]{2,}$/;

      if (regex.test(id)) {
        $(this).removeClass('is-invalid').addClass('is-valid');
        $('#validationFeedback_Id').hide();
      } else {
        $(this).removeClass('is-valid').addClass('is-invalid');
        $('#validationFeedback_Id').show();
      }
      
    });
  });

  //닉네임
  $(document).ready(function() {
    $('#nick').on('input', function() {
      const nick = $(this).val();
      //1글자이상 자음,모음, 특수문자제외 
      const regex = /^[a-zA-Z0-9가-힣\s_]{1,}$/;
  
      if (regex.test(nick)) {
        $(this).removeClass('form-control is-invalid').addClass('form-control is-valid');
      } else {
        $(this).removeClass('form-control is-valid').addClass('form-control is-invalid');
      }
    });
  });
  
  //전화번호 숫자만 입력되게 정규식검사 및 경고창 보이게
  $(document).ready(function() {
    $('#phone').on('input', function() {
      const phonearea = document.querySelector("#validationFeedback_Phone");
      const phoneNumber = $(this).val();
      const regex = /^[0-9]{11}$/;

      if (regex.test(phoneNumber)) {
        $(this).removeClass('form-control is-invalid').addClass('form-control is-valid');
        phonearea.hidden = true; 
      } else {
        $(this).removeClass('form-control is-valid').addClass('form-control is-invalid');
        phonearea.hidden = false; 
      }
    });
  });




  // 이메일 주소 유효성 검사 함수
  function validateEmail(email) {
  //최소 2 자, 대문자,소문자,숫자,_만 사용가능
  const regex = /^[A-Za-z0-9_]{2,}$/;
    return regex.test(email);
  }

  // 이메일 입력란과 이메일 주소 선택란 요소 찾기
  const emailInput = document.querySelector('#email');
  const emailSelect = document.querySelector('#email_address');

  // 이메일 입력란의 값이 변경될 때마다 유효성 검사 수행
  emailInput.addEventListener('input', function() {
    if (validateEmail(emailInput.value)) {
      emailInput.classList.remove('is-invalid');
      emailInput.classList.add('is-valid');
    } else {
      emailInput.classList.remove('is-valid');
      emailInput.classList.add('is-invalid');
    }
  });

// 이메일 주소 선택란의 값이 변경될 때마다 체크 수행
emailSelect.addEventListener('change', function() {
  if (emailSelect.value !== '') {
    emailSelect.classList.remove('is-invalid');
  } else {
    emailSelect.classList.add('is-valid');
  }
});

//선호지역 유효성검사
const likePlace = document.querySelector("#like_region");

likePlace.addEventListener('change', function() {
  if (likePlace.value !== '') {
    likePlace.classList.remove('is-invalid');
  } else {
    likePlace.classList.add('is-valid');
  }
});


   //주민번호 숫자6자리만 입력되게
   $(document).ready(function() {
    $('#id_num').on('input', function() {
      const idNumber = $(this).val();
      const regex = /^[0-9]{6}$/; // 6자리 숫자만 유효
  
      if (regex.test(idNumber)) {
        $(this).removeClass('form-control is-invalid').addClass('form-control is-valid');
      } else {
        $(this).removeClass('form-control is-valid').addClass('form-control is-invalid');
      }
    });
  });
  

    //주민번호2 숫자7자리만 입력되게
    $(document).ready(function() {
        $('#id_num2').on('input', function() {
          const phoneNumber = $(this).val();
          const regex = /^[0-9]{7}$/;
    
          if (regex.test(phoneNumber)) {
            $(this).removeClass('form-control is-invalid').addClass('form-control is-valid');
          } else {
            $(this).removeClass('form-control is-valid').addClass('form-control is-invalid');
          }
        });
      });

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

 
    let isIdDuplicated = false;
    let isNickDuplicated = false;
    
    function checkDupId() {
      // 아이디 중복확인 로직 추가
      //1. 현재 입력된 아이디 준비
      //2. 서버한테 아이디 전달
      //3. 결과 받아오기 (isDup , notDup)
      //4. 결과에 따라 , 중복 여부를 알려주기
      const id = document.querySelector("input[name=id]").value;
      $.ajax({
          url : '/app/member/id-check' ,
          type : 'POST' ,
          data : {
              'id' : id
          } ,
          success : function(data){
              if(data == 'notDup'){
                // 중복확인 완료 후 중복확인 여부 업데이트
                isIdDuplicated = true;
                
                  alert("사용 가능한 아이디 입니다.");
              }else{
                  alert("사용 불가한 아이디 입니다.");
              }
          } ,
          error : function(e){
              console.log(e);
          } ,
      });
    
    }
    
    function checkDupNick() {
      // 닉네임 중복확인 로직 추가
      const nick = document.querySelector("input[name=nick]").value;
    $.ajax({
        url : '/app/member/nick-check' ,
        type : 'POST' ,
        data : {
            'nick' : nick
        } ,
        success : function(data){
            if(data == 'notDup'){
              // 중복확인 완료 후 중복확인 여부 업데이트
              isNickDuplicated = true;
                alert("사용 가능한 닉네임 입니다.");
            }else{
                alert("사용 불가한 닉네임 입니다.");
            }
        } ,
        error : function(e){
            console.log(e);
        } ,
    });
    }
    

function checkValidation() {

   //아이디 값이 변경되면, 중복확인 값 초기화시키기
 const idTag = document.querySelector("input[name=id]");
 idTag.addEventListener('change' , checkIdChange);
 
 function checkIdChange(){
  isIdDuplicated = false;
 }
  //닉네임 값이 변경되면, 중복확인 값 초기화시키기
  const nickTag = document.querySelector("input[name=nick]");
  nickTag.addEventListener('change' , checkNickChange);
  
  function checkNickChange(){
    isNickDuplicated = false;
    }

//비밀번호1과 비밀번호2 일치해야지만 제출되게
  function isPwdOk() {
    const pwd1 = document.querySelector('input[id="pwd"]').value;
    const pwd2 = document.querySelector('input[id="pwd2"]').value;
    if (pwd1 !== pwd2) return false;
    return true;
  }
  //성별을 선택해야만 제출
  function isGenderSelected() {
    const genderInputs = document.querySelectorAll('input[type="radio"][name="gender"]');
    for (let i = 0; i < genderInputs.length; i++) {
      if (genderInputs[i].checked) {
        return true;
      }
    }
    return false;
  }


/// 필수 입력 사항 중 타입이 텍스트 또는 비밀번호인 모든 태그찾기
const requiredInputs = document.querySelectorAll('input[type="text"][required], input[type="password"][required]');

// 모든 필수 입력 사항이 "is-valid" 클래스를 가지고 있는지 확인
for (let i = 0; i < requiredInputs.length; i++) {
  const input = requiredInputs[i];
  if (!input.classList.contains('is-valid')) {
    alert('모든 필수 입력 항목을 완료해주세요.');
    input.focus();
    return false;
  }
}

// 아이디 중복확인 여부를 확인
  if (!isIdDuplicated) {
    alert('아이디 중복확인을 해주세요.');
    return false;
  }
 
  // 닉네임 중복확인 여부를 확인
  if (!isNickDuplicated) {
    alert('닉네임 중복확인을 해주세요.');
    return false;
  }

//비밀번호1과 비밀번호2 일치해야지만 제출되게
  if (!isPwdOk()) {
    alert("비밀번호가 일치하지 않습니다.");
    document.querySelector("input[name=pwd]").focus();
    return false;
  }
//성별을 선택해야만 제출
  if (!isGenderSelected()) {
    alert('성별을 선택해주세요.');
    return false;
  }

  return true;
}
















