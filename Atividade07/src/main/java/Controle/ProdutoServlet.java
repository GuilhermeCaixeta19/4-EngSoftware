package Controle;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**     				
 * Servlet implementation class ProdutoServlet

 */
@WebServlet("/ProdutoServlet")

public class ProdutoServlet extends HttpServlet {

	private static final long serialVersionUID = 1L;

	private List <Produto2> produtos;
    /**

     * @see HttpServlet#HttpServlet()

     */
  // public ProdutoServlet() {

        //super();

       // TODO Auto-generated constructor stub

 //  }

	@Override 	
    public void  init() throws ServletException{
    	super.init();
    	produtos = new ArrayList<>();

    	produtos.add(new Produto2("Notebook", 3000.0,"Notebook Dell com 8GB RAM"));
    	produtos.add(new Produto2("Smartphone", 1500.0,"Smartphone Android 128GB"));
    	produtos.add(new Produto2("Monitor ", 700.0,"Monitor DE lED 24 polegadas"));
    	produtos.add(new Produto2("Mouse ", 300.0,"Mouse razer deathadder "));
    	produtos.add(new Produto2("Playstation  05 ", 5000.0,"O mais requisitado do momento"));

    }
	/**

	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)

	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

	//adicionando a lista de produto ao request//

		request.setAttribute("produtos", produtos);

		//ENCAMINHANDO PARA A PAGINA JSP//
		RequestDispatcher dispatcher = request.getRequestDispatcher("ListaProdutos.jsp");
		dispatcher.forward(request, response);
	}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 * 
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		// Recuperar os dados do formulário para adicionar um novo produto//
		
		String nome = request.getParameter("nome");
		double preco = Double.parseDouble(request.getParameter("preco"));
		String descricao = request.getParameter("descricao");
		
		
              //Criar um novo produto e adicioná-lo à lista //
		Produto2 novoProduto = new Produto2(nome, preco, descricao);
		produtos.add(novoProduto);
		
		//Redirecionando para o get para exibir a lista atualizada//
		
		response.sendRedirect("ProdutoServlet");
		
	}
}