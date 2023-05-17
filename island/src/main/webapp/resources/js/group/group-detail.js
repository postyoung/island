// 댓글 작성 폼 요소를 선택합니다.
const form = document.querySelector('form');
// 댓글 목록을 표시할 요소를 선택합니다.
const commentList = document.querySelector('#comment-list');

// 제출 버튼을 눌렀을 때 이벤트 핸들러를 추가합니다.
form.addEventListener('submit', event => {
    event.preventDefault(); // 폼의 기본 동작을 막습니다.

    // 이름, 이메일, 댓글 내용을 입력한 후 제출하면 이 값들을 가져옵니다.
    const name = form.elements.name.value;
    const comment = form.elements.comment.value;

    // 댓글 영역을 만듭니다.
    const commentDiv = document.createElement('div');
    commentDiv.classList.add('comment');
    const commentContent = document.createElement('p');
    commentContent.innerHTML = `<span>${name}</span>: ${comment}`;
    commentDiv.appendChild(commentContent);

    // 삭제 버튼을 만듭니다.
    const deleteButton = document.createElement('button');
    deleteButton.classList.add('delete-button');
    deleteButton.innerText = '삭제';
    commentDiv.appendChild(deleteButton);

    // 댓글 목록에 댓글 영역을 추가합니다.
    commentList.appendChild(commentDiv);

    // 입력된 내용을 지웁니다.
    form.reset();
});

$(function(){
    $("#confirm").click(function(){
        modalClose();
        //컨펌 이벤트 처리
    });
    $("#modal-open").click(function(){        $("#popup").css('display','flex').hide().fadeIn();
    });
    $("#close").click(function(){
        modalClose();
    });
    function modalClose(){
        $("#popup").fadeOut();
    }
});