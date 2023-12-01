<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Sistema</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-0evHe/X+R7YkIZDRvuzKMRqM+OrBnVFBL6DOitfPri4tjfHxaWutUpFmBp4vmVor" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
</head>
<body>
<main>
  <div class="container">
    <header class="d-flex flex-wrap justify-content-center py-3 mb-4 border-bottom">
      <a href="/" class="d-flex align-items-center mb-3 mb-md-0 me-md-auto text-dark text-decoration-none">
        <svg class="bi me-2" width="40" height="32"><use xlink:href="#bootstrap"/></svg>
        <span class="fs-4">Bem Vindo ao Sistema</span>
      </a>

     
    </header>
  </div>
  <div class="container">
  <div class="align-items-center">
	  <h1>Realize o seu Login</h1>
  </div>
  <br>
  	<div class="row">
  		<div class="col">
	      
	    </div>
	    <div class="col">
	      <form action="http://localhost:8080/CadastroProdutos/Controller" method="POST">
	    	<label for="exampleFormControlInput1" class="form-label">Login</label>
	    	<input class="form-control" type="text"  name="login">
	    	<label for="exampleFormControlInput1" class="form-label">Senha</label>
	    	<input class="form-control" type="password"  name="senha">
	    	<br>
	    	<div class="d-grid gap-2">
	    	<input type="hidden" value="login" name="formulario" >
	    	<button type="submit" class="btn btn-primary">Entrar no Sistema</button>
	    	</div>
	    	</form>
	    </div>
	    <div class="col">
	      
	    </div>
	    	
  	</div>
  </div>
  

</main>
</body>
</html>