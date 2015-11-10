<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="dominio.*" %>
     <%@ page import="negocio.*" %>
 <%
String mensaje="";
Ctr_AS_interface inter = new Ctr_AS_interface();
int c_interface= Integer.parseInt(request.getParameter("c_interface"));
String d_interface=request.getParameter("d_interface");
String c_usuario=request.getParameter("c_usuario");
String f_ingreso=request.getParameter("f_ingreso");

boolean exito= inter.actualizar(c_interface, d_interface, c_usuario,f_ingreso); 
if (exito==true)
   mensaje="se actualizo la interface correctamente";
else
   mensaje="hubo un error al actualizar la Interface";	

%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Actualizar Interface</title>
<link rel="stylesheet" href="foundation/css/foundation.css">
</head>
<body>
<fieldset>
<legend>Actualiza la informacion de la Interface</legend>
  <div class="row">
    <div class="small-8">      
      <div class="row">        
 <center><%=mensaje%><br><br>
        <a role="button" aria-label="submit form" href="ActualizarInterface.html" class="button">Actualizar otra Interface</a>
        <a role="button" aria-label="submit form" href="Main.jsp" class="button">Volver al menu</a>	</center>
      </div>
    </div>
  </div>      
</fieldset>
</body>
</html>