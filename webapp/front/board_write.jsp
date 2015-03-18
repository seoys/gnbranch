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
				<div class="contents board write">
					<fieldset>
						<legend>게시판 글쓰기</legend>
						<div class="layer_contents">
							<!-- write -->
							<table class="table table-write">
								<caption>게시판 글쓰기</caption>
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
										<th scope="row">작성자</th>
										<td><input type="text" class="form-control"></td>
									</tr>
									<tr>
										<th scope="row">내용</th>
										<td class="editorWrap">
											<!-- 에디터영역 -->
										</td>
									</tr>
									<tr>
										<th scope="row">첨부파일</th>
										<td><input type="file"></td>
									</tr>
									<tr>
										<th scope="row">보안 문자입력</th>
										<td class="security">
											<p>보안 문자를 입력하여 주시기 바랍니다.</p>
											<div class="securityBox">
												<img src="/images/front/temp/temp_number.gif" alt="" /> 
												<div class="inputBox"><p>좌측 보안문자(숫자) 입력</p><input type="text" class="form-control"></div>
											</div>
											<p>- 악성 게시글을 방지하기 위해 보안절차를 거치고 있습니다.<br />- 화면에 출력된 이미지(숫자)를 정확하게 입력해 주시기 바랍니다.</p>
										</td>
									</tr>
								</tbody>
							</table>
							<!-- //write -->
							<!-- button -->
							<div class="btnarea">
								<span class="fl">* 욕설, 비방, 상업적인 게시글은 관리자에 의해 삭제될 수 있습니다.</span>
								<div class="fr">
									<a href="#" class="btn">등록</a>
									<a href="#" class="btn">취소</a>
								</div>
							</div>
							<!-- //button -->
						</div>
					</fieldset>
				</div>
				
			</div>
			<!-- //CONTENTS -->
		</div>
	</div>
	<!-- //CONTENTS BODY -->
	
	<jsp:include page="/front/include/inc_footer.jsp" flush="false" />
</body>
</html>