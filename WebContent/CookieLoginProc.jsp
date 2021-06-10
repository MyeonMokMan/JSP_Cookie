<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

<%
	request.setCharacterEncoding("euc-kr");

	//아이디 저장 버튼이 체크 되었는지 판단
	String save = request.getParameter("save");
	
	//아이디 값을 저장
	String id = request.getParameter("id");
	
	//저장 버튼이 눌렸다면
	if(save != null) {
		
		//쿠키를 사용할려면 쿠키 클래스를 생성해야한다.
		Cookie cookie = new Cookie("id", id); //1번째는 key 값 2번째는 value 값 
		
		//쿠키 유효 시간 설정
		cookie.setMaxAge(60*10); //10분간 유효
		
		//사용자에게 쿠키 값을 넘겨줌
		response.addCookie(cookie);
		
	}	
%>

</body>
</html>