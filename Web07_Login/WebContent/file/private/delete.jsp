<%@page import="org.apache.commons.io.FileDeleteStrategy"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="java.io.BufferedOutputStream"%>
<%@page import="java.io.File"%>
<%@page import="java.io.FileInputStream"%>
<%@page import="test.file.dao.FileDao"%>
<%@page import="test.file.dto.FileDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String id = (String)session.getAttribute("id");
	//1. 파라미터로 전달되는 삭제할 파일의 번호를 읽어온다.
	int num = Integer.parseInt(request.getParameter("num"));
	//2. db에서 해당 파일의 정보를 읽어온다.
	FileDto dto = FileDao.getInstance().getData(num);
	boolean isSuccess = false;
	
	if(!dto.getWriter().equals(id)){
		response.sendError(HttpServletResponse.SC_FORBIDDEN,"뒤진다 너 ");
		return;
	}
		//3. 파일 시스템에서  파일( 파일이름 접두어가 붙은 이름) 을 삭제한다.
		String saveFileName=dto.getSaveFileName(); //저장된 파일명
		
		//다운로드 시켜줄 파일의 실제 경로 구성하기
		String path=application.getRealPath("/upload")
				+File.separator+saveFileName;
		
		File file = new File(path); 
		if( file.exists())
		{ 
			if(file.delete())
			{ 
				System.out.println("파일삭제 성공");
			}
			else
			{
				System.out.println("파일삭제 실패"); 
			} 
		}
		else
		{
			System.out.println("파일이 존재하지 않습니다."); 
		}
		//4. DB에서 해당 파일의 정보를 삭제한다.
		isSuccess = FileDao.getInstance().deleteData(num);
	
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<script>
	<%if(isSuccess) {%>
		alert("삭제되었습니다.");
	<%}else{%>
		alert("삭제에 실패했습니다.");
	<%}%>
	location.href = "${pageContext.request.contextPath}/file/list.jsp";
</script>
</body>
</html>