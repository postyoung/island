    //좋아요 버튼
    var i = 0;
    $('.bi-heart').on('click',function(){
        if(i==0){
            $(this).attr('class','bi-heart-fill');
            i++;
        }else if(i==1){
            $(this).attr('class','bi-heart');
            i--;
        }
  
    });


    //세미나 삭제버튼
    function seminarDelete(){
      if(confirm("세미나 컨텐츠를 정말 삭제하시겠습니까?")){
        location.href="#";
      }

      
    }