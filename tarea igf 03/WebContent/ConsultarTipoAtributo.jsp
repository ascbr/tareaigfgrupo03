<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="negocio.*"%>
<%@ page import="dominio.*"%>
<%@ page import="java.util.*"%>
<%!String mensaje ;%>
<%
Ctr_TB_tipo_atributo ctrl= new Ctr_TB_tipo_atributo();
String c_tipo_atributo = request.getParameter("c_tipo_atributo").trim();
TB_tipo_atributo tipo_atributo=ctrl.daTB_tipo_atributoByc_tipo_atributo(c_tipo_atributo);

mensaje="";
//String date = f_ingreso.toString();

mensaje +="<form action='eliminarTB_aplica.jsp' method='post'>"+
"<fieldset>"+
"<legend>Informacion del Tipo de Atributo</legend>"+
  "<div class='row'>"+
    "<div class='small-8'>"+
      "<div class='row'>"+
        "<div class='small-3 columns'>"+
          "<label for='right-label' class='right inline'>"+"Codigo Tipo Atributo"+"</label>"+
        "</div>"+
        "<div class='small-9 columns'>"+
          "<input type='text' id='right-label' placeholder='c_tipo_atributo' name='c_tipo_atributo' value='"+ tipo_atributo.getC_tipo_atributo()+"'disabled>"+
        "</div>"+
      "</div>"+
      "<div class='row'>"+
        "<div class='small-3 columns'>"+
          "<label for='right-label' class='right inline'>"+"Descripcion del Tipo de Atributo"+"</label>"+
        "</div>"+
        "<div class='small-9 columns'>"+
          "<input type='text' id='right-label' placeholder='d_tipo_atributo' name='d_tipo_atributo' value='"+ tipo_atributo.getD_tipo_atributo()+"'disabled>"+
        "</div>"+
      "</div>"+
      "<div class='row'>"+
        "<div class='small-3 columns'>"+
          "<label for='right-label' class='right inline'>"+"Fecha de Ingreso"+"</label>"+
        "</div>"+
        "<div class='small-9 columns'>"+
          "<input type='text' id='right-label' placeholder='f_ingreso' name='f_ingreso' value='"+tipo_atributo.getF_ingreso()+"'disabled>"+
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
<title>Consultar Tipo Atributo</title>
<link rel="stylesheet" href="foundation/css/foundation.css">
</head>
<body>
<fieldset>
<legend>Informacion Tipo Atributo</legend>
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