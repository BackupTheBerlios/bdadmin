<%
    /*  Fichero que almacenar� los datos de la conexi�n con la BD. Ser� importado por las
        p�ginas que necesiten conectarse a la BD. Estando los datos en un s�lo lugar, si
        cambia la conexi�n, s�lo habr� que modificar este fichero, */

	String usuarioBD = "userweb";
	String claveBD = "1pacorro";

	// ----------------- Versi�n ORACLE --------------------

	String url = "jdbc:oracle:thin:@192.168.0.59:1521:BDCES";
	String driver = "oracle.jdbc.driver.OracleDriver";
%>
