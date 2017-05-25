$(document).ready(function(){
    $("#running").click(function(){
        console.log('clicking');
    });

    $("#name a").mouseover(function(){
      $("#name a").css("text-decoration", "underline");
    });
    $("#name a").mouseleave(function(){
      $("#name a").css("text-decoration", "none");
    });

    $("#developing").mouseover(function(){
      $("#developing").toggleClass("zoom");
    });
    $("#developing").mouseleave(function(){
      $("#developing").toggleClass("zoom");
    });

    $("#playing").mouseover(function(){
      $(".main").fadeTo(300, 0, "linear");
    });
    $("#playing").mouseleave(function(){
      $(".main").fadeTo(300, 1, "linear");
    });
});
