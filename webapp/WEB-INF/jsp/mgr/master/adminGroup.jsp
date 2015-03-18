<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
			<%@ include file="/mgr/include/inc_header.jsp" %>
			<!-- pageContents -->
			<div id="page-wrapper">
				<!-- pageTitle -->
				<%@ include file="/mgr/include/inc_pageTitle.jsp" %>

				<div class="contents">
					<!-- admin page contents start -->
					<!-- list -->
					<fieldset>
						<legend>관리자 그룹 리스트</legend>
						<!-- list -->
						<table class="table table-bordered table-list">
							<caption>관리자 그룹 리스트</caption>
							<colgroup>
								<col width="70%"/>
								<col width="30%"/>
							</colgroup>
							<thead>
								<tr>
									<th scope="col">관리자 그룹명</th>
									<th scope="col">사용여부</th>
								</tr>
							</thead>
							<tbody>
<c:forEach var="list" items="${resultList}" varStatus="status">
<!-- 슈퍼관리자만 제외 -->							
<c:if test="${list.group_nm != 'super' }">
								<tr>
									<th><input type="text" name="" id="" title="관리자 그룹명 입력" value="${list.group_nm }" class="form-control col-unit9"/></th>
									<td>
										<label for="" class="radio-inline"><input type="radio" name="use_fl${list.group_sq}" id="rad_usey${status.count}" value="Y" <c:if test="${list.use_fl == 'Y'}">checked="checked"</c:if>/> Yes</label>
										<label for="" class="radio-inline"><input type="radio" name="use_fl${list.group_sq}" id="rad_usen${status.count}" value="N" <c:if test="${list.use_fl == 'N'}">checked="checked"</c:if>/> No</label>
									</td>
								</tr>
</c:if>								
</c:forEach>
							</tbody>
						</table>
						<!-- //board list -->				
						<!-- button -->
						<!-- <div class="btnarea">
							<div class="fr">
								<a href="#"class="btn btn-green" id="btn_submit">적용</a> 
							</div>
						</div> -->
						<!-- //button -->
					</fieldset>
					<!-- //list -->
					<!-- //admin page contents end -->
				</div>
			</div>
			<!-- pageContents -->
		</div>
		<!-- //contentsWrapper -->
	</div>
	
	<jsp:include page="/mgr/include/inc_footer.jsp" flush="false" />
	<script type="text/javascript">
		$(document).ready(function(){
			$("input[type='radio']").on("click",function(i,v){
				var group_sq = $(this).attr("name").replace("use_fl","");
				var send = "/mgr/groupProc.gn";
                var pars = "group_sq=" + group_sq + "&use_fl=" + $(this).val();
                
                $.post(send,pars,function(){
                	custom.cus_alert("정상적으로 수정되었습니다.","message");                	
                });
			});
		});
	</script>	
</body>
</html>