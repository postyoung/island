const pwdField = document.querySelector("#pwdField");
const pwd2Field = document.querySelector("#pwd2Field");
const pwdMatchMsg = document.querySelector("#pwdMatchMsg");
const validationFeedbackPwd = document.querySelector("#validationFeedback_Pwd");
const submitButton = document.querySelector("#submitButton");

pwd2Field.addEventListener("input", () => {
    if (pwdField.value === pwd2Field.value) {
        pwdMatchMsg.style.display = "none";
        pwdMatchMsg.style.color = "black"; // 일치할 때 텍스트 색상을 검은색으로 설정
        submitButton.disabled = false;
    } else {
        pwdMatchMsg.style.display = "block";
        pwdMatchMsg.style.color = "red"; // 불일치할 때 텍스트 색상을 빨간색으로 설정
        submitButton.disabled = true;
    }
});

$(document).ready(function() {
    $('#pwdField').on('input', function() {
        const password = $(this).val();
        // 최소 8 자 대문자, 소문자, 숫자, 특수문자 각 하나 이상을 포함하여 작성하십시오.
        const regex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,}$/;

        if (regex.test(password)) {
            $(this).removeClass('is-invalid').addClass('is-valid');
            validationFeedbackPwd.style.display = "none"; // 정규식에 맞을 때 에러 메시지 숨김
        } else {
            $(this).removeClass('is-valid').addClass('is-invalid');
            validationFeedbackPwd.style.display = "block"; // 정규식에 맞지 않을 때 에러 메시지 표시
        }  
    });

    $('#submitButton').click(function(e) {
        e.preventDefault();
        const password = $('#pwdField').val();
        const confirmPassword = $('#pwd2Field').val();

        const regex = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[$@$!%*?&])[A-Za-z\d$@$!%*?&]{8,}$/;

        if (password === confirmPassword && regex.test(password)) {
            $('form').submit();
        } else {
            // 비밀번호가 일치하지 않거나 정규식에 맞지 않는 경우 에러 메시지 표시
            if (password !== confirmPassword) {
                pwdMatchMsg.style.display = "block";
                pwdMatchMsg.style.color = "red";
            } else {
                pwdMatchMsg.style.display = "none";
            }
            if (!regex.test(password)) {
                validationFeedbackPwd.style.display = "block";
            } else {
                validationFeedbackPwd.style.display = "none";
            }
        }
    });
});
