<%@ page import="java.io.*" %>
<html>
<head>
<title>Página de administración</title>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1">
</head>

<body bgcolor="#FFFFFF" background="admin/imagenes/fondo_ces.gif">
<div align="center">
  <h1>ITIS - CES Felipe II</h1>
    Sistema de administración<br>
  <%
	java.util.Calendar cal = java.util.Calendar.getInstance(java.util.Locale.US);
	java.util.Date date    = cal.getTime();
	java.text.DateFormat formateadorHora = java.text.DateFormat.getTimeInstance(java.text.DateFormat.FULL);
	java.text.DateFormat formateadorFecha = java.text.DateFormat.getDateInstance(java.text.DateFormat.FULL);
	String fecha = formateadorFecha.format(date);
  %>
  <h3>La fecha actual es: <%=fecha%><br><br>
  Dirección remota:  <%=request.getRemoteAddr()%><br>
  Navegador: <%=request.getHeader("User-Agent")%>
  </h3>
  <p>Introduce los datos de conexión:<br><br>
	<table border="0" cellpadding="0" cellspacing="0">
		<form ID="inicio" name="form_inicio" method="post" action="admin/entrada.jsp?ESTADO=INICIO" >
		<tr>
			<td align="right">Driver :</td>
			<td align="right">&nbsp;&nbsp;</td>
			<td align="left" colspan="2"><input type="text" name="driver" size="50" value="com.mysql.jdbc.Driver"></td>
		</tr>
		<tr>
			<td align="right">URL :</td>
			<td align="right">&nbsp;&nbsp;</td>
			<td align="left" colspan="2"><input type="text" name="url" size="50" value="jdbc:mysql://localhost:3306/BDCES"></td>
		</tr>
		<tr>
			<td align="right">usuario :</td>
			<td align="right">&nbsp;</td>
			<td align="left" colspan="2"><input type="text" name="usuario" size="50" value=""></td>
		</tr>
		<tr>
			<td align="right">contraseña :</td>
			<td align="right">&nbsp</td>
			<td align="left" colspan="2"><input type="password" name="password" size="50" value=""></td>
		</tr>
		<tr>
			<td align="right" colspan="2">&nbsp;</td>
			<td align="left"><input type="submit" name="Submit" value="Login"></td>
			<td align="right"><a href="http://192.168.0.59/itis/">Web</a></td>
		</tr>
		</form>
	</table>
  </form>
</div>
</body>
</html>
