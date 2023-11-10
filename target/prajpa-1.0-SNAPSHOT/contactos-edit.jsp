<%@page import="com.emergentes.entidades.Contacto"%>
<%
  Contacto contacto = (Contacto)request.getAttribute("contacto");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Registro de Contactos</h1>
        <form action="ContactoController" method="post">
            <input type="hidden" name="id" value="<%= contacto.getId()%>">
            <table>
                
                <tr>
                    <td>Nombre</td>
                    <td><input type="text" name="nombre" value="<%= contacto.getNombre()%>"></td>
                     <td>Telefono</td>
                     <td><input type="text" name="telefono" value="<%= contacto.getTelefono()%>"></td><!-- comment -->
                      <td>Correo</td>
                      <td><input type="text" name="correo" value="<%= contacto.getCorreo()%>"></td>

                </tr>
                <tr>
                     <td></td>
                     <td><input type="submit"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
