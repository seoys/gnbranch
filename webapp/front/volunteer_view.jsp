<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<jsp:include page="/front/include/inc_header.jsp" flush="false" />
	<!-- CONTENTS BODY -->
	<jsp:include page="/front/include/inc_path.jsp" flush="false" />
	<div id="container">
		<div class="contents_wrap">
			<jsp:include page="/front/include/inc_lnb.jsp" flush="false" />
			<!-- CONTENTS -->
			<div class="contentsBox">
				<h3>투뎁스메뉴명</h3>
				<p class="subdiscription">서브타이틀 노출영역</p>
				<div class="contents board">
					<div class="board_view">
						<!-- 타이틀 --><p class="title">[말머리] 자원봉사활동 게시글 제목이 나오는 부분입니다.</p>
						<!-- 등록정보 -->
						<ul class="itemList">
							<li><span class="itemTit">등록일</span><span class="itemCon">2014/12/12</span></li>
							<li><span class="itemTit">조회수</span><span class="itemCon">9999</span></li>
							<li><span class="itemTit">담당자연락처</span><span class="itemCon">000-0000-0000</span></li>
							<li><span class="itemTit">담당자이메일</span><span class="itemCon">aaa@aaa.com</span></li>
							<li><span class="itemTit">봉사장소</span><span class="itemCon">서울</span></li>
							<li><span class="itemTit">모집기간</span><span class="itemCon">2014/12/12~2014/12/12</span></li>
							<li><span class="itemTit">모집인원</span><span class="itemCon">10명</span></li>
							<li><span class="itemTit">신청인원</span><span class="itemCon">10명</span></li>
						</ul>
						<!-- //등록정보 -->
						<!-- 등록내용 -->
						<div class="detail_con">
							<p>에디터에서 입력한 게시판 내용</p><p></p>
							<p>그땐 잘 몰랐고 그래서 무모했고 또 그래서 더 아름다웠던 것 같아 </p>
							<p>상처를 주고받고 하는 게 사람이고 굳이 그걸 겁내진 않았던 것 같아</p>
							<p>닦아내면 그만인 게 눈물이니까 안고 가면 그만인 게 또 기억이니까</p>
							<p>가끔은 아직도 그럴 수 있을 거라고 생각이 들 때가 있어 하지만 이내 다시 또</p>
							<p>뭔가 좀 낯설고 익숙하진 않아도 또 그래서 더 아름다웠던 것 같아 </p>
							<p>부서질정도로 힘껏 부딪혀보고 그러는걸 겁내진 않았던 것 같아 </p>
							<p>버텨내면 그만인 게 아픔이니까 안고 가면 그만인 게 또 슬픔이니까 </p>
							<p>가끔은 아직도 그럴 수 있을 거라고 생각이 들 때가 있어 하지만 이내 다시</p>
							<p>두려움이 앞서고 마음이 무거워져 어느새 또 입가엔 한숨이 맺혀 </p>
							<p>시간은 날 어른이 되게 했지만 강해지게 하지는 않은 것 같아 시간은 날 어른이 되게 했지만 그만큼 더 바보로 만든 것 같아</p>
							<p>그땐 잘 몰랐고 그래서 무모했고 또 그래서 더 아름다웠던 것 같아 부서질 정도로 하는 게 사랑이고 굳이 그걸 겁내진 않았던 것 같아</p>
						</div>
						<!-- //등록내용 -->
						<!-- 등록파일 --><p class="fileNeme"><span class="itemTit">첨부파일</span><a href="#" class="itemCon">파일명을 클릭하면 다운이됩니다.jpg</a></p>
					</div>
					<!-- 라이브리댓글 -->
					<div class="replyWrap"></div>
					<!-- button -->
					<div class="btnarea">
						<div class="fr">
							<a href="#" class="btn">목록</a>
							<a href="javascript:openLayer('volunteer');" class="btn" title="자원봉사신청하기 레이어팝업 열기">신청하기</a>
						</div>
					</div>
					<!-- //button -->
				</div>
				
			</div>
			<!-- //CONTENTS -->
		</div>
	</div>
	<!-- //CONTENTS BODY -->
	
	<!-- 자원봉사신청하기 레이어팝업 -->
	<div id="volunteer" class="layer_wrap">
		<div class="layer_pop">
			<div class="layer_head">
				자원봉사 신청하기
				<a href="javascript:closeLayer('volunteer');">자원봉사신청하기 레이어팝업 닫기</a>	
			</div>
			<div class="layer_container">
				<fieldset>
					<legend>자원봉사신청 입력폼</legend>
					<div class="layer_contents">
						<!-- write -->
						<table class="table table-write">
							<caption>자원봉사 신청</caption>
							<colgroup>
								<col width="150"/>
								<col width=""/>
							</colgroup>
							<tbody>
								<tr>
									<th scope="row">제목</th>
									<td><input type="text" class="form-control col-unit9"></td>
								</tr>
								<tr>
									<th scope="row">봉사자</th>
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
										<input type="text" class="form-control"> @ <input type="text" class="form-control col-unit5" title="이메일 계정도메인">
										<select name="" id="" class="form-control" title="이메일 계정도메인 선택">
											<option value="">선택</option>
										</select>
									</td>
								</tr>
								<tr>
									<th scope="row">상세내용</th>
									<td class="editorWrap">
										<!-- 에디터영역 -->
									</td>
								</tr>
								<tr>
									<th scope="row">첨부파일</th>
									<td>
										<input type="file"> <span class="file_warn">추가 등록 파일 첨부가 가능합니다.</span>
									</td>
								</tr>
							</tbody>
						</table>
						<!-- //write -->
						<!-- 개인정보수집 -->
						<div class="privacy_wrap">
							<div>
								<p>개인 정보의 수집 및 이용에 대한 안내</p>
								1. 수집하는 개인정보 항목<br />
								- 필수항목 : 연락처, 이메일 주소<br /><br />
								2. 개인정보의 수집 및 이용목적<br />
								- 자원봉사 신청에 따른 본인 확인<br />
								- 자원봉사 모집자(굿네이버스)와의 원활한 의사소통 경로 확보<br /><br />
								3. 개인정보의 보유 및 이용기간<br />
								- 개인정보의 수집 및 이용목적이 달성된 후에 해당 정보를 지체 없이 파기합니다.<br />
								- 단, 관계법령의 규정에 의하여 보존할 필요가 있는 경우 회사는 관계법령이 정한 일정한 기간 동안 회원정보를 보관합니다.<br /><br />
								4. 개인정보의 공유 및 제공<br />
								- 입력하신 정보는 자원봉사를 필요로 하는 굿네이버스 자원봉사 모집 부서(단체)에서 열람할 수 있으며, 그 외에는 외부에 제공하거나 공개하지 않습니다.
								
							</div>
							<p class="check"><input type="checkbox" id=""/> <label for="">개인 정보의 수집 및 이용에 동의합니다.</label></p>
						</div>
						<!-- //개인정보수집 -->
					</div>
				</fieldset>
				<div class="btnarea layer_btn">
					<div class="fr">
						<a href="javascript:closeLayer('volunteer');" class="btn2">취소하기</a>
						<a href="#" class="btn">신청하기</a>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- //자원봉사신청하기 레이어팝업 -->
	
	<jsp:include page="/front/include/inc_footer.jsp" flush="false" />	
</body>
</html>