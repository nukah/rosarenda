$(document).ready(function() {
    $("ul.gallery li").hover(function() {
        var thumbOver = $(this).find("img").attr("src");
        $(this).find("a.thumb").css({
            'background': 'url(' + thumbOver + ') no-repeat center bottom'
        });
        $(this).find("span").stop().fadeTo('normal', 0,
        function() {
            $(this).hide()
        });				
    } , function() {
        $(this).find("span").stop().fadeTo('normal', 1).show();			
    });						
});
