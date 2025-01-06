<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
   <%@ taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
<meta charset="UTF-8">
<title>Lista de Produtos</title>
</head>
<body>

<h1> LISTA DE PRODUTOS </h1>
		<table border= "1">	
			<thead> 
				<tr> 
				<th>NOME</th> 
				<th>PREÇO</th>
				<th>DESCRIÇÃO</th>	
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
		
<h2> ADICIONAR PRODUTOS</h2>
<form action="ProdutoServlet " method="post">

	<label for="nome" > Nome: </label>
	<input type="text" id="nome" name="nome"> <br>
	
	<label for="preço" > Preço: </label>
	<input type="text" id="preco" name="preco"> <br>
	
	<label for="descrição" > Descrição: </label>
	<input type="text" id="descricao" name="descricao"> <br>
	
	<input type="submit" value="Adicionar Produto">


</form>


</body>
</html>
