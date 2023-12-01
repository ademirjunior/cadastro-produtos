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
<title>Cadastra Produtos</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</head>
<body>
<%
	String nome_session = (String)session.getAttribute("nome_usuario");
	if(nome_session == null){
		out.println("Para acessar voce deve estar logado");
		%>
		<center><a href="http://localhost:8080/CadastroProdutos/login.jsp"><button type="button" class="btn btn-primary">Voltar ao Login</button></a></center>
   <%  	
	}else{

%>
<main>
  <div class="container">
    <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
      <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
        <svg class="bi me-2" width="40" height="32"><use xlink:href="#bootstrap"/></svg>
        <span class="fs-4">Menu Principal</span>
      </a>

      <ul class="nav nav-pills">
        <li class="nav-item"><a href="principal.jsp" class="nav-link" aria-current="page">Inicio</a></li>
        <li class="nav-item"><a href="cadastro_produto.jsp" class="nav-link active">Cadastrar Produto</a></li>
        <li class="nav-item"><a href="apaga_produto.jsp" class="nav-link">Apagar Produto</a></li>
        <li class="nav-item"><a href="sair.jsp" class="nav-link">Sair</a></li>
      </ul>
    </header>
  </div>
  <div class="container">
  <h1><center>Cadastrado de Produtos</center></h1>
  <br>
  	<div class="row">
	    	<form action="http://localhost:8080/CadastroProdutos/Controller" method="POST">
	    	<label for="exampleFormControlInput1" class="form-label">Nome do Produto</label>
	    	<input class="form-control" type="text"  name="nome_produto">
	    	<label for="exampleFormControlInput1" class="form-label">Quantidade em Estoque</label>
	    	<input class="form-control" type="text"   name="qtd_estoque">
	    	<label for="exampleFormControlInput1" class="form-label">Valor do Produto</label>
	    	<input class="form-control" type="text"  name="valor_produto">
	    	<br>
	    	<input type="hidden" value="cadastro" name="formulario" >
	    	<div class="d-grid gap-2 d-md-flex justify-content-md-end">
	    	<a href="principal.jsp"><button type="button" class="btn btn-warning">Retornar a Pagina Principal</button></a>
	    	<button type="submit" class="btn btn-primary">Cadastrar Dados</button>
	    	</div>
	    	</form>
  	</div>
  </div>
  

</main>
<% } %>
</body>
</html>