$(document).ready(function(){
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
      $("body").fadeTo(300, 0, "linear");
    });
    $("#playing").mouseleave(function(){
      $("body").fadeTo(300, 1, "linear");
    });

    $("#reading").mouseover(() => {
      $('.arturlan').hide();
      $(".hidden").prepend('<img id="authors" src="images/authors.png"/>')
    });
    $("#reading").mouseleave(() => {
      $("#authors").remove();
      $('.arturlan').show();
    });

    // thinking
    $('.row.ironman').on('click', () => {
      $parent_box = $(this).closest('.question');
      $parent_box.siblings().find('.bottom').hide();
	    $parent_box.find('.bottom').toggle();
    })
});
