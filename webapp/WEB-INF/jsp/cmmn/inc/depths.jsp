<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<c:set var="paths" value="${pageContext.request.requestURL}"/>
<c:set var="splitPath" value="${fn:split(paths,'/')}"/>
<c:forEach var="list" items="${splitPath}" varStatus="status">
	<c:if test="${status.count == 5}"><c:set var="depth1" value="${list}"/></c:if>
	<c:if test="${status.count == 6}"><c:set var="depth2" value="${list}"/></c:if>
	<c:if test="${status.count == 7}"><c:set var="depth3" value="${fn:replace(list,'.jsp','')}"/></c:if>
</c:forEach>

<!-- 2depth 메뉴정의 -->
<c:choose>
	<c:when test="${depth2 == 'master'}">
		<c:set var="depth2Msg" value="지부 마스터"/>
	</c:when>
	<c:when test="${depth2 == 'branchMain'}">
		<c:set var="depth2Msg" value="지부 메인 관리"/>
	</c:when>
</c:choose>

<!-- 3depth 메뉴정의 -->
<c:choose>
	<c:when test="${depth3 == 'adminGroup'}">
		<c:set var="depth3Msg" value="관리자 그룹 관리"/>
		<c:set var="depth11Active" value="active"/>
	</c:when>
	<c:when test="${depth3 == 'accountList' || depth3 == 'accountWrite'}">
		<c:set var="depth3Msg" value="지부관리자 계정 관리"/>
		<c:set var="depth12Active" value="active"/>
	</c:when>
	
	<c:when test="${depth3 == 'bannerList' || depth3 == 'bannerWrite'}">
		<c:if test="${kind =='M'}">
			<c:set var="depth3Msg" value="메인 배너"/>
			<c:set var="depth31Active" value="active"/>
		</c:if>
		<c:if test="${kind =='F'}">
			<c:set var="depth3Msg" value="패밀리 배너"/>
		<c:set var="depth32Active" value="active"/>
		</c:if>
		
	</c:when>
</c:choose>
