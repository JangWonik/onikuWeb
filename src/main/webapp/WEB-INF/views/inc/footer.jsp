<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
	<footer class="footer">
	    <div class="inner">
	        <address>
	            <!-- <span>서울특별시 마포구 마포대로 63-8, 301호(도화동, 삼창프라자빌딩)&nbsp;&nbsp;탑손해사정 주식회사</span><br/>
	            <span><strong>사업자등록번호</strong>105-86-49340</span>
	            <span><strong>손해사정업등록번호</strong>B0000146호</span><br/>
	            <span><strong>Tel</strong>02-6077-4600</span>
	            <span><strong>Fax</strong>02-338-3234</span> -->
	            <span style="cursor:pointer;" onclick="javascript:openPersonInfoModal();"><strong>개인정보 처리방침</strong></span>
	            <br/>
	            <span>&copy; Develop Of Java&nbsp;&nbsp;&nbsp;All Rights Reserved.</span>
	        </address>	        
	        <a href="#" class="footer_logo"><img src="/resources/img/logo_footer.png" alt="Develop Of Java"/></a>
	    </div>
	    <!-- 개인정보 처리방침 시작 -->
	    <div id="personal-info-dialog" title="개인정보 처리방침" style="font-size: 12px;display:none;" align="center">
			<table class="tbl_style05">
				<colgroup>
					<col width="30%"/>
					<col width="70%"/>                                                        
				</colgroup>
			<thead>		
               	<tr>
               		<td colspan="2" style="font-size:14px;">
               			(주)자바개발회사(이하 ‘회사’라 한다)은 개인정보 보호법 제30조에 따라 정보주체의 개인정보를 보호하고 이와 관련한 고충을 신속하고 원활하게 처리할 수 있도록 하기 위하여 다음과 같이 개인정보 처리지침을 수립&middot;공개합니다.
               		</td>
				</tr>			
				<tr>
					<th>
						제1조<br/>
						(개인정보의 처리목적)
					</th>
					<td>회사는 다음의 목적을 위하여 개인정보를 처리합니다. 처리하고 있는 개인정보는 다음의 목적 이외의 용도로는 이용되지 않으며, 이용 목적이 변경되는 경우에는 개인정보 보호법 제18조에 따라 별도의 동의를 받는 등 필요한 조치를 이행할 예정입니다.</td>                                
				</tr>								
				<tr>
					<th>
						제2조<br/>
						(개인정보 처리방침 변경)
					</th>
					<td>
						1. 본 방침은 2022년 03월 30일부터 시행한다.<br/>						
						2. 본 방침은 2023년 04월 13일부터 시행한다.
					</td>
				</tr>                
               </thead>                        
           </table>
		</div>
		<script>
		function openPersonInfoModal(){
			$("#personal-info-dialog").dialog({
				height: 700,
				width: 900,
				closeOnEscape : true,
				draggable : false,					
				title: "개인정보 처리방침",
				buttons:{						
					"닫기" : function(){
						$(this).dialog("close");
					}
				},
				modal: true,
				overlay:{ opacity: 0., background: '#000000'}
			});
		}	
		</script>
	    <!-- 개인정보 처리방침 끝 -->
	</footer>	
</html>