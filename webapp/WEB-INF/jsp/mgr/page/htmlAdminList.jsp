<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<%@ include file="/mgr/include/inc_header.jsp" %>
			<!-- pageContents -->
			<div id="page-wrapper">
				<!-- pageTitle -->
				<%@ include file="/mgr/include/inc_pageTitle.jsp" %>

				<div class="contents">
					<!-- admin page contents start -->
					
					<h3>사이트 페이지 생성</h3>
					<!-- 페이지생성 -->
					<form name="frm" id="frm" method="post" onSubmit="return false;">
					<div class="well well-sm htmlAdmin">
						<fieldset>
							<legend>사이트 페이지 생성</legend>
							<label for="sel_groupsq">적용그룹선택</label>
							<!-- 적용그룹선택 -->
							<select name="group_sq" id="sel_groupsq" class="form-control">
								<c:forEach var="list" items="${resultList}" varStatus="status">
                               	<c:set var="selected" value=""/>
                               	<c:if test="${list.group_sq == resultMap['GROUP_SQ'] }">
                               		<c:set var="selected" value="selected=\"selected\""/>
                               	</c:if>
                                   <option value="${list.group_sq}" ${selected}>${list.group_nm}</option>
                               </c:forEach>
							</select>
							<label for="sel_akindlf">페이지종류</label>
							<!-- 페이지종류선택 -->
							<select name="akind_fl" id="sel_akindlf" class="form-control" onChange="ipage.kindChange(this.value);">
								<option value="0">HTML</option>
								<option value="1">게시판</option>
							</select>
							<label for="sel_tkindfl">페이지형태</label>
							<!-- 템플릿선택 -->
							<select name="tkind_fl" id="sel_tkindfl" class="form-control last">
								<!-- HTML -->
								<option value="0">해당없음</option>
								<option value="1">인사말</option>
								<option value="2">지부소개</option>
								<option value="3">연혁</option>
								<!-- BOARD -->
								<!-- <option value="4">일반게시판</option>
								<option value="5">일반게시판(기간포함)</option>
								<option value="6">썸네일형게시판</option>
								<option value="7">갤러리형게시판</option> -->
							</select>
							
							<!-- button -->
							<a href="#" class="btn btn-default" id="btn_submit">페이지 생성하기</a>
						</fieldset>
					</div>
					</form>
					<!-- //페이지생성 -->
					
					<h3>사이트 페이지 생성리스트</h3>
					<!-- board list -->
					<table class="table table-bordered table-list">
						<caption>사이트 페이지 리스트</caption>
						<colgroup>
							<col width="15%"/>
							<col width="12%"/>
							<col width="20%"/>
							<col width=""/>
							<col width="20%"/>
						</colgroup>
						<thead>
							<tr>
								<th scope="col">
									<!-- 마스터관리자 -->적용그룹
									<!-- 지부관리자 --><!-- NO -->
								</th>
								<th scope="col">페이지종류</th>
								<th scope="col">페이지형태</th>
								<th scope="col">페이지명</th>
								<th></th>
							</tr>
						</thead>
						<tbody>
							<!-- 마스터관리자 생성 -->
<c:choose>
	<c:when test="${!empty tplResult}">
		<c:forEach items="${tplResult}" var="list" varStatus="status" >
							<!-- <tr class="lock"> -->
							<tr>
								<td>${list.group_nm }</td>
								<td>
									<c:if test="${fn:trim(list.akind_fl) == '0'}">HTML</c:if>
									<c:if test="${fn:trim(list.akind_fl) == '1'}">게시판</c:if>
								</td>
								<td>
									<c:choose>
										<c:when test="${fn:trim(list.tkind_fl) == '0'}">해당없음</c:when>
										<c:when test="${fn:trim(list.tkind_fl) == '1'}">인사말</c:when>
										<c:when test="${fn:trim(list.tkind_fl) == '2'}">지부소개</c:when>
										<c:when test="${fn:trim(list.tkind_fl) == '3'}">연혁</c:when>
										<c:when test="${fn:trim(list.tkind_fl) == '4'}">일반게시판</c:when>
										<c:when test="${fn:trim(list.tkind_fl) == '5'}">일반게시판(기간포함)</c:when>
										<c:when test="${fn:trim(list.tkind_fl) == '6'}">썸네일형게시판</c:when>
										<c:when test="${fn:trim(list.tkind_fl) == '7'}">갤러리형게시판</c:when>
									</c:choose>
								</td>
								<td>${list.page_nm}</td>
								<td>
									<c:if test="${fn:trim(list.akind_fl) == '0'}">
									<a href="#n" class="btn btn-orange" onClick="ipage.pagelink(${list.con_sq},${list.group_sq},${fn:trim(list.akind_fl)},${fn:trim(list.tkind_fl)});">수정</a>
									</c:if>
									<c:if test="${fn:trim(list.akind_fl) == '1'}">
									<a href="#" target="_blak" class="btn btn-orange">컨텐츠 생성</a>
									</c:if>
								</td>
							</tr>
		</c:forEach>							
	</c:when>
	<c:otherwise>
		
	</c:otherwise>
</c:choose>							
							
							<!-- //마스터관리자 생성 -->
							<!-- 지부관리자 -->
							<!-- <tr>
								<td>1</td>
								<td>HTML</td>
								<td>인사말</td>
								<td>인사말</td>
								<td><a href="#" target="_blak" class="btn btn-orange">수정</a></td>
							</tr>
							<tr>
								<td>2</td>
								<td>게시판</td>
								<td>일반게시판</td>
								<td>공지사항</td>
								<td>
									<a href="#" target="_blak" class="btn btn-orange">수정</a>
									게시판일경우에만 노출
									<a href="#" target="_blak" class="btn btn-orange">컨텐츠 생성</a>
								</td>
							</tr> -->
							<!-- //지부관리자 -->
						</tbody>
					</table>
					<!-- //board list -->
					<!-- //admin page contents end -->
				</div>
			</div>
			<!-- pageContents -->
		</div>
		<!-- //contentsWrapper -->
	</div>
	
	<%@ include file="/mgr/include/inc_footer.jsp" %>
	<script type="text/javascript">
		$(document).ready(function(){
			$("#btn_submit").on("click",function(){
				var send = "/mgr/menuTemplateProc.gn";
				var pars = $("form").serialize();
				
				$.getJSON(send,pars,function(xdata){
					location.reload();
				});
				
			});
		});
	
		var ipage = {
				kindChange: function(val){
					$("#sel_tkindfl").empty();
					if(val == "0"){
						$("#sel_tkindfl")
						.append("<option value='0'>해당없음</option>")
						.append("<option value='1'>인사말</option>")
						.append("<option value='2'>지부소개</option>")
						.append("<option value='3'>연혁</option>");
					}else if(val == "1"){
						$("#sel_tkindfl")
						.append("<option value='4'>일반게시판</option>")
						.append("<option value='5'>일반게시판(기간포함)</option>")
						.append("<option value='6'>썸네일형게시판</option>")
						.append("<option value='7'>갤러리형게시판</option>");
					};
				},
				pagelink: function(arg1,arg2,arg3,arg4){
					var arg4 = $.trim(arg4);
					var link = "";
					
					if(arg4 == "0"){
						/* 해당없음 */
						link = "/mgr/htmlBasicWrite.gn";
					}else if(arg4 == "1"){
						/* 인사말 */
						link = "/mgr/htmlIntroWrite.gn";
					}else if(arg4 == "2"){
						
					}else if(arg4 == "3"){
						
					}
					
					location.href = link + "?con_sq=" + arg1 + "&group_sq=" + arg2;
				}
		};
</script>
</body>
</html>