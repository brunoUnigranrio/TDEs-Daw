<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cadastro de formulário</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css" integrity="sha384-HSMxcRTRxnN+Bdg0JdbxYKrThecOKuH5zCYotlSAcp1+c8xmyTe9GYg1l9a69psu" crossorigin="anonymous">

<!-- Optional theme -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap-theme.min.css" integrity="sha384-6pzBo3FDv/PJ8r2KRkGHifhEocL+1X2rVCTTkUfGk7/0pbek5mMa1upzvWbrUbOZ" crossorigin="anonymous">

<!-- Latest compiled and minified JavaScript -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js" integrity="sha384-aJ21OjlMXNL5UyIl/XNwTMqvzeRMZH2w8c5cRVpzpU8Y5bApTppSuUkhZXN0VxHd" crossorigin="anonymous"></script>
</head>
<body>
<div class = "container">
<div class = "row">
<div class = "col-md-8 col-md-offset-2">


<form  method = "post" action="CadastrarPergunta">
  <div class="form-group">
    <label for="perguntaInput">Pergunta</label>
    <input type="text" class="form-control" name ="perguntaInput" id="perguntaInput" placeholder="Some question here">
  </div>
  <div class="form-group">
  <h2 class=>Respostas</h2>
  <%
  int i =1;
  for (i = 1; i < 6; i++) {
	  out.println(
		"<label for=\"r" + i + "\">Resposta " + i + "</label>"	  
			  );
	 out.println(
			 " <input type=\"text\" name=\"r" +i+ "\" class=\"form-control\" id=\"r" +i + "\" placeholder=\"Resposta " +i+ " \" \\> "
			 );
	  
  }
    		
  %>
  <div class="row">
  <div class= "col-md-2">
   <label for="gaba">Gabarito</label>
    <input type="number" class="form-control" name="gabarito" id="gabarito" placeholder="1~5" >
  </div>
  
  </div>
  
    
  </div>
  <div class="row">
  <button type="submit">Enviar</button>
  <button type="reset">Limpar</button>
  </div>
</form>
</div>

</div>
</div>

</body>
</html>