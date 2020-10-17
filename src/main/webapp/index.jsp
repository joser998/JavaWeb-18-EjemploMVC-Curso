<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Ejemplo MVC</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    </head>
    <body>
        <h1>Ejemplo MVC</h1>
        <br/>
        
        <!-- aqui ya empezaremos a trabajar con el contexpath, ya que si se cambia el nombre de 
            la carpeta sigue funcionando de la misma forma-->
        <!--de esta forma ya tenemos el contextPath sin necesidad de poner exactamente el nombre
            del proyecto-->
        <a href="${pageContext.request.contextPath}/ServletControlador">Link al Servlet Controlador
            Que despliega las variables</a>
        
        
        
        
        
    </body>
</html>