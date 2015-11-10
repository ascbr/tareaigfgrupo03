<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="negocio.*"%>
<%@ page import="dominio.*"%>
<%@ page import="java.util.*"%>

<%!String mensaje = "";%>
<%
	Ctr_AS_interface_implementacion jrv = new Ctr_AS_interface_implementacion();
	List lista = jrv.miembro();

	int numero = lista.size();
	jrv.miembro();
	if (lista.isEmpty())
		mensaje = "No Hay Datos";
	else {
		AS_interface_implementacion jrvactual;
		mensaje += "<table><tr> <th>ID</th> <th></th> <th>C_INTERFACE_IMPLEMENTA</th> <th>C_INTERFACE_PADRE</th> <th>C_INTERFACE_HIJO</th> </tr>";
		for (int i = 0; i < numero; i++) {
			jrvactual = (AS_interface_implementacion) lista.get(i);
			mensaje += ("<tr><th>" + jrvactual.getC_interface_implementa() + "</th>"
					+ "<th>" + jrvactual.getC_interface_padre() + "</th>"
					+ "<th>" + jrvactual.getC_interface_hijo() + "</th>");
		}
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Consulta Interface de Implementacion</title>
<link rel="stylesheet" href="foundation/css/foundation.css">
</head>
<body>
	<fieldset>
		<legend>Interfaces de Implementacion</legend>
		<center><%=mensaje%></center>
		<a href="Main.jsp">Volver al menu</a>
	</fieldset>