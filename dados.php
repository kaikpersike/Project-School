<?php
session_start();
$_SESSION["telefone"] = $_POST['contato'];
$_SESSION["local"] = $_POST['tipo'];
?>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Comprovante</title>
    <link rel="stylesheet" type="text/css" href="estilo.css">
</head>
<body>
    <?php
    $cookie_name = $_POST['nome'] ;
    setcookie('nome_usuario', $cookie_name, time() + (2 * 3600));

    $cookie_email = $_POST['email'];
    setcookie('email_usuario', $cookie_email, time() + (2 * 3600));

    $cookie_senha = $_POST['pass']; 
    setcookie('senha_usuario', $cookie_senha, time() + (2 * 3600));
 
    $cookie_numero = $_POST['num'];
    setcookie('numero_usuario', $cookie_numero, time() + (2 * 3600));

    $cookie_telefone = $_POST['telefone'];
    setcookie('telefone_usuario', $cookie_telefone, time() + (2 * 3600));

    # radio...:

    $cookie_desejo = $_POST['wish']; 
    setcookie('desejo', $cookie_desejo, time() + (2 * 3600));
    
    ?>
    <div id="box1">

        <b>Nome do usuario:</b>  <?php  echo $_COOKIE['nome_usuario']; ?>
        <br>
        <?php $_COOKIE['senha_usuario']; ?>
        <b>Email do usuario:</b> <?php echo $_COOKIE['email_usuario'];?>
        <br>
        <b>DDD:</b> (<?php echo $_COOKIE['numero_usuario']; ?>)
        <br>
        <b>Telefone:</b> <?php echo $_COOKIE['telefone_usuario']; ?>
        <br>
        <?php
        
        echo "<b> Tipo celular: </b>";
        if(isset($_SESSION["telefone"])){
            foreach($_SESSION["telefone"] as $checkbox){
                echo $checkbox . " ";
            }
        }else{}
        
        ?>
        <br>
        <b>Desejo do usuario:</b>  <?php  echo $_COOKIE['desejo']; ?>
        <br>
        <b>Local:</b> <?php
            echo $_SESSION["local"];
        ?>
    </div>
    <a href="corrigir.php" id="voltar">Corrigir</a>
</body>
</html>