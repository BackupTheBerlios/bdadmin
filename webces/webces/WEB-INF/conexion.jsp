<%
    /*  Fichero que almacenará los datos de la conexión con la BD. Será importado por las
        páginas que necesiten conectarse a la BD. Estando los datos en un sólo lugar, si
        cambia la conexión, sólo habrá que modificar este fichero, */

	String usuarioBD = "userweb";
	String claveBD = "1pacorro";

	// ----------------- Versión ORACLE --------------------

	String url = "jdbc:oracle:thin:@192.168.0.59:1521:BDCES";
	String driver = "oracle.jdbc.driver.OracleDriver";
%>
