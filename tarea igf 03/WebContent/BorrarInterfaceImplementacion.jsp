<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="negocio.*" %>
<%
	int id = Integer.parseInt(request.getParameter("c_interface_implementa"));	
	
	Ctr_AS_interface_implementacion ctrl = new Ctr_AS_interface_implementacion();

	boolean exito = ctrl.eliminar(id);

	String mensaje;
	
	if (exito) {
		mensaje = "¡¡¡ Se elimino la Interface de Implementacion !!! ";
	}else {
		mensaje = "¡¡¡ No existe esa Interface de Implementacion !!! ";
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Borrar Interface de Implementacion</title>
<link rel="stylesheet" href="foundation/css/foundation.css">
</head>
<body>
<fieldset>
<legend>Borrar Interface de Implementacion</legend>
  <div class="row">
    <div class="small-8">      
      <div class="row">        
 		<center><%=mensaje%><br><br>
        <a role="button" aria-label="submit form" href="BorrarInterfaceImplementacion.html" class="button">Borrar otra Interface de Implementacion</a>
        <a role="button" aria-label="submit form" href="Main.jsp" class="button">Volver al menu</a></center>
      </div>
    </div>
  </div>      
</fieldset>
</body>
</html>