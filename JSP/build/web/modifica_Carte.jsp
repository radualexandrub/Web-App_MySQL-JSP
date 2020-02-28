<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page language="java" import="java.lang.*,java.math.*,db.*,java.sql.*, java.io.*, java.util.*"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd
<html>

<head>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
  <link rel="stylesheet" type="text/css" href="style/style.css" />
  <title>ProiectPAI</title>
</head>

<!--Preiau functiile din JavaBean si le folosesc in acest fisier.jsp
jsp:useBean este un tag care va da un id "jb", adica o instanta la clasa JavaBean
class="db.JavaBean" este path-ul catre JavaBean,java

Pentru a importa tot din acea clasa, voi pune property=steluta-->
<jsp:useBean id="jb" scope="session" class="db.JavaBean" />
<jsp:setProperty name="jb" property="*" />
    
<body>
<div id="main">

    <div id="header">
        <div id="logo">
          <div id="logo_text">
            <h1><a href="index.html"><span class="logo_colour">Biblioteca poetilor</span></a></h1>
            <h2>Adauga. Cauta. Sterge?</h2>
          </div>
        </div>

        <div id="menubar">
          <ul id="menu">

          <div class="container">
            <li><a href="index.html">Acasa</a></li>
            <li><a href="tabela_Poet.jsp">Poeti</a></li>
            <li><a href="tabela_Carte.jsp">Carti</a></li>
            <li><a href="tabela_VolumPoezii.jsp">Volume Poezii</a></li>
            
            <div class="dropdown">
            <button class="dropbtn"><font face="Century Gothic">MODIFICA</font></button>
                <div class="dropdown-content">
                  <a href="modifica_Poet.jsp">Lista Poeti</a>
                  <a href="modifica_Carte.jsp">Lista Carti</a>
                  <a href="modifica_VolumPoezii.jsp">Lista Volume</a>
                </div>
            </div> 
            
            <li><a href="contact.html">Contact</a></li>
          </div>
          </ul></div>
        
  </div>
    <br><br>
        <p align="center"><a href="nou_Carte.jsp"><b>Adauga o noua carte</b></a>         
          <form action="m1_Carte.jsp" method="post">
            <table border="1" align="center">
                <tr>
                    <td><b>Mark:</b></td>
                    <td><b>IdCarte:</b></td>
                    <td><b>NumeCarte:</b></td>
                    <td><b>EdituraCarte:</b></td>
                    <td><b>ISBN:</b></td>
                </tr>
                <%
                    jb.connect();
                    ResultSet rs = jb.vedeTabela("carti");
                    long x;
                    while (rs.next()) {
                        x = rs.getLong("idcarte");
                %>
                <tr>
                    <td><input type="checkbox" name="primarykey" value="<%= x%>" /></td>
                    <td><%= x%></td>
                    <td><%= rs.getString("NumeCarte")%></td>
                    <td><%= rs.getString("EdituraCarte")%></td>
                    <td><%= rs.getString("ISBN")%></td>
                    <%
                        }
                    %>
                </tr>
            </table><br/>
            <p align="center">
                <input type="submit" value="Modifica linia">
            </p>
        </form>
        <%
    jb.disconnect();%>  
                    
                    
                    
                    
                    
                    

            
    <div id="content_footer"></div>
    <div id="footer">
    	Ma gasesti aici:
	<a target="_blank" href="https://www.facebook.com/Radduu" class="fa fa-facebook"></a>
        <a target="_blank" href="https://plus.google.com/u/0/115509515206592850353" class="fa fa-google"></a>
        <a target="_blank" href="https://www.youtube.com/channel/UCtMOuZUTRRZ2FZu_GnvJYGw" class="fa fa-youtube"></a>
        <a target="_blank" href="https://www.instagram.com/raddub/" class="fa fa-instagram"></a>
        <a target="_blank" href="https://ro.pinterest.com/radu_theboy/" class="fa fa-pinterest"></a>
    </div>
  </div>

<script src="style/javascript1.js"></script>
<script src="style/Slideshow.js"></script>
</body>
</html>
