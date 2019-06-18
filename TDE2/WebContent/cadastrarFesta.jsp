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
<h2>Cadastro de Festa</h2>

<form  method = "post" action="CadastrarFesta" id="formulario" >
  <div class="form-group">
    <label for="clienteInput">Cliente</label>
    <input type="text" class="form-control" name ="clienteInput" >
  </div>
  <div class="form-group">
    <label for="aniversarianteInput">Aniversariante</label>
    <input type="text" class="form-control" name ="aniversarianteInput">
  </div>
  <div class="form-group">
    <label for="temaSelect">Tema</label>
  <select name="temaSelect" class="browser-default custom-select">
	  <option selected>Selecione uma opção</option>
	  <option value="Ronaldinho Gaúcho">Ronaldinho Gaúcho</option>
	  <option value="Cassino Chacrinha">Cassino do Chacrinha</option>
	  <option value="Kassinão">Kassinão</option>
	  <option value="Irineu - Você não sabe, nem eu">Irineu - Você não sabe, nem eu</option>
  </select>
  </div>
  
  <div class="form-group">
    <label for="dataInput">Data da festa</label>
    <input type="date" class="form-control" id ="dataInput" name ="dataInput" placeholder="22/22/2222">
  </div>
  <div class="form-group">
    <label for="inicioInput">Hora início</label>
    <input type="time" class="form-control" id="inicioInput" name ="inicioInput">
  </div>
    <div class="form-group">
    <label for="terminoInput">Hora término</label>
    <input type="time" class="form-control" id="terminoInput" name ="terminoInput">
  </div>
  
  <div class="row">
  <div id ="mensagens" class="alert alert-danger" style="display: none">
  </div>
  <button type="submit">Cadastrar Festa</button>
  <button type="reset">Limpar</button>
  </div>
</form>
</div>

</div>
</div>
<script>
var form = document.getElementById("formulario");
let erroData = "";
let erroHora = "";

let valid = true;
form.addEventListener('submit', (e) => {
	e.preventDefault();
	let dataInput = document.getElementById("dataInput");
	let inicioInput = document.getElementById("inicioInput");
	let terminoInput = document.getElementById("terminoInput");
	let mensagens = document.getElementById("mensagens");
	dataAgora = Date.now();
	dataInserida = Date.parse(dataInput.value);
	erroData = dataInserida < dataAgora ? 
			"<p>Data inválida, não é possível inserir eventos no passado</p>"
			: "";
			
	
	let inicioEmMs = inicioInput.valueAsNumber;
	let terminoEmMs = terminoInput.valueAsNumber;
	
	erroHora =  inicioEmMs >= terminoEmMs?
			"<p>A hora de término não deve ocorrer antes do início da festa</p>"
			: "";
	if (inicioEmMs >= terminoEmMs || dataInserida < dataAgora) {
		valid = false;
	} else {
		valid = true;
	}
	mensagens.innerHTML = erroData + erroHora;
	
	if (!valid) {
		mensagens.style.display = "block"
		return false;
	}
	else {
		mensagens.style.display = "none";
		e.currentTarget.submit();
		return true;
	}
	
} 
		, false);
console.log("Added eventlistener");
//form.submit = validate;
function validate(e) {
	
}

</script>
</body>
</html>