package control;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Festa;

/**
 * Servlet implementation class CadastrarFesta
 */
@WebServlet("/CadastrarFesta")
public class CadastrarFesta extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CadastrarFesta() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		Festa festa;
		String aniversariante, cliente, tema; 
		int inicio[] = new int[2];
		int termino[] = new int[2];
		
		aniversariante = request.getParameter("aniversarianteInput");
		tema = request.getParameter("temaSelect");
		cliente = request.getParameter("clienteInput");
		String inicioInput = request.getParameter("inicioInput");
		// vamos pegar a string de inicio e capturar as posições 0 à 2 da string, 
		// o que nos dará os primeiros dois dígitos antes dos ":"
		inicio[0] = Integer.parseInt(request.getParameter("inicioInput").substring(0,2));		
		// seguimos a mesma lógica para os dois últimos
		inicio[1] = Integer.parseInt(request.getParameter("inicioInput").substring(3,5));
		
		//repetimos isso para a hora final da festa
		termino[0] = Integer.parseInt(request.getParameter("terminoInput").substring(0,2));
		termino[1] = Integer.parseInt(request.getParameter("terminoInput").substring(3,5));
		
		System.out.println(inicio[0]);
		System.out.println(inicio[1]);
		System.out.println(termino[0]);
		System.out.println(termino[1]);
		
		// A forma é meio falha, o ideal seria que, o valor passado fosse a duração da festa
		// a validação ocorrendo com javascript ainda no cliente...
		// mas vamos seguir com uma lógica simples mesmo
		
		int inicioMinutos = (inicio[0]*60) + inicio[1];
		int terminoMinutos = (termino[0]*60) + termino[1];
	}

}
