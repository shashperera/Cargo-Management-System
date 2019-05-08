package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.IPackageService;
import service.PackageServiceImp;

/**
 * Servlet implementation class DeletePackageServlet
 */
@WebServlet("/DeletePackageServlet")
public class DeletePackageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public DeletePackageServlet() {
        super();
       
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String expoID = request.getParameter("expoID");
		
		IPackageService ipackageService = new PackageServiceImp();
		ipackageService.deletePackage(expoID);

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/viewExpo.jsp");
		dispatcher.forward(request, response);
	}

}
