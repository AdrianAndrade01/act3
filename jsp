 Document   : medidas
    Created on : 26 ago 2022, 6:46:19
    Author     : aandr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="medidas.Triangulo"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <link rel="stylesheet" href="css/styles.css">
        <title>JSP Page</title>
        
    </head>
    <body>
        <div class="medidas">
            <h1 margin-top="20px">Respuesta</h1>
            <%
                String base=request.getParameter("base");
                String altura=request.getParameter("altura");
                
                Triangulo t = new Triangulo(base,altura);
                double perimetro=t.getPerimetro();
                double area=t.getArea();
            %>
            <p>El perímetro es: <%=perimetro%></p>
            <p>El área es: <%=area%></p>
        </div>
        
    </body>
</html>
