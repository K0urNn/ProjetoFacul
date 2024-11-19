<?php
session_start();
include_once('config.php');

if (isset($_POST['buscar_cliente'])) {
    $id_busca = $_POST['id_busca'];
    $query = "SELECT * FROM clientes WHERE id = '$id_busca'";
    $result = $conexao->query($query);

    if ($result->num_rows > 0) {
        $cliente = $result->fetch_assoc();
    } else {
        $erro = "Cliente não encontrado!";
    }
}

if ($_SERVER['REQUEST_METHOD'] == 'POST' && isset($_POST['salvar_frigobar'])) {
    $id_cliente = $_POST['id_cliente'];
    $nome_cliente = $_POST['nome_cliente'];
    $cpf_cliente = $_POST['cpf_cliente'];
    $quantidades = [
        'agua' => $_POST['agua'] ?? 0,
        'cerveja' => $_POST['cerveja'] ?? 0,
        'refrigerante' => $_POST['refrigerante'] ?? 0,
        'suco' => $_POST['suco'] ?? 0
    ];

    $prices = [
        'agua' => 2.50,
        'cerveja' => 5.00,
        'refrigerante' => 3.00,
        'suco' => 4.00
    ];

    $valor_total = 0;
    $resumo = "";

    foreach ($quantidades as $item => $quantity) {
        if ($quantity > 0) {
            $valor = $quantity * $prices[$item];
            $valor_total += $valor;
            $resumo .= "$item: $quantity unidades (R$ " . number_format($valor, 2, ',', '.') . ")<br>";

            // Salvar no banco de dados
            $query_inserir = "INSERT INTO frigobar (id_cliente, nome_cliente, cpf_cliente, item, quantidade, valor)
                              VALUES ('$id_cliente', '$nome_cliente', '$cpf_cliente', '$item', '$quantity', '$valor')";
            $conexao->query($query_inserir);
        }
    }

    if ($resumo) {
        $resumo .= "<strong>Valor Total: R$ " . number_format($valor_total, 2, ',', '.') . "</strong>";
        $mensagem = "Itens do frigobar adicionados com sucesso!<br>$resumo";
    } else {
        $mensagem = "Nenhum item foi selecionado.";
    }
}
?>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Frigobar</title>
    <link rel="stylesheet" href="styleForm.css">
</head>
<body>
<nav class="navbar">
    <a href="Home.php">Home</a>
    <a href="Funcionarios.php">Funcionarios</a>
    <a href="quartos.php">Quartos</a>
    <a href="Clientes.php">Clientes</a>
    <a href="pagamento.php">Pagamento</a>
    <a href="frigobar.php" class="active">Frigobar</a>
</nav>
<h1>Cadastro de Itens do Frigobar</h1>
<form method="POST">
    <label for="id_busca">Buscar Cliente pelo ID:</label>
    <input type="text" id="id_busca" name="id_busca" required>
    <button type="submit" name="buscar_cliente">Buscar</button>
</form>
<?php if (isset($erro)) echo "<p style='color:red;'>$erro</p>"; ?>
<?php if (isset($mensagem)) echo "<p style='color:green;'>$mensagem</p>"; ?>
<?php if (isset($cliente)): ?>
<form method="POST">
    <input type="hidden" name="id_cliente" value="<?= $cliente['id'] ?>">
    <label for="nome_cliente">Nome:</label>
    <input type="text" name="nome_cliente" value="<?= $cliente['nome'] ?>" readonly>
    <label for="cpf_cliente">CPF:</label>
    <input type="text" name="cpf_cliente" value="<?= $cliente['cpf'] ?>" readonly><br><br>
    <label for="agua">Água (R$ 2,50 cada):</label>
    <input type="number" id="agua" name="agua" min="0" value="0">
    <label for="cerveja">Cerveja (R$ 5,00 cada):</label>
    <input type="number" id="cerveja" name="cerveja" min="0" value="0">
    <label for="refrigerante">Refrigerante (R$ 3,00 cada):</label>
    <input type="number" id="refrigerante" name="refrigerante" min="0" value="0">
    <label for="suco">Suco (R$ 4,00 cada):</label>
    <input type="number" id="suco" name="suco" min="0" value="0"><br><br>
    <button type="submit" name="salvar_frigobar">Salvar Itens</button>
</form>
<?php endif; ?>
<div class="button-voltar">
    <a href="Home.php" class="btn-voltar">Voltar para Início</a>
</div>

</body>
</html>
