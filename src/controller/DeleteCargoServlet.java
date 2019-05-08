package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.CargoServiceImp;
import service.ICargoService;


/**
 * Servlet implementation class DeleteCargoServlet
 */
@WebServlet("/DeleteCargoServlet")
public class DeleteCargoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public DeleteCargoServlet() {
        super();
        
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		String expoID = request.getParameter("expoID");			
		
		ICargoService iCargoService = new CargoServiceImp();
		iCargoService.deleteCargo(expoID);

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/viewExpo.jsp");
		dispatcher.forward(request, response);
		
	}

}
