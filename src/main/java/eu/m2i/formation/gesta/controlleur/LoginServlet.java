package eu.m2i.formation.gesta.controlleur;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/vues/loginAction")
//@WebServlet(urlPatterns = "/vues/loginAction", loadOnStartup = 0)
public class LoginServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public LoginServlet() {

		super();

	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		response.setContentType("txt/html");
		String email = request.getParameter("email");
		String password = request.getParameter("password");

		if(email.equals("user_m2i@group.fr") && password.equals("pwd_m2i")) {
			
			String nom = "ZORRO ADMIN";
			// On créer la session
			HttpSession session = request.getSession(true);
			session.setAttribute("nom", nom);
			this.getServletContext().getRequestDispatcher("/vues/index.jsp").forward(request, response);
			
		}else {
			
			boolean error = true;
			String paramError = "LOGIN / PASSWORD INCORRECT";
			request.setAttribute("paramError", paramError);
			request.setAttribute("error", error);
			this.getServletContext().getRequestDispatcher("/vues/connexion.jsp").forward(request, response);
			
		}

	}
	
	public void init()
		throws ServletException{
		
		System.out.println("################################# init " + getServletName());
		
	}
	
	public void destroy() {
        System.out.println("################################# destroy " + getServletName());
    }

}
