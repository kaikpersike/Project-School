<?php
session_start();

$nome_dado = $_COOKIE['nome_usuario'];
$senha_dado = $_COOKIE['senha_usuario'];
$email_dado = $_COOKIE['email_usuario'];
$numero_dado = $_COOKIE['numero_usuario'];
$telefone_dado = $_COOKIE['telefone_usuario'];
$desejo_dado = $_COOKIE['desejo'];

if(isset($_SESSION["telefone"])){
    foreach($_SESSION["telefone"] as $tipo_dado){
       
    }
}else{}
$local_dado = $_SESSION["local"];


$mysqli = new mysqli('localhost', 'root', '', 'usuario');
if($mysqli->connect_errno){
    printf("Connect failed", $mysqli->connect_errno);
    exit();
}

$sql = "insert into cadastro value(null,'".$nome_dado."','".$email_dado."','".$senha_dado."','".$numero_dado."','".$telefone_dado."','".$tipo_dado."','".$desejo_dado."','".$local_dado."')";

if($mysqli->query($sql)){
    echo "Funcionou!";
}else{
    echo $mysqli->error;
}
?>