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

	//���̵� ���� ��ư�� üũ �Ǿ����� �Ǵ�
	String save = request.getParameter("save");
	
	//���̵� ���� ����
	String id = request.getParameter("id");
	
	//���� ��ư�� ���ȴٸ�
	if(save != null) {
		
		//��Ű�� ����ҷ��� ��Ű Ŭ������ �����ؾ��Ѵ�.
		Cookie cookie = new Cookie("id", id); //1��°�� key �� 2��°�� value �� 
		
		//��Ű ��ȿ �ð� ����
		cookie.setMaxAge(60*10); //10�а� ��ȿ
		
		//����ڿ��� ��Ű ���� �Ѱ���
		response.addCookie(cookie);
		
	}	
%>

</body>
</html>