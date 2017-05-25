$(document).ready(function(){
    $("#running").click(function(){
        console.log('clicking');
    });

    $("#name a").mouseover(function(){
      $("#name a").css("text-decoration", "underline");
      console.log("over");
    });

    $("#playing").mouseenter(function(){
      $("#main").fadeTo(300, 0, "linear");
      console.log("playing");
    });

    $("#playing").mouseleave(function(){
      $("#main").fadeTo(300, 1, "linear");
    });
});
