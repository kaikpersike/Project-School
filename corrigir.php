<?php
session_start();
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Home Page</title>
    <link rel="stylesheet" type="text/css" href="estilo.css">
</head>
<body>    
<form method="post" action="conectas.php">
<div id="box">
<h1> Cadastro Imobiliária: </h1>

<b>Nome:</b><br>
<input type="text" name="nome" id="texto" value="<?php  echo $_COOKIE['nome_usuario']; ?>" required placeholder="Digite aqui..."><br>
<br>

<b>Email:</b><br>
<input type="text" name="email" id="texto" value="<?php echo $_COOKIE['email_usuario'];?>" required placeholder="Digite aqui..."><br>
<br>

<b>Senha:</b><br>
<input type="password" name="pass" id="texto" value="<?php echo $_COOKIE['senha_usuario']; ?>" required placeholder="Digite aqui..."><br>
<br>

<b>DDD:</b><br>
( <input type="number" name="num" id="texto" value="<?php echo $_COOKIE['numero_usuario']; ?>" required placeholder="Digite aqui..."> )<br>
<br>

<b>Telefone:</b><br>
<input type="text" name="telefone" id="texto" value="<?php echo $_COOKIE['telefone_usuario']; ?>" required placeholder="Digite aqui..."><br>
<br>

<b>Tipo:</b><br>
<input type="checkbox" name="contato[]" value="1" checked> Fixo
<input type="checkbox" name="contato[]" value="2"> Celular 
<input type="checkbox" name="contato[]" value="3"> Whatsapp <br>
<br>

<b>Desejo:</b><br>
<input type="radio" name="wish" value="1" checked> Comprar <br>
<input type="radio" name="wish" value="2"> Alugar p/ temporada <br>
<input type="radio" name="wish" value="3"> Alugar definitivamente <br>
<br>

<b>Local:</b><br>
<select name="tipo" >
    <option value="1">Casa</option>
    <option value="2">Sobrado</option>
    <option value="3">Apartamento</option>
    <option value="4">Terreno</option>
    <option value="5">Salão Comercial</option> 
</select>

</div>

<input type="reset" id="limpar" value="Limpar">
<input type="submit" id="confirmar" value="Confirmar">
</form>
</body>
</html>