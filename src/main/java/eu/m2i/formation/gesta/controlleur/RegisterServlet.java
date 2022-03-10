package eu.m2i.formation.gesta.controlleur;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import eu.fr.esic.formation.jpa.dao.IClientDAO;
import eu.fr.esic.formation.jpa.dao.impl.ClientDAOImpl;
import eu.fr.esic.formation.jpa.entity.Client;

@WebServlet("/vues/registerAction")
public class RegisterServlet extends HttpServlet {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	private IClientDAO clientDAO = new ClientDAOImpl();
	
	public RegisterServlet() {}
	
	public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		// Récupérer la liste des utilisateurs
		
	}
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
		
		response.setContentType("txt/html");
		
		String sexe = request.getParameter("sexe");
		String nom = request.getParameter("nom");
		String prenom = request.getParameter("prenom");
		String numClient = request.getParameter("numClient");
		String address = request.getParameter("address");
		String codePostal = request.getParameter("codePostal");
		String login = request.getParameter("login");
		String password = request.getParameter("password");
		
		Integer sexeFormat = 1;
		
		if(sexe == "2") {
			
			sexeFormat = 2;
			
		}
		
		// On créer l'object client et on l'enregistre dans la base
		Client newClient = new Client(nom, prenom, login, password, address, codePostal, numClient, sexeFormat);
		clientDAO.createUpdateEntity(newClient);

		// On récupère la liste des clients et on l'envoie vers la vue de la liste des utilisateurs
		ArrayList<Client> listClients = (ArrayList<Client>) clientDAO.findAll();
		
		request.setAttribute("listClients", listClients);
		request.setAttribute("paramNom", newClient.getNom());
//		request.setAttribute("paramNom", request.getSession().getAttribute("nom")); 
		
		this.getServletContext().getRequestDispatcher("/vues/utilisateurs.jsp").forward(request, response);
		
	}

}
