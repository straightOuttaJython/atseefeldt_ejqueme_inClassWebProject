<%@ page language="java" import="java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<% 
	String anyErrors = request.getParameter("Error");
	if (anyErrors!=null) {
		String name = request.getParameter("name");
		if (anyErrors.equals("1"))
			out.println("Hello "+name+" <em><strong>PROVIDE A ROW VALUE GREATER THAN 0</em></strong>");
		else if (anyErrors.equals("2"))
			out.println("Hello "+name+" <em><strong>PROVIDE A COLUMN VALUE GREATER THAN 0</em></strong>");
	}
		
%>
<form action="createtable.jsp" name="classexerciseform">
<table style="text-align: left; width: 100%;" border="1" cellpadding="2" cellspacing="2">
  <tbody>
    <tr>
      <td style="vertical-align: top;">Enter your name:<br>
      </td>
      <td style="vertical-align: top;"><input name="name"><br>
      </td>
    </tr>
    <tr>
      <td style="vertical-align: top;">Enter number of rows:<br>
      </td>
      <td style="vertical-align: top;"><input value="1" name="rows"><br>
      </td>
    </tr>
    <tr>
      <td style="vertical-align: top;">Enter number of columns:<br>
      </td>
      <td style="vertical-align: top;"><input value="1" name="cols"><br>
      </td>
    </tr>
    <tr>
      <td style="vertical-align: top;">
      <input type="submit">
      <br>
      </td>
      <td style="vertical-align: top;"><input type="reset"><br>
      </td>
    </tr>
  </tbody>
</table>
</form>
</body>
</html>