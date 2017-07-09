<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConveniosMarkUp.aspx.cs" Inherits="ComPages.Programa.ConveniosMarkUp" %>


<% int pais = int.Parse(Request.QueryString["pais"]); %>
<table>
   
    <% foreach(var item in GetConvenios(pais)) %>
    <%{ %>
    <tr>
        <td><%=item.Expediente %></td>
        <td><%=item.Institucion %></td>
         <td>
             <input type="radio"  name="convenioRdr" value="<%=item.IdConvenio %>"/>
         </td>


    </tr>
    <%} %>
    
</table>