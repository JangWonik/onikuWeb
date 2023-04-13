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
					<td colspan="2">
						1. 손해사정 업무<br/>
						본인 확인 및 손해사정 업무에 필요한 개인정보, 만 14세 미만 아동의 개인정보 처리시 법정대리인의 동의여부 확인, 각종 고지&middot;통지, 고충처리 등을 목적으로 개인정보를 처리합니다.
					</td>
				</tr>
				<tr>
					<th>
						제2조<br/>
						(개인정보의 처리 및 보유기간)
					</th>
					<td>
						① 회사는 법령에 따른 개인정보 보유&middot;이용기간 또는 정보주체로부터 개인정보를 수집시에 동의받은 개인정보 보유&middot;이용기간 내에서 개인정보를 처리&middot;보유합니다.<br/>
						② 각각의 개인정보 처리 및 보유 기간은 다음과 같습니다.<br/>
						1. 홈페이지 회원 가입 및 관리 : 사업자/단체 홈페이지 탈퇴시까지<br/>
						다만, 다음의 사유에 해당하는 경우에는 해당 사유 종료시까지<br/>
						1) 관계 법령 위반에 따른 수사&middot;조사 등이 진행중인 경우에는 해당 수사&middot;조사 종료시까지<br/>
						2) 홈페이지 이용에 따른 채권&middot;채무관계 잔존시에는 해당 채권&middot;채무관계 정산시까지<br/>
						2. 재화 또는 서비스 제공 : 재화&middot;서비스 공급완료 및 요금결제&middot;정산 완료시까지<br/> 
					</td>
				</tr>
				<tr>
					<th>
						제3조<br/>
						(개인정보의 제3자 제공)
					</th>
					<td>
						① 회사는 개인정보를 제3자에게 제공하고 있지 않습니다.
					</td>
				</tr>
				<tr>
					<th>
						제4조<br/>
						(개인정보처리의 위탁)
					</th>
					<td>
						① 회사는 원활한 개인정보 업무처리를 위하여 다음과 같이 개인정보 처리업무를 위탁하고 있습니다.<br/>
						<div>
							<table style="width:99%;margin-top:5px;">
								<tr style="background:#e7ecf1;">
									<th style="color:#191919;font-weight:bold;font-size:12px;text-align:center;">위탁받은 자</th>
									<th style="color:#191919;font-weight:bold;font-size:12px;text-align:center;">위탁하는 업무의 내용</th>									
								</tr>
								<tr>
									<td style="text-align:center;">엑츠솔루션</td>
									<td style="text-align:center;">개인정보보안시스템유지보수</td>
								</tr>
								<tr>
									<td style="text-align:center;">루트정보통신</td>
									<td style="text-align:center;">개인정보보안시스템유지보수</td>
								</tr>
								<tr>
									<td style="text-align:center;">더부러</td>
									<td style="text-align:center;">개인정보문서파기</td>
								</tr>								
							</table>
						</div>
						② 회사는 위탁계약 체결시 개인정보 보호법 제25조에 따라 위탁업무 수행목적 외 개인정보 처리금지, 기술적&middot;관리적 보호조치, 재위탁 제한, 수탁자에 대한 관리&middot;감독, 손해배상 등 책임에 관한 사항을 계약서 등 문서에 명시하고, 수탁자가 개인정보를 안전하게 처리하는지를 감독하고 있습니다.<br/>
						③ 위탁업무의 내용이나 수탁자가 변경될 경우에는 지체없이 본 개인정보 처리방침을 통하여 공개하도록 하겠습니다.
					</td>
				</tr>
				<tr>
					<th>
						제5조<br/>
						(정보주체의 권리&middot;의무 및 행사방법)
					</th>
					<td>
						① 정보주체는 회사에 대해 언제든지 다음 각 호의 개인정보 보호 관련 권리를 행사할 수 있습니다.<br/>
						1. 개인정보 열람요구<br/>
						2. 오류 등이 있을 경우 정정 요구<br/>
						3. 삭제요구<br/>
						4. 처리정지 요구<br/>
						② 제1항에 따른 권리 행사는 회사에 대해 서면, 전화, 전자우편, 모사전송(FAX) 등을 통하여 하실 수 있으며 회사는 이에 대해 지체없이 조치하겠습니다.<br/>
						③ 정보주체가 개인정보의 오류 등에 대한 정정 또는 삭제를 요구한 경우에는 회사는 정정 또는 삭제를 완료할 때까지 당해 개인정보를 이용하거나 제공하지 않습니다.<br/>
						④ 제1항에 따른 권리 행사는 정보주체의 법정대리인이나 위임을 받은 자 등 대리인을 통하여 하실 수 있습니다. 이 경우 개인정보 보호법 시행규칙 별지 제11호 서식에 따른 위임장을 제출하셔야 합니다.<br/>
						⑤ 정보주체는 개인정보 보호법 등 관계법령을 위반하여 회사가 처리하고 있는 정보주체 본인이나 타인의 개인정보 및 사생활을 침해하여서는 아니됩니다.
					</td>
				</tr>				
				<tr>
					<th>
						제6조<br/>
						(처리하는 개인정보 항목)
					</th>
					<td>
						회사는 다음의 개인정보 항목을 처리하고 있습니다.<br/>
						1. 손해사정 업무<br/>
						필수항목 : 성명, 생년월일, 이메일주소, 휴대전화번호, 회사명<br/>
						선택항목 : 전화번호, 주소<br/>
						2. 인터넷 서비스 이용과정에서 아래 개인정보 항목이 자동으로 생성되어 수집될 수 있습니다.<br/>
						IP주소, 쿠키, MAC주소, 서비스 이용기록, 방문기록, 불량 이용기록 등						
					</td>
				</tr>
				<tr>
					<th>
						제7조<br/>
						(개인정보의 파기)
					</th>					
					<td>
						① 회사는 개인정보 보유기간의 경과, 처리목적 달성 등 개인정보가 불필요하게 되었을 때에는 지체없이 해당 개인정보를 파기합니다.<br/>
						② 개인정보 파기의 절차 및 방법은 다음과 같습니다.<br/>
						1. 파기절차<br/>
						회사는 파기 사유가 발생한 개인정보를 선정하고, 회사의 개인정보 보호책임자의 승인을 받아 개인정보를 파기합니다.<br/>
						2. 파기방법<br/>
						회사는 전자적 파일 형태로 기록&middot;저장된 개인정보는 기록을 재생할 수 없도록 완전삭제솔루션을 이용하여 파기하며, 종이 문서에 기록&middot;저장된 개인정보는 분쇄기로 분쇄하거나 소각하여 파기합니다.
					</td>
				</tr>
				<tr>
					<th>
						제8조<br/>
						(개인정보의 안전성 확보조치)
					</th>
					<td>
						회사는 개인정보의 안전성 확보를 위해 다음과 같은 조치를 취하고 있습니다.<br/>
						1. 관리적 조치 : 내부관리계획 수립&middot;시행, 정기적 직원 교육 등<br/>
						2. 기술적 조치 : 개인정보처리시스템 등의 접근권한 관리, 접근통제시스템	설치, 고유식별정보 등의 암호화, 보안프로그램 설치<br/>
						3. 물리적 조치 : 전산실, 자료보관실 등의 접근통제
					</td>
				</tr>
				<tr>
					<th>
						제9조<br/>
						(개인정보 자동 수집 장치의 설치&middot;운영 및 거부에 관한 사항)
					</th>
					<td>
						① 회사는 이용자에게 개별적인 맞춤서비스를 제공하기 위해 이용정보를 저장하고 수시로 불러오는 ‘쿠키(cookie)’를 사용합니다.<br/>
						② 쿠키는 웹사이트를 운영하는데 이용되는 서버(http)가 이용자의 컴퓨터 브라우저에게 보내는 소량의 정보이며 이용자들의 PC 컴퓨터내의 하드디스크에 저장되기도 합니다.<br/>
						가. 쿠키의 사용목적: 이용자가 방문한 각 서비스와 웹 사이트들에 대한 방문 및 이용형태, 인기 검색어, 보안접속 여부, 등을 파악하여 이용자에게 최적화된 정보제공을 위해 사용됩니다.<br/>
						나. 쿠키의 설치∙운영 및 거부 : 웹브라우저 상단의 도구>인터넷 옵션>개인정보메뉴의 옵션 설정을 통해 쿠키 저장을 거부 할 수 있습니다.<br/>
						다. 쿠키 저장을 거부할 경우 맞춤형 서비스 이용에 어려움이 발생할 수 있습니다.						
					</td>
				</tr>				
				<tr>
					<th>
						제10조<br/>
						(개인정보 보호책임자)
					</th>
					<td>
						① 회사는 개인정보 처리에 관한 업무를 총괄해서 책임지고, 개인정보 처리와 관련한 정보주체의 불만처리 및 피해구제 등을 위하여 아래와 같이 개인정보 보호책임자를 지정하고 있습니다.
						<div>
							<table style="width:99%;margin-top:5px;">
								<tr>
									<th style="width:30%;background:#e7ecf1;color:#191919;font-weight:bold;font-size:12px;text-align:left;padding-left:5px;">개인정보 관리 책임자</th>
									<td style="width:70%;text-align:left;padding-left:5px;">
										1. 책 임 자 : 윤경수 (부사장)<br/>
										2. 담당부서 : 인보험본부<br/>
										3. 연 락 처<br/>
										이 메 일 : top6905@toplac.co.kr<br/>
										전화번호 : 02-6077-4800<br/>
										팩    스 : 0505-825-3036<br/>
										주    소 : 서울시 마포구 마포대로 63-8 삼창플라자빌딩 303호<br/>										
									</td>
								</tr>
								<tr>
									<th style="background:#e7ecf1;color:#191919;font-weight:bold;font-size:12px;text-align:left;padding-left:5px;">IT 담당자</th>
									<td style="text-align:left;padding-left:5px;">
										1. 담 당 자 : 홍기헌 (부장)<br/>
										2. 담당부서 : IT정보보호파트<br/>
										3. 연 락 처<br/>
										이 메 일 : top5991@toplac.co.kr<br/>
										전화번호 : 02-6077-4606<br/>
										팩    스 : 0505-302-3746<br/>
										주    소 : 서울시 마포구 마포대로 63-8 삼창플라자빌딩 301호										
									</td>
								</tr>								
							</table>
						</div>
						② 정보주체께서는 회사의 서비스(또는 사업)을 이용하시면서 발생한 모든 개인정보 보호 관련 문의, 불만처리, 피해구제 등에 관한 사항을 개인정보 보호책임자 및 담당부서로 문의하실 수 있습니다. 회사는 정보주체의 문의에 대해 지체없이 답변 및 처리해드릴 것입니다. 
					</td>
				</tr>
				<tr>
					<th>
						제11조<br/>
						(권익침해 구제방법)
					</th>
					<td>
						정보주체는 아래의 기관에 대해 개인정보 침해에 대한 피해구제, 상담 등을 문의하실 수 있습니다.<br/>
						(아래의 기관은 회사와는 별개의 기관으로서, 회사의 자체적인 개인정보 불만처리, 피해구제 결과에 만족하지 못하시거나 보다 자세한 도움이 필요하시면 문의하여 주시기 바랍니다.)<br/>
						<div>
							<table style="width:99%;margin-top:5px;">
								<tr>
									<th style="width:30%;background:#e7ecf1;color:#191919;font-weight:bold;font-size:12px;text-align:left;padding-left:5px;">개인정보 침해신고센터 (한국인터넷진흥원 운영)</th>
									<td style="width:70%;text-align:left;padding-left:5px;">
										- 소관업무 : 개인정보 침해사실 신고, 상담 신청<br/>
										- 홈페이지 : <a href="http://privacy.kisa.or.kr" target="_blank">privacy.kisa.or.kr</a><br/>
										- 전화 : (국번없이) 118<br/>
										- 주소 : (58324) 전남 나주시 진흥길 9(빛가람동 301-2) 3층 개인정보침해신고센터
									</td>
								</tr>
								<tr>
									<th style="background:#e7ecf1;color:#191919;font-weight:bold;font-size:12px;text-align:left;padding-left:5px;">개인정보 분쟁조정위원회</th>
									<td style="text-align:left;padding-left:5px;">
										- 소관업무 : 개인정보 분쟁조정신청, 집단분쟁조정 (민사적 해결)<br/>
										- 홈페이지 : <a href="www.kopico.go.kr" target="_blank">www.kopico.go.kr</a><br/>
										- 전화 : (국번없이) 1833-6972<br/>
										- 주소 : (03171)서울특별시 종로구 세종대로 209 정부서울청사 4층
									</td>
								</tr>
								<tr>
									<th style="background:#e7ecf1;color:#191919;font-weight:bold;font-size:12px;text-align:left;padding-left:5px;">대검찰청 사이버범죄수사단</th>
									<td style="text-align:left;padding-left:5px;">
										02-3480-3573 <a href="http://www.spo.go.kr" target="_blank">(www.spo.go.kr)</a>
									</td>
								</tr>
								<tr>
									<th style="background:#e7ecf1;color:#191919;font-weight:bold;font-size:12px;text-align:left;padding-left:5px;">경찰청 사이버안전국</th>
									<td style="text-align:left;padding-left:5px;">
										182 <a href="http://cyberbureau.police.go.kr" target="_blank">(http://cyberbureau.police.go.kr)</a>
									</td>
								</tr>
							</table>
						</div>
					</td>
				</tr>				
				<tr>
					<th>
						제14조<br/>
						(개인정보 처리방침 변경)
					</th>
					<td>
						1. 본 방침은 2012년 03월 30일부터 시행한다.<br/>
						2. 본 방침은 2016년 05월 27일부터 시행한다.<br/>
						3. 본 방침은 2016년 10월 20일부터 시행한다.<br/>
						4. 본 방침은 2017년 09월 11일부터 시행한다.<br/>
						5. 본 방침은 2018년 01월 15일부터 시행한다.<br/>
						6. 본 방침은 2018년 04월 01일부터 시행한다.<br/>
						7. 본 방침은 2021년 05월 11일부터 시행한다.
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