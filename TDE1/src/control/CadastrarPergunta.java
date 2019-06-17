package control;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class CadastrarPergunta
 */
@WebServlet("/CadastrarPergunta")
public class CadastrarPergunta extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CadastrarPergunta() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Você não deveria estar aqui").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String pergunta = (String) request.getParameter("perguntaInput");
		
	ArrayList<String> respostas = new ArrayList<String>();
		for (int i = 1; i < 5; i++) {
			String resposta = (String) request.getParameter("r"+i);
			respostas.add(resposta);
			System.out.println("Resposta é: " + resposta);
		}
		request.getRequestDispatcher("sucesso.jsp").forward(request, response);

		
		
		
	}

}
