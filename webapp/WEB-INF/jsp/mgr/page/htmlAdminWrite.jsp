<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<%@ include file="/mgr/include/inc_header.jsp" %>
			<!-- pageContents -->
			<div id="page-wrapper">
				<!-- pageTitle -->
				<%@ include file="/mgr/include/inc_pageTitle.jsp" %>

				<div class="contents">
					<!-- admin page contents start -->
					<!-- write -->
					<fieldset>
						<legend>HTML 페이지 등록</legend>
						<!-- board write -->
						<table class="table table-bordered table-write">
							<caption>HTML 페이지 등록</caption>
							<colgroup>
								<col width="200"/>
								<col width=""/>
							</colgroup>
							<tbody>
								<tr>
									<th scope="row">적용그룹</th>
									<td>
									<c:forEach var="list" items="${resultList}" varStatus="status">
									<c:if test="${list.group_sq == continfoVO.group_sq}">
									  ${list.group_nm}
                               	 	</c:if>
	                               </c:forEach>
	                               
									</td>
								</tr>
								<tr>
									<th scope="row">페이지종류 &amp; 형태 </th>
									<!-- 페이지선택 항목 노출 -->
									<td>종류 : <em>
									<c:if test="${fn:trim(continfoVO.akind_fl) == '0'}">HTML</c:if>
									<c:if test="${fn:trim(continfoVO.akind_fl) == '1'}">게시판</c:if>
									</em> 템플릿형태 : <em>
									<c:if test="${fn:trim(continfoVO.tkind_fl) == '0'}">해당없음</c:if>
									<c:if test="${fn:trim(continfoVO.tkind_fl) == '1'}">인사말</c:if>
									<c:if test="${fn:trim(continfoVO.tkind_fl) == '2'}">지부소개</c:if>
									<c:if test="${fn:trim(continfoVO.tkind_fl) == '3'}">연혁</c:if>
									<c:if test="${fn:trim(continfoVO.tkind_fl) == '4'}">일반게시판</c:if>
									<c:if test="${fn:trim(continfoVO.tkind_fl) == '5'}">일반게시판(기간포함)</c:if>
									<c:if test="${fn:trim(continfoVO.tkind_fl) == '6'}">썸네일형게시판</c:if>
									<c:if test="${fn:trim(continfoVO.tkind_fl) == '7'}">갤러리형게시판</c:if>
									</em></td>
								</tr>
								<tr>
									<th scope="row">HTML 페이지명</th>
									<td><input type="text" class="form-control col-unit9"></td>
								</tr>
								<tr>
									<th scope="row">서브 타이틀</th>
									<td><input type="text" class="form-control col-unit9"></td>
								</tr>
								<tr>
									<th scope="row">내용</th>
									<td class="editorWrap">
										<!-- 에디터영역 -->
										<textarea name="editor1"></textarea>
									</td>
								</tr>
								<tr>
									<th scope="row">사용 여부</th>
									<td>
										<label for="" class="radio-inline"><input type="radio" name="" id="" value="" /> Yes</label>
										<label for="" class="radio-inline"><input type="radio" name="" id="" value="" /> No</label>
									</td>
								</tr>
								<tr>
									<th scope="row">수정 권한</th>
									<td>
										<label for="" class="radio-inline"><input type="radio" name="" id="" value="" /> Yes</label>
										<label for="" class="radio-inline"><input type="radio" name="" id="" value="" /> No</label>
									</td>
								</tr>
							</tbody>
						</table>
						<!-- //board write -->
						<!-- button -->
						<div class="btnarea">
							<div class="fr">
								<button class="btn btn-green">등록</button>
								<button class="btn btn-green" id="btn_cancel">취소</button>
							</div>
						</div>
						<!-- //button -->
					</fieldset>
					<!-- //write -->
					<!-- //admin page contents end -->
				</div>
			</div>
			<!-- pageContents -->
		</div>
		<!-- //contentsWrapper -->
	</div>
	
	<%@ include file="/mgr/include/inc_footer.jsp" %>
	<script src="/ckeditor/ckeditor.js"></script>
	<script type="text/javascript">
	    CKEDITOR.replace('editor1',{enterMode:'2',shiftEnterMode:'3',filebrowserUploadUrl: '/editor/upload.gn'});
	    
		$(document).ready(function(){
			$("#btn_cancel").on("click",function(){
				location.href = "/mgr/menuTemplateList.gn";
			});
		});
		
		var CKEditorFuncNum = function(xdata){
			log(xdata);
		}
	</script>
</body>
</html>