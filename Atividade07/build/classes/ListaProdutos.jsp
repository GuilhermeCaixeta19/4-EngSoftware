<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lista de Produtos</title>
</head>
<style>
/* Estilo geral */
body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background: linear-gradient(to bottom, #f0f8ff, #d3e4f3);
    color: #333;
    line-height: 1.6;
}

h1, h2 {
    text-align: center;
    color: #0f386d;
    margin: 20px 0;
}

table {
    width: 90%;
    margin: 20px auto;
    border-collapse: collapse;
    box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
}

table th, table td {
    border: 1px solid #ddd;
    padding: 10px;
    text-align: left;
}

table th {
    background-color: #0f386d;
    color: #fff;
}

table tr:nth-child(even) {
    background-color: #f2f2f2;
}

table tr:hover {
    background-color: #e0f7fa;
}

form {
    width: 90%;
    max-width: 600px;
    margin: 30px auto;
    background: #ffffff;
    padding: 20px;
    border-radius: 8px;
    box-shadow: 0 4px 10px rgba(0, 0, 0, 0.2);
}

form label {
    display: block;
    margin-bottom: 5px;
    font-weight: bold;
    color: #333;
}

form input[type="text"], 
form input[type="number"] {
    width: 100%;
    padding: 10px;
    margin-bottom: 15px;
    border: 1px solid #ccc;
    border-radius: 5px;
    box-sizing: border-box;
    transition: all 0.3s ease;
}

form input[type="text"]:focus,
form input[type="number"]:focus {
    border-color: #0f386d;
    box-shadow: 0 0 8px rgba(15, 56, 109, 0.3);
    outline: none;
}

form input[type="submit"] {
    display: block;
    width: 100%;
    padding: 10px;
    background-color: #0b15a7;
    color: #fff;
    border: none;
    border-radius: 5px;
    font-size: 16px;
    cursor: pointer;
    text-transform: uppercase;
    font-weight: bold;
    transition: background-color 0.3s ease, transform 0.2s ease;
}

form input[type="submit"]:hover {
    background-color: #0c57c9;
    transform: scale(1.05);
}

form input[type="submit"]:focus {
    outline: none;
    box-shadow: 0 0 5px rgba(15, 56, 109, 0.5);
}

/* Responsividade */
@media (max-width: 768px) {
    table {
        width: 100%;
    }

    form {
        width: 95%;
    }

    h1, h2 {
        font-size: 1.5rem;
    }
}
</style>
<body>

<h1> LISTA DE PRODUTOS </h1>
		<table border= "1">	
			<thead> 
				<tr> 
				<th>Nome</th>
				<th>Preço</th>
				<th>Descrição</th>	
				</tr>
			</thead>
			<tbody>
				<c:forEach var="produto" items="${produtos}">
					<tr> 
						<td>${produto.nome}</td>
						<td>${produto.preco}</td>
						<td>${produto.descricao}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
<br>
<h2> ADICIONAR PRODUTOS</h2>
<form action="ProdutoServlet " method="post">

	<label for="nome" > Nome: </label>
	<input type="text" id="nome" name="nome"> <br>
	
	<label for="preço" > Preço: </label>
	<input type="text" id="preco" name="preco"> <br>
	
	<label for="descrição" > Descrição: </label>
	<input type="text" id="descricao" name="descricao"> <br>
	<br>

	
	
	<input type="submit" value="Adicionar Produto">


</form>


</body>
</html>