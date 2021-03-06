<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="catrea.bo.Operador"%>
<% 
	Operador miOperador = (Operador)session.getAttribute("operador");
   response.addHeader("Cache-Control", "no-cache,no-store,private,must-revalidate,max-stale=0,post-check=0,pre-check=0"); 
   response.addHeader("Pragma", "no-cache"); 
   response.addDateHeader ("Expires", 0);
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" media="screen" href="./CSS/estilos.css" />
    <title>Error conexión base de datos</title>
</head>
<body>
    <header>      
        <div id="titulo">   
        <p>CATREA - Centro de Atención Telefónica para el Reclutamiento en el Ejército Argentino</p>                  
        <p>0800-555-555</p>
        </div> 
    </header>

	<div class="container4">
	    
        <form action="conexion-bd-error.jsp" method="post">
	        <div class="contenedor-confirmacion">
	            <a href="login.jsp">
	                <p>No se ha podido realizar la conexión a la base de datos</p>
	            </a>
	            <div>
	                <button type="submit" class="btn btn-primary float-right"><a href="login.jsp">
	                    Volver</a></button>
	            </div>
	        </div>
        </form>
	   
    </div>
    
    <footer>
        Materia: Taller de Desarrollo e Implementación | Prof. Lic. Mariano Trigila | Alumnos: Ucedo-Rivera-Paez
    </footer>
</body>
</html>