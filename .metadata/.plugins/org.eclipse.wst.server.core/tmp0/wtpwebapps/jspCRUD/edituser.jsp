<%@page import="jspCRUD.dao.UserDao"%>  
<jsp:useBean id="u" class="jspCRUD.bean.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
int i=UserDao.update(u);  
response.sendRedirect("viewusers.jsp");  
%>  