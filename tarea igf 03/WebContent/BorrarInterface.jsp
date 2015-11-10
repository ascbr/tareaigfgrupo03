<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<%@ page import="negocio.*" %>
<%
	String id = request.getParameter("c_interface");	
	
	Ctr_AS_interface ctrl = new Ctr_AS_interface();

	boolean exito = ctrl.eliminar(id);

	String mensaje;
	
	if (exito) {
		mensaje = "¡¡¡ Se elimino la Interface !!! ";
	}else {
		mensaje = "¡¡¡ No existe esa Interface !!! ";
	}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Borrar Interface</title>
<link rel="stylesheet" href="foundation/css/foundation.css">
</head>
<body>
<fieldset>
<legend>Borrar Interface</legend>
  <div class="row">
    <div class="small-8">      
      <div class="row">        
 		<center><%=mensaje%><br><br>
        <a role="button" aria-label="submit form" href="BorrarInterface.html" class="button">Borrar otra Interface</a>
        <a role="button" aria-label="submit form" href="Main.jsp" class="button">Volver al menu</a></center>
      </div>
    </div>
  </div>      
</fieldset>
</body>
</html>