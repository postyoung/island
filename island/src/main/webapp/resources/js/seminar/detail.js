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


   