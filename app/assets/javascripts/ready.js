$(document).ready(function() {
    $("ul.gallery li").hover(function() {
        var thumbOver = $(this).find("img").attr("src");
        $(this).find("img").stop().fadeTo('normal', 0.5);				
    } , function() {
        $(this).find("img").stop().fadeTo('normal', 1);			
    });						
});
