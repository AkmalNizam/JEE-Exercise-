<%@page import="jspCRUD.dao.UserDao"%>  
<jsp:useBean id="u" class="jspCRUD.bean.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  
<%  
UserDao.delete(u);  
response.sendRedirect("viewusers.jsp");  
%> 