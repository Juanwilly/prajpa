<%@page import="java.util.List"%>
<%@page import="com.emergentes.entidades.Contacto"%>
<%
  List<Contacto> lista = (List<Contacto>)request.getAttribute("contactos");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Listado de contactos</h1>
        
        <a href="ContactoController?action=add">Nuevo</a>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Nombre</th>
                <th>Telefono</th>
                <th>Correo</th>
                <th></th>
                <th></th>
                
            </tr>
            <%
                for (Contacto item : lista){
                %>
                <tr>
                    <td><%= item.getId()%></td>
                <td><%= item.getNombre()%></td>
                <td><%= item.getTelefono()%></td>
                <td><%= item.getCorreo()%></td>
                <td><a href="ContactoController?action=edit&id=<%= item.getId()%>">Editar</a></td>
                <td><a href="ContactoController?action=dele&id=<%= item.getId()%>" onclick="return(confirm('estas seguro ?'))">Eliminar</a></td>

                </tr>
                <%
                    }
                %>
        </table>
    </body>
</html>
