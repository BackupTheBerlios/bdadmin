<%@ page import="java.sql.*" %>
<html>
<head>
<title>Inicio de la administración</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>
<%
	HttpSession sesion = request.getSession(true);
	String p_estado = request.getParameter("ESTADO");
	String p_driver = request.getParameter("driver");
	String p_url = request.getParameter("url");
	String p_usuario = request.getParameter("usuario");
	String p_password = request.getParameter("password");
	if (p_estado != null)
	{
		if (p_estado.equals("INICIO")) {
			sesion.setAttribute("driver",p_driver);
			sesion.setAttribute("url",p_url);
			sesion.setAttribute("usuario",p_usuario);
			sesion.setAttribute("password",p_password);
		}
	}
	String driver  = (String)sesion.getAttribute("driver");
	String url = (String)sesion.getAttribute("url");
	String usuario  = (String)sesion.getAttribute("usuario");
	String password = (String)sesion.getAttribute("password");
%>
<BODY BGCOLOR="#FFFFFF" BACKGROUND="imagenes/fondo_ces.gif">
<center>
<h3>Tablas:</h3>
[ <a href="../admin.jsp">Volver</a> ]<br><br>
<%
	Connection canal = null;
	ResultSet tablas= null;
	Statement instruccion=null;
	try {
		Class.forName(driver);
		canal = DriverManager.getConnection(url,usuario,password);
		DatabaseMetaData dmd = canal.getMetaData();
		tablas = dmd.getTables(null,null,null,null);
		while (tablas.next())
		{
			out.print("<a href=\"tablas-listado.jsp?TABLA=" + tablas.getString(3) + "\">" + tablas.getString(3) + "</a><br>");
		}
		tablas.close();
		canal.close();
	}
	catch(Exception e)
	{
		out.print("<h3>Excepción: " + e.getMessage() + "</h3>");
	};

%>
<br><br>[ <a href="../admin.jsp">Volver</a> ]
</center>
</BODY>

</html>
