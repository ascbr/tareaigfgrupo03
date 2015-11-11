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

mensaje +="<form id='frm_borrar' action='BorraTipoAtributos.jsp' method='post'>"+
"<fieldset>"+
"<legend>Eliminar Tipo Atributo</legend>"+
  "<div class='row'>"+
    "<div class='small-8'>"+
      "<div class='row'>"+
        "<div class='small-3 columns'>"+
          "<label for='right-label' class='right inline'>"+"Codigo Tipo Atributo"+"</label>"+
        "</div>"+
        "<div class='small-9 columns'>"+
          "<input type='text' id='right-label' placeholder='c_tipo_atributo' name='c_tipo_atributo' value='"+ tipo_atributo.getC_tipo_atributo()+"'readonly>"+
        "</div>"+
      "</div>"+
      "<div class='row'>"+
        "<div class='small-3 columns'>"+
          "<label for='right-label' class='right inline'>"+"Descripcion del Tipo Atributo"+"</label>"+
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
          "<input type='text' id='campofecha' placeholder='f_ingreso' name='f_ingreso' value='"+tipo_atributo.getF_ingreso()+"'disabled>"+
        "</div>"+
        "<div   style='display: inline-block;''><div style='float:left;padding:2px;'><input type = 'button' role='button' aria-label='button' id='Eliminar' value='Eliminar Tipo Atributo' class='button'></div>"+ 
        "<div style='float:left;padding:2px;'><a role='button' aria-label='submit form' href='Main.jsp' class='button'>"+"Volver al menu"+"</a></div></div>"+
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
<title>Insert title here</title>
<link rel="stylesheet" href="foundation/css/foundation.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
  <link rel="stylesheet" href="/resources/demos/style.css">
  <script>
  $(function() {
    $( "#dialog" ).dialog({
      autoOpen: false,
      show: {
        effect: "blind",
        duration: 1000
      },
      hide: {
        effect: "explode",
        duration: 1000
      }
    });
 
    $( "#Eliminar" ).click(function() {
      $( "#dialog" ).dialog( "open" );
    });
  });
  
  $(function(){
  	$("#No").click(function(){
  		$("#dialog").dialog("close");
  	});
  });
  
  $(function(){
	  	$("#Si").click(function(){
	  		$("#frm_borrar").submit();
	  	});
	  });
  </script>
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
<div id="dialog" title="Confirmación">
  <p>Esta seguro que desea Eliminar</p>
  <div style="float:left;">
  	<div style="float:left;"><input id="Si" type=button value="Si"></div>
  	<div style="float:left;"><input id="No" type=button value="No"></div>
  </div>
</div>
</body>
</html>