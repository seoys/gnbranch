<!-- 엑셀 -->
<%@ page language="java" contentType="application/vnd.ms-excel;charset=UTF-8" pageEncoding="UTF-8"%>
 
<!-- 워드 -->
<%-- <%@ page language="java" contentType="application/vnd.word;charset=UTF-8" pageEncoding="UTF-8"%> --%>
 
<!-- 한글 -->
<%-- <%@ page language="java" contentType="application/hwp;charset=UTF-8" pageEncoding="UTF-8"%> --%>
 
<%
 
//******************************MS excel******************************
    // MS excel로 다운로드/실행, filename에 저장될 파일명을 적어준다.
    response.setHeader("Content-Disposition","attachment;filename=member.xls");
    response.setHeader("Content-Description", "JSP Generated Data");
     
    // ↓ 이걸 풀어주면 열기/저장 선택창이 뜨는 게 아니라 그냥 바로 저장된다.
//  response.setContentType("application/vnd.ms-excel");
//*********************************************************************
 
 
//******************************MS word********************************
    // MS word로 다운로드/실행, filename에 저장될 파일명을 적어준다.
//  response.setHeader("Content-Disposition", "attachment;filename=member.doc");
//  response.setHeader("Content-Description", "JSP Generated Data");
     
    // ↓ 이걸 풀어주면 열기/저장 선택창이 뜨는 게 아니라 그냥 바로 저장된다.
//  response.setContentType("application/vnd.ms-word");
//*********************************************************************
     
     
//******************************한글(hwp)********************************
    // 한글(hwp)로 다운로드/실행, filename에 저장될 파일명을 적어준다.
//  response.setHeader("Content-Disposition", "attachment;filename=member.hwp");
//  response.setHeader("Content-Description", "JSP Generated Data");
     
    // ↓ 이걸 풀어주면 열기/저장 선택창이 뜨는 게 아니라 그냥 바로 저장된다.
//  response.setContentType("application/hwp");
//*********************************************************************
 
%>
<html>
<head>
<meta http-equiv="content-type" content="application/vnd.ms-excel;charset=utf-8" />
</head>
<body>
<h3>회원 목록</h3>
 
    <table border="1">
        <thead>
            <tr>
                <th>ID</th>
                <th>이름</th>
                <th>전화번호</th>
            </tr>
        </thead>
         
        <tbody>
            <tr>
                <td>patriot2</td>
                <td>유관순</td>
                <td style="mso-number-format:"\@";">0431234567</td>
            </tr>
            <tr>
                <td>pitcher</td>
                <td>류현진</td>
                <td style="mso-number-format:"\@";">01034567890</td>
            </tr>
            <tr>
                <td>historian</td>
                <td>신채호</td>
                <td>001886123456</td>
            </tr>
        </tbody>
    </table>
</body>
</html>