<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.List" %>
 <%@ page import="java.sql.DriverManager" %>
 <%@ page import="java.sql.Connection" %>
 <%@ page import="java.sql.PreparedStatement" %>
 <%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sair do Sistema</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</head>
<body>
<main>
  <div class="container">
    <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
      <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
        <svg class="bi me-2" width="40" height="32"><use xlink:href="#bootstrap"/></svg>
        <span class="fs-4">Voce saiu do sistema com sucesso!!</span>
      </a>

     
    </header>
  </div>
  <div class="container">
  <h1><center>Voce saiu do sistema com sucesso!!</center></h1>
  <br>
  	<div class="row">
  		<div class="col">
	      
	    </div>
	    <div class="col">
	     <%
	     	session.invalidate();
	     %>
	    	<center><a href="http://localhost:8080/CadastroProdutos/login.jsp"><button type="button" class="btn btn-primary">Voltar ao Login</button></a></center>
	    	
	    </div>
	    <div class="col">
	      
	    </div>
	    	
  	</div>
  </div>
  

</main>
</body>
</html>