package eu.m2i.formation.gesta.controlleur;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import eu.fr.esic.formation.jpa.dao.IClientDAO;
import eu.fr.esic.formation.jpa.dao.impl.ClientDAOImpl;

/**
 * Servlet implementation class HelloServlet
 */
@WebServlet("/vues/helloAction")
public class HelloServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private IClientDAO clientDAO = new ClientDAOImpl();
	       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public HelloServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		String nomSociete = request.getParameter("nomTransmi"); 
		request.setAttribute( "paramNom", nomSociete );
	    this.getServletContext().getRequestDispatcher( "/vues/afterHello.jsp" ).forward( request, response );
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}
	
}
