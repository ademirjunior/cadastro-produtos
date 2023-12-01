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
<title>Insert title here</title>
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
        <span class="fs-4">Bem Vindo ao Sistema</span>
      </a>

     <ul class="nav nav-pills">
        <li class="nav-item"><a href="principal.jsp" class="nav-link active" aria-current="page">Inicio</a></li>
        <li class="nav-item"><a href="cadastro_produto.jsp" class="nav-link">Cadastrar Produto</a></li>
        <li class="nav-item"><a href="apaga_produto.jsp" class="nav-link">Apagar Produto</a></li>
        <li class="nav-item"><a href="sair.jsp" class="nav-link">Sair</a></li>
      </ul>
    </header>
  </div>
  <div class="container">
  <h1><center>Selecione o Produto para Excluir</center></h1>
  <br>
  	<div class="row">
  		<div class="col">
	      
	    </div>
	    <div class="col">
	      <form action="http://localhost:8080/CadastroProdutos/Controller" method="POST">
	    	<select class="form-select" name="nome_excluir"  id="nome_excluir" aria-label="Default select example">
			   <%
			  Connection conexao;
			  Class.forName("com.mysql.cj.jdbc.Driver");
				String url = "jdbc:mysql://localhost:3306/cadastroprodutos";
				String user = "root";
				String senha = "";
				conexao = DriverManager.getConnection(url, user , senha);
				
				String sql = "SELECT * from produtos"; 
				PreparedStatement ps;
				ps = conexao.prepareStatement(sql);
				ResultSet rs = ps.executeQuery();
				while(rs.next()){
					String nome_banco = rs.getString("nome_produto");
			  %>
			  
			  <option value="<% out.print(nome_banco);%>"><% out.print(nome_banco);%></option>
			  
			  <% } %>
			</select>
	    	
	    	<br>
	    	<div class="d-grid gap-2">
	    	<input type="hidden" value="excluir" name="formulario" >
	    	<button type="submit" class="btn btn-primary">Excluir</button>
	    	</div>
	    	</form>
	    </div>
	    <div class="col">
	      
	    </div>
	    	
  	</div>
  </div>
  

</main>
<%
}
%>
</body>
</html>