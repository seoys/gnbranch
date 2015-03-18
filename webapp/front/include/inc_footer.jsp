<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<!-- FOOTER -->
	<div class="footer_wrap">
		<div class="footer">
			<div class="logo">굿네이버스</div>
			<p>
				서울 동작구 노량진동 310-64 장승빌딩 3층 Tel.<span>02-814-1391</span> Fax.<span>02-814-1392</span> 좋은마음센터 서울동작
				<br />COPYRIGHT © GNI All RIGHT RESERVED
			</p>
			<div class="fr">
				<!-- 추가되는 지부사이트 하드코딩 관리할건지 확인 필요. -->
				<div class="linkBox">
					<label for="domestic" class="blind">국내지부 사이트 리스트</label>
					<select name="" id="domestic" class="form-control">
						<option value="">국내지부 바로가기</option>
						<option value="" title="새창으로 열림 시도본부">========시도 본부========</option>
						<option value="http://seoul.goodneighbors.kr" title="새창으로 열림 서울 본부">서울 본부</option>
						<option value="http://sinchon.goodneighbors.kr" title="새창으로 열림 인천 본부">인천 본부</option>
						<option value="http://chungcheong.goodneighbors.kr" title="새창으로 열림 충청 본부">충청 본부</option>
						<option value="http://daegukb.goodneighbors.kr" title="새창으로 열림 대구경북본부">대구경북본부</option>
						<option value="http://ekwangju.goodneighbors.kr" title="새창으로 열림 광주전남본부">광주전남본부</option>
						<option value="http://ulsancenter.goodneighbors.kr" title="새창으로 열림 울산본부">울산본부</option>
						<option value="http://busankn.goodneighbors.kr" title="새창으로 열림 부산경남본부">부산경남본부</option>
						<option value="http://ggcenter1.goodneighbors.kr" title="새창으로 열림 경기1본부">경기1본부</option>
						<option value="http://ggcenter2.goodneighbors.kr" title="새창으로 열림 경기2본부">경기2본부</option>
						<option value="http://ngangwon.goodneighbors.kr" title="새창으로 열림 강원본부">강원본부</option>
						<option value="http://jeonbuk.goodneighbors.kr" title="새창으로 열림 전북본부">전북본부</option>					
					</select>
				</div>
				<div class="linkBox">
					<label for="foreign" class="blind">해외지부 사이트 리스트</label>
					<select name="" id="foreign" class="form-control">
						<option value="">해외지부 바로가기</option>
						<option value="" title="새창으로 열림 아프리카">=====아프리카=====</option>
						<option value="http://rwanda.goodneighbors.kr" title="새창으로 열림 르완다">르완다</option>
						<option value="http://Malawi.goodneighbors.kr" title="새창으로 열림 말라위">말라위</option>
						<option value="http://ethiopia.goodneighbors.kr" title="새창으로 열림 에티오피아">에티오피아</option>
						<option value="http://egypt.goodneighbors.kr" title="새창으로 열림 이집트">이집트</option>
						<option value="http://chad.goodneighbors.kr" title="새창으로 열림 챠드">챠드</option>
						<option value="http://kenya.goodneighbors.kr" title="새창으로 열림 케냐">케냐</option>
						<option value="http://tanzania.goodneighbors.kr" title="새창으로 열림 탄자니아">탄자니아</option>
					</select>
				</div>
			</div>
		</div>
	</div>
	<!-- //FOOTER -->
	
	<!-- 레이어팝업배경 -->
	<div class="layer_warpper"></div>
	
	<!-- 교육신청 레이어팝업 -->
	<div id="education" class="layer_wrap">
		<div class="layer_pop">
			<div class="layer_head">
				교육신청
				<a href="javascript:closeLayer('education');">교육신청하기 레이어팝업 닫기</a>	
			</div>
			<p class="comment">아래의  신청하실 교육 선택과 기본정보를 모두 기입하여 [신청하기] 버튼을 눌러주세요.</p>
			<div class="layer_container">
				<fieldset>
					<legend>교육신청 입력폼</legend>
					<div class="layer_contents">
						<p class="tableTitle">1. 교육 선택</p>
						<!-- write -->
						<table class="table table-write">
							<caption>교육 선택</caption>
							<colgroup>
								<col width="150"/>
								<col width=""/>
							</colgroup>
							<tbody>
								<tr>
									<th scope="row">교육명 선택</th>
									<td>
										<select name="" id="" class="form-control">
											<option value="">인형극</option>
										</select>
									</td>
								</tr>
								<tr>
									<th scope="row">교육 내용 설명</th>
									<td>유,초등생들을 위한 인형극 교육입니다.</td>
								</tr>
								<tr>
									<th scope="row">교육 장소</th>
									<td>서울시 용산구 청파동 백범 김구 기념관 7층</td>
								</tr>
							</tbody>
						</table>
						<!-- //write -->
						<p class="tableTitle">2. 신청자 기본정보 <span class="tableDisc">* 모든 항목이 필수 입력 사항입니다.</span></p>
						<!-- write -->
						<table class="table table-write">
							<caption>신청자 기본정보</caption>
							<colgroup>
								<col width="150"/>
								<col width=""/>
							</colgroup>
							<tbody>
								<tr>
									<th scope="row">신청 구분</th>
									<td>
										<label for="" class="radio-inline"><input type="radio" name="" id="" value="" /> 개인</label>
										<label for="" class="radio-inline"><input type="radio" name="" id="" value="" /> 단체</label>
									</td>
								</tr>
								<tr>
									<th scope="row">신청자(단체명)</th>
									<td><input type="text" class="form-control col-unit9"></td>
								</tr>
								<tr>
									<th scope="row">연락처</th>
									<td>
										<select name="" id="" class="form-control col-unit2" title="연락처 국번 선택">
											<option value="">선택</option>
										</select> - <input type="text" id="" class="form-control col-unit2" title="연락처 앞자리 입력"/> - <input type="text" id="" class="form-control col-unit2" title="연락처 뒷자리 입력"/>
									</td>
								</tr>
								<tr>
									<th scope="row">이메일</th>
									<td>
										<input type="text" class="form-control"> @ <input type="text" class="form-control" title="이메일 계정도메인">
										<select name="" id="" class="form-control" title="이메일 계정도메인 선택">
											<option value="">선택</option>
										</select>
									</td>
								</tr>
								<tr>
									<th scope="row">신청 인원</th>
									<td><input type="text" class="form-control col-unit2"> 명<span class="s_text">(숫자만 입력)</span></td>
								</tr>
								<tr>
									<th scope="row">교육 요청 일자</th>
									<td><input type="text" class="form-control"> <a href="#">날짜선택</a></td>
								</tr>
							</tbody>
						</table>
						<!-- //write -->
						<!-- 개인정보수집 -->
						<div class="privacy_wrap">
							<div>
								<p>개인 정보의 수집 및 이용에 대한 안내</p>
								1. 수집하는 개인정보 항목<br />
								- 필수항목 : 신청자명, 연락처, 이메일 주소<br /><br />
								2. 개인정보의 수집 및 이용목적<br />
								- 교육 신청에 따른 본인 확인<br />
								- 교육 신청자와의 원활한 의사소통 경로 확보<br /><br />
								3. 개인정보의 보유 및 이용기간<br />
								- 개인정보의 수집 및 이용목적이 달성된 후에 해당 정보를 지체 없이 파기합니다.<br />
								- 단, 관계법령의 규정에 의하여 보존할 필요가 있는 경우 회사는 관계법령이 정한 일정한 기간 동안 회원정보를 보관합니다.<br /><br />
								4. 개인정보의 공유 및 제공<br />
								- 입력하신 정보는 교육 담당자가 열람할 수 있으며,  그 외에는 외부에 제공하거나 공개하지 않습니다.
							</div>
							<p class="check"><input type="checkbox" id=""/> <label for="">개인 정보의 수집 및 이용에 동의합니다.</label></p>
						</div>
						<!-- //개인정보수집 -->
					</div>
				</fieldset>
				<div class="btnarea layer_btn">
					<div class="fr">
						<a href="javascript:closeLayer('education');" class="btn2">취소하기</a>
						<a href="#" class="btn">신청하기</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //교육신청 레이어팝업 -->
	
	<!-- 온라인문의 레이어팝업 -->
	<div id="onlineqna" class="layer_wrap">
		<div class="layer_pop">
			<div class="layer_head">
				온라인문의
				<a href="javascript:closeLayer('onlineqna');">온라인문의 레이어팝업 닫기</a>	
			</div>
			<p class="comment">아래의 기본정보와 문의내용을 모두 기입하여 [문의하기] 버튼을 눌러주세요.</p>
			<div class="layer_container">
				<fieldset>
					<legend>온라인문의 입력폼</legend>
					<div class="layer_contents">
						<p class="tableTitle"><span class="tableDisc">* 표시는 필수 입력 사항입니다.</span></p>
						<!-- write -->
						<table class="table table-write">
							<caption>온라인문의</caption>
							<colgroup>
								<col width="150"/>
								<col width=""/>
							</colgroup>
							<tbody>
								<tr>
									<th scope="row">문의 구분</th>
									<td>
										<label for="" class="radio-inline"><input type="radio" name="" id="" value="" /> 개인</label>
										<label for="" class="radio-inline"><input type="radio" name="" id="" value="" /> 단체</label>
									</td>
								</tr>
								<tr>
									<th scope="row">작성자</th>
									<td><input type="text" class="form-control"></td>
								</tr>
								<tr>
									<th scope="row">연락처</th>
									<td>
										<select name="" id="" class="form-control col-unit2" title="연락처 국번 선택">
											<option value="">선택</option>
										</select> - <input type="text" id="" class="form-control col-unit2" title="연락처 앞자리 입력"/> - <input type="text" id="" class="form-control col-unit2" title="연락처 뒷자리 입력"/>
									</td>
								</tr>
								<tr>
									<th scope="row">이메일</th>
									<td>
										<input type="text" class="form-control"> @ <input type="text" class="form-control" title="이메일 계정도메인">
										<select name="" id="" class="form-control" title="이메일 계정도메인 선택">
											<option value="">선택</option>
										</select>
									</td>
								</tr>
								<tr>
									<th scope="row">문의내용</th>
									<td class="editorWrap">
										<!-- 에디터영역 -->
									</td>
								</tr>
							</tbody>
						</table>
						<!-- //write -->
					</div>
				</fieldset>
				<div class="btnarea layer_btn">
					<div class="fr">
						<a href="javascript:closeLayer('onlineqna');" class="btn2">취소하기</a>
						<a href="#" class="btn">문의하기</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //온라인문의 레이어팝업 -->
	
	<script src="/js/jquery-1.10.2.js"></script>
	<script src="/js/common_ui.js"></script>
	<script src="/js/front_ui.js"></script>