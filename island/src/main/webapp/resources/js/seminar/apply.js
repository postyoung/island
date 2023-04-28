    // id가 flexCheckDefault1인 체크박스 요소를 찾아 변수에 할당합니다.
const checkbox1 = document.getElementById("flexCheckDefault1");

// id가 flexCheckDefault2, flexCheckDefault3인 체크박스 요소들을 찾아 배열에 할당합니다.
const checkboxes = [document.getElementById("flexCheckDefault2"), document.getElementById("flexCheckDefault3")];

// checkbox1의 상태가 변경될 때마다 실행할 함수를 정의합니다.
checkbox1.addEventListener("change", function() {
  // checkbox1이 체크된 경우
  if (checkbox1.checked) {
    // 배열 checkboxes의 각 요소를 체크합니다.
    checkboxes.forEach(function(checkbox) {
      checkbox.checked = true;
    });
  } else {
    // checkbox1이 체크 해제된 경우
    // 배열 checkboxes의 각 요소를 체크 해제합니다.
    checkboxes.forEach(function(checkbox) {
      checkbox.checked = false;
    });
  }
});