<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="negocio.*" %>
<%@ page import="java.text.*" %>
<%@ page import="java.util.*" %>
<%! String mensaje; %>
<%
String c_aplicativo=request.getParameter("c_aplicativo");
String d_aplicativo=request.getParameter("d_aplicativo");
String f_ingreso=request.getParameter("f_ingreso");

mensaje="";

SimpleDateFormat formato=new SimpleDateFormat("dd-MM-yyyy");
Date f_ingreso_d=formato.parse(f_ingreso);

Ctr_TB_aplicativo ctrl= new Ctr_TB_aplicativo();

if(ctrl.modificarTB_aplicativo(c_aplicativo, d_aplicativo, f_ingreso_d)!= false)
	mensaje+="aplicativo Actualizado";
else
	mensaje+="Error en la Actualización";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Actualizar Aplicativo</title>
<link rel="stylesheet" href="foundation/css/foundation.css">
</head>
<body>
<fieldset>
<legend>Actualizar Aplicativo</legend>
  <div class="row">
    <div class="small-8">      
      <div class="row">        
 <center><%=mensaje%><br><br>
 <a role="button" aria-label="submit form" href="Main.jsp" class="button">Volver al menu</a>	</center>
        </div>
    </div>
  </div>      
</fieldset>
</body>
</html>