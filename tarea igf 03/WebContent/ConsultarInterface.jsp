<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="negocio.*"%>
<%@ page import="dominio.*"%>
<%@ page import="java.util.*"%>

<%!String mensaje = "";%>
<%
	Ctr_AS_interface jrv = new Ctr_AS_interface();
	List lista = jrv.miembro();

	int numero = lista.size();
	jrv.miembro();
	if (lista.isEmpty())
		mensaje = "No Hay Datos";
	else {
		AS_interface jrvactual;
		mensaje += "<table><tr> <th>ID</th> <th></th> <th>C_INTERFACE</th> <th>C_USUARIO</th> <th>F_INGRESO</th><th>d_INTERFACEDIDO</th>  </tr>";
		for (int i = 0; i < numero; i++) {
			jrvactual = (AS_interface) lista.get(i);
			mensaje += ("<tr><th>" + jrvactual.getC_interface() + "</th>"
					+ "<th>" + jrvactual.getC_usuario() + "</th>"
					+ "<th>" + jrvactual.getF_ingreso() + "</th>"
					+ "<th>" + jrvactual.getD_interface()+ "</th>" + "<th>"	);
		}
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Consulta Interface</title>
<link rel="stylesheet" href="foundation/css/foundation.css">
</head>
<body>
	<fieldset>
		<legend>Interfaces</legend>
		<center><%=mensaje%></center>
		<a href="Main.jsp">Volver al menu</a>
	</fieldset>
</body>
</html>