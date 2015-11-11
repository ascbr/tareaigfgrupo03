<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="negocio.*"%>
<%@ page import="dominio.*"%>
<%@ page import="java.util.*"%>
<%!String mensaje ;%>
<%
Ctr_TB_aplicativo ctrl= new Ctr_TB_aplicativo();
String c_aplicativo = request.getParameter("c_aplicativo").trim();
TB_aplicativo aplicativo=ctrl.daTB_aplicativoByc_aplicativo(c_aplicativo);

mensaje="";
//String date = f_ingreso.toString();

mensaje +="<form action='eliminarTB_aplica.jsp' method='post'>"+
"<fieldset>"+
"<legend>Consultar Aplicativo</legend>"+
  "<div class='row'>"+
    "<div class='small-8'>"+
      "<div class='row'>"+
        "<div class='small-3 columns'>"+
          "<label for='right-label' class='right inline'>"+"Codigo Aplicativo"+"</label>"+
        "</div>"+
        "<div class='small-9 columns'>"+
          "<input type='text' id='right-label' placeholder='c_aplicativo' name='c_aplicativo' value='"+ aplicativo.getC_aplicativo()+"'disabled>"+
        "</div>"+
      "</div>"+
      "<div class='row'>"+
        "<div class='small-3 columns'>"+
          "<label for='right-label' class='right inline'>"+"Descripcion del Aplicativo"+"</label>"+
        "</div>"+
        "<div class='small-9 columns'>"+
          "<input type='text' id='right-label' placeholder='d_aplicativo' name='d_aplicativo' value='"+ aplicativo.getD_aplicativo()+"'disabled>"+
        "</div>"+
      "</div>"+
      "<div class='row'>"+
        "<div class='small-3 columns'>"+
          "<label for='right-label' class='right inline'>"+"Fecha de Ingreso"+"</label>"+
        "</div>"+
        "<div class='small-9 columns'>"+
          "<input type='text' id='right-label' placeholder='f_ingreso' name='f_ingreso' value='"+aplicativo.getF_ingreso()+"'disabled>"+
        "</div>"+
        "<a role='button' aria-label='submit form' href='Main.jsp' class='button'>"+"Volver al menu"+"</a>"+
      "</div>"+
    "</div>"+
  "</div>"+      
"</fieldset>"+
"</form>";
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Consultar Aplicativo</title>
<link rel="stylesheet" href="foundation/css/foundation.css">
</head>
<body>
<fieldset>
<legend>Informacion del Aplicativo</legend>
  <div class="row">
    <div class="small-8">      
      <div class="row">        
 <center><%=mensaje%><br><br>
      </div>
    </div>
  </div>      
</fieldset>
</body>
</html>