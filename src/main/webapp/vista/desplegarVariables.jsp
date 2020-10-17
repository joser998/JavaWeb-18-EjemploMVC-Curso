<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Despliegue de Variables</title>
    </head>
    <body>
        <h1>Despliegue de Variables</h1>
        <!--El lenguaje de expresiones lo que hace es buscar una variable con este nombre-->
        Variable en alcance Request: ${mensaje}
        <br/>
        <br/>
        Variable en Alcance de session:
        <br/>
        Rectangulo:
        
        <!--de esta forma manda a llamar a los metodos getters de estos atributos para que 
            presenten su contenido-->
        Base: ${rectangulo.base}
        Altura: ${rectangulo.altura}
        Area: ${rectangulo.area}
        <br/>
        <br/>
        <a href="${pageContext.request.contextPath}/index.jsp">Regresar al Inicio</a>
    </body>
</html>