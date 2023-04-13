<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="ko">
    <head>
        <title>Oniku's Web Develop</title>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />        
        <meta name="viewport" content="max-width=1700" />
        <meta name="format-detection" content="telephone=no, address=no, email=no" />
        <link rel="stylesheet" href="/resources/css/common.css" />
        <link rel="stylesheet" href="/resources/css/reset.css" />
        <script src="/resources/js/jquery-1.9.1.min.js"></script>
        <script src="/resources/js/jquery.bxslider.min.js"></script>
        <script src="/resources/js/common.js"></script>        
    </head>
    <body>
        <!-- wrapper -->
        <div class="wrapper">
            <!-- header -->	
			<c:import url="../inc/header.jsp"></c:import>
			<!-- //header -->

            <!-- main banner -->
            <section>
                <h2 class="hide">메인화면 슬라이드</h2>
                <article>
                    <div class="top_banner">
                        <ul class="main_banner">
                            <li>
                                <div class="slide slide01"></div>
                            </li>
                            <li>
                                <div class="slide slide02"></div>
                            </li>
                            <li>
                                <div class="slide slide03"></div>
                            </li>
                            <li>
                                <div class="slide slide04"></div>
                            </li>
                        </ul>                        
                    </div>
                </article>      
            </section>            
            <%-- <section class="contents">
                <h2 class="hide">본문</h2>
                <article class="inner">
                    <div class="main_board">
                        <div class="tit"><h5>Notice<br/>&amp; News</h5></div>
                        <div class="brd_con">
                            <ul>
                                <li>
                                    <h3 class="on"><span>공지 및 뉴스</span></h3>                                    
                                    <div class="brd_list">
                                        <ul>
                                        	<c:forEach var="items" items="${frontNoticeBoardList}" varStatus="status">
										        <li>
										        	<a href="javascript:doBoardView('${items.bkey}');" class="tit">${items.subject}
										            	<c:if test="${items.day_cnt > 0}">
										            		<span class="new">New</span>
										            	</c:if>										            	 
										            </a>
										            <span class="date">
										            	<c:choose>
										            		<c:when test="${not empty items.mod_date_fmt}">${items.mod_date_fmt}</c:when>
										            		<c:otherwise>${items.reg_date_fmt}</c:otherwise>
										            	</c:choose>
										            </span>
										            <span class="hit">${items.view_cnt}</span>                                                
										        </li>
									        </c:forEach>
                                        </ul>
                                        <a href="boardMain" class="more">공지 및 뉴스 더 보기</a>
                                    </div>
                                </li>
                                <li>
                                    <h3><span>채용공고</span></h3>                                    
                                    <div class="brd_list">
                                        <ul>
                                            <c:forEach var="items" items="${frontJobBoardList}" varStatus="status">
										        <li>
										        	
										            <a href="javascript:doBoardView('${items.bkey}');" class="tit">${items.subject}
										            	<c:if test="${items.day_cnt > 0}">
											            	<span class="new">New</span>
											            </c:if>
										            </a>
										            <span class="date">
										            	<c:choose>
										            		<c:when test="${not empty items.mod_date_fmt}">${items.mod_date_fmt}</c:when>
										            		<c:otherwise>${items.reg_date_fmt}</c:otherwise>
										            	</c:choose>
										            </span>
										            <span class="hit">${items.view_cnt}</span>                                                
										        </li>
									        </c:forEach>
                                        </ul>
                                        <a href="boardMain?category_id=2" class="more">채용공고 더 보기</a>
                                    </div>
                                </li>                                
                            </ul>
                        </div>
                        <div class="tit"><h5>TOP<br/><font size="25px;">&nbsp;Promotion</font></h5></div>
                        <div class="gallery_con">
                            <ul>
                                <li>
                                    <table style="width:960px;">
				                    	<tr>
				                    		<td>				                    			
				                    			<div id="player" style="width:800px;height:450px;text-align:center;padding:50px 0 0 100px;"></div>			
				                    		</td>
				                    	</tr>
				                    </table>
                                </li>
                            </ul>
                       </div>
                    </div>
                </article>
            </section> --%>
            <!-- <form id="srchForm" name="srchForm" method="GET">
            	<input type="hidden" id="bkey" name="bkey"/>
            </form> -->
            <!-- header -->	
			<c:import url="../inc/footer.jsp"></c:import>
			<!-- //header -->
            <!-- //container -->
        </div>        
        <!-- //wrapper -->
        <script type="text/javascript">
            $(function(){
                $('.main_banner').bxSlider({
                    mode: 'horizontal',
                    slideHeight: 798,
                    speed: 500,
                    pager: true,
                    auto: false,
                    autoHover: true,
                    autoControls: true,
                    controls: true
                });

                $('.member_slide').bxSlider({
                    mode: 'vertical',
                    minSlides: 1,
                    maxSlides: 4,
                    slideMargin: 10,
                    pager: false,
                    auto: true,
                    autoHover: true,
                    autoControls: false,
                    controls: true
                });
                
            });
        
	        var tag = document.createElement('script');
	
	        tag.src = "https://www.youtube.com/iframe_api";
	        var firstScriptTag = document.getElementsByTagName('script')[0];
	        firstScriptTag.parentNode.insertBefore(tag, firstScriptTag);
	          
	        var player;
	        function onYouTubeIframeAPIReady() {
	    			player = new YT.Player('player', {
	    			height: '315',
	    			width: '560',
	    			videoId: 'ry50Sn_OaXY',
	    			playerVars:{
	    				'rel' : 0,
	    				'controls' : 0,	    				
	    				'showinfo' : 0,
	    				'fs' : 0
	    			},
	    			events: {
	    				'onReady': onPlayerReady,					//페이지가 로딩되면 실행한다.
	    				'onStateChange': onPlayerStateChange		//플레이어 상태변화시 이벤트 실행 
	    			}
	    		});
	    	}
	        
	        function onPlayerReady(event) {
	    		event.target.setPlaybackQuality('hd720');		
	    		event.target.playVideo();
	    	}
	        
	        function onPlayerStateChange(event) {			//동영상 시작, 정지 등의 이벤트 발생시 실행되는 함수
	    		player.setPlaybackQuality('hd720');	    		
	    	}
	        
	      //글보기 창 이동
	    	function doBoardView( p_bkey ){
	    		$("#bkey").val(p_bkey);
	    		$("#srchForm").attr("action","boardView");
	    		$("#srchForm").submit();	
	    	}
		</script>
    </body>
</html>