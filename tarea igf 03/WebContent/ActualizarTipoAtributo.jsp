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

mensaje +="<form action='ActualizaTipoAtributos.jsp' method='post'>"+
"<fieldset>"+
"<legend>Actualizar Tipo Atributo</legend>"+
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
          "<input type='text' id='right-label' placeholder='d_tipo_atributo' name='d_tipo_atributo' value='"+ tipo_atributo.getD_tipo_atributo()+"'required>"+
        "</div>"+
      "</div>"+
      "<div class='row'>"+
        "<div class='small-3 columns'>"+
          "<label for='right-label' class='right inline'>"+"Fecha de Ingreso"+"</label>"+
        "</div>"+
        "<div class='small-9 columns'>"+
          "<input type='text' id='campofecha' placeholder='f_ingreso' name='f_ingreso' value='"+tipo_atributo.getF_ingreso()+"'required>"+
        "</div>"+
        "<div   style='display: inline-block;''><div style='float:left;padding:2px;'><input type = 'submit' role='button' aria-label='submit form' value='Actualizar Tipo Atributo' class='button'></div>"+ 
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
<title>Actualizar tipo de atributo</title>
<link rel="stylesheet" href="foundation/css/foundation.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
  <script src="//code.jquery.com/jquery-1.10.2.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>

<script type="text/javascript">
$(function() {
	$.datepicker.regional['es'] = {
			 closeText: 'Cerrar',
			 prevText: '<Ant',
			 nextText: 'Sig>',
			 currentText: 'Hoy',
			 monthNames: ['Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio', 'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'],
			 monthNamesShort: ['Ene','Feb','Mar','Abr', 'May','Jun','Jul','Ago','Sep', 'Oct','Nov','Dic'],
			 dayNames: ['Domingo', 'Lunes', 'Martes', 'Mi�rcoles', 'Jueves', 'Viernes', 'S�bado'],
			 dayNamesShort: ['Dom','Lun','Mar','Mi�','Juv','Vie','S�b'],
			 dayNamesMin: ['Do','Lu','Ma','Mi','Ju','Vi','S�'],
			 weekHeader: 'Sm',
			 dateFormat: 'dd-mm-yy',
			 firstDay: 1,
			 isRTL: false,
			 showMonthAfterYear: false,
			 yearSuffix: ''
			 };
			 $.datepicker.setDefaults($.datepicker.regional['es']);
    $( "#campofecha" ).datepicker({
        changeMonth: true,
        changeYear: true,
        
      });
  });
	</script>
</head>
<body>
<fieldset>
<legend>Informacion del Tipo Atributo</legend>
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