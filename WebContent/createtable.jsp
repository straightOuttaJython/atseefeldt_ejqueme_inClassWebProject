<%@ page language="java"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	Hello <% String name = request.getParameter("name");
			 out.print(name); %>, here is your table
	<br>
	<table style="text-align: left; width: 100%;" border="1"
		cellpadding="2" cellspacing="2">
		<tbody>
			<% int numRows = Integer.parseInt(request.getParameter("rows"));
			   int numCols = Integer.parseInt(request.getParameter("cols"));
			   if (numRows<=0)
				   response.sendRedirect("classexercise.jsp?Error=1&name="+name);
			   if (numCols<=0)
				   response.sendRedirect("classexercise.jsp?Error=2&name="+name);
			   for (int i=0; i<numRows; i++) {
			   		out.println("<tr>");
			   		for (int j=0; j<numCols; j++) {
			   			out.print("<td>");
			   			out.print((i+1)+", "+(j+1));
			   			out.println("</td>");
			   		}
			   		out.println("</tr>");
			   }%>
		</tbody>
	</table>
	<br>
</body>
</html>