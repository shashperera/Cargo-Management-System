package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.CargoShipmentServiceImp;
import service.ShipmentService;

/**
 * Servlet implementation class DeleteCargoShipmentServlet
 */
@WebServlet("/DeleteCargoShipmentServlet")
public class DeleteCargoShipmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DeleteCargoShipmentServlet() {
        super();
   
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String shipmentID = request.getParameter("shipmentID");			
		
		ShipmentService iCargoShipService = new CargoShipmentServiceImp();
		iCargoShipService.deleteCargoShipment(shipmentID);

		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/ListCargoShipment.jsp");
		dispatcher.forward(request, response);
		
		
		
	}

}
