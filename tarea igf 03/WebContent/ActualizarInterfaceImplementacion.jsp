<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="dominio.*" %>
     <%@ page import="negocio.*" %>
 <%
String mensaje="";
Ctr_AS_interface_implementacion inter = new Ctr_AS_interface_implementacion();
int c_interface_implementa= Integer.parseInt(request.getParameter("c_interface_implementa"));
int c_interface_hijo= Integer.parseInt(request.getParameter("c_interface_hijo"));
int c_interface_padre=Integer.parseInt(request.getParameter("c_interface_padre"));


boolean exito= inter.actualizar(c_interface_implementa, c_interface_hijo, c_interface_padre); 
if (exito==true)
   mensaje="se actualizo la interface de implementacion correctamente";
else
   mensaje="hubo un error al actualizar la Interface de implementacion";	

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Actualizar Interface de Implementacion</title>
<link rel="stylesheet" href="foundation/css/foundation.css">
</head>
<body>
<fieldset>
<legend>Actualiza la informacion de la Interface de implementacion</legend>
  <div class="row">
    <div class="small-8">      
      <div class="row">        
 <center><%=mensaje%><br><br>
        <a role="button" aria-label="submit form" href="ActualizarInterfaceImplementacion.html" class="button">Actualizar otra Interface de implementacion</a>
        <a role="button" aria-label="submit form" href="Main.jsp" class="button">Volver al menu</a>	</center>
      </div>
    </div>
  </div>      
</fieldset>
</body>
</html>