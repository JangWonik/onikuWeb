$(function(){
	$(".header").hover(function() {
        $(".header").addClass("on");		
		$(".logo img").attr('src','/resources/img/logo_on.png');
		$(".sub_bg").attr('style','border-top:1px solid #000;');
		$(".sub_bg").stop().animate({height:'255'},300);
    }, function() {
        $(".header").removeClass("on");
		$(".sub_bg").stop().animate({height:'0'},300);
		$(".sub_bg").attr('style','border-top:0;');

		if($(".header").hasClass("fixed")){
			$(".logo img").attr('src','/resources/img/logo_on.png');
		}else{
			$(".logo img").attr('src','/resources/img/logo.png');
		}
    });

	$("nav .inner > ul > li > ul").hover(function() {
	    $(this).addClass("on");
	}, function() {
		$(this).removeClass("on");
	});

	//메인화면 스크롤
	$(".scroll > a").click(function(){
        $('html, body').animate({scrollTop:1080}, 400);
        return false;
    });

	//메인화면 게시판 view
    $(".brd_list:eq(0)").css("display","block");
    $(".brd_con > ul > li > h3").click(function(){
		$(".brd_con > ul > li > h3").removeClass("on");
    	$(this).addClass("on");
    	$(".brd_list").hide();
    	$(this).siblings(".brd_list").show();
    });

    //게시판 상세보기
    $(".tbl_style01 tbody tr td.tit").click(function(){
    	$(".view_detail").hide();
    	$(this).parent("tr").next(".view_detail").show();
    });

    //회원학회소개 상세보기
    $(".tbl_style02 tbody tr td.tit").on("click", function(){
        if ($(this).hasClass("active")){
            $(this).removeClass("active")
            $(".detail").slideUp();
        } else {
        	$(".tbl_style02 tbody tr td.tit").removeClass("active");
        	$(this).addClass("active");
            $(".detail").slideUp();            
    		$(this).parent("tr").next("tr").find(".detail").slideDown();
        };
    });


});

//메뉴 고정
$(window).scroll(function () {
	
	var w_width = $(window).width();
	var top = $(window).scrollTop()
	
	//데스크탑 스크립트
	var target = 109;
	if (top > target) {
		$(".header").addClass("fixed");
		$(".logo img").attr('src','/resources/img/logo_on.png');
	} else {
		$(".header").removeClass("fixed");
		$(".logo img").attr('src','/resources/img/logo.png');
	}

	return false;
})


// 스크롤 탑
$(function() {
	scroll_top();
	scroll_view();
});

function scroll_view() {
	$(window).scroll(function() {
		if (scroll_state())
			$("#top_area").fadeIn(500);
		else
			$("#top_area").fadeOut(500);
	});
}

function scroll_state() {
	return $(document).scrollTop() != 0 ? true : false;
}

function scroll_top() {
	$(".ico_top").click(function() {
		$("html, body").stop().animate({ scrollTop: 0 }, 300);
	});
}

function openWindow(select) {
    window.open(select, '_blank');
}