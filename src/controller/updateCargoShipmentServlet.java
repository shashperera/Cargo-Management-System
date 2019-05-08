package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.CargoShipment;
import model.Shipment;
import service.CargoShipmentServiceImp;
import service.ShipmentService;


/**
 * Servlet implementation class updateCargoShipmentServlet
 */
@WebServlet("/updateCargoShipmentServlet")

public class updateCargoShipmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
    public updateCargoShipmentServlet() {
      
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		
		Shipment cargo1 = new CargoShipment();
		

		String shipmentID = request.getParameter("shipmentID");
		String refID = request.getParameter("refID");
		String routeOption = request.getParameter("routeOption");
		String date1 = request.getParameter("date1");
		String portName1 = request.getParameter("portName1");
		String date2 = request.getParameter("date2");
		String portName2 = request.getParameter("portName2");
		String date3 = request.getParameter("date3");
		String portName3 = request.getParameter("portName3");
		
		
		cargo1.setRefID(refID);
		cargo1.setRouteOption(routeOption);
		cargo1.setDate1(date1);
		cargo1.setPortName1(portName1);
		cargo1.setDate2(date2);
		cargo1.setPortName2(portName2);
		cargo1.setDate3(date3);
		cargo1.setPortName3(portName3);
	
	
		ShipmentService iShipmentService = new CargoShipmentServiceImp();
		iShipmentService.updateCargoShipment(shipmentID,cargo1);
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/views/ListCargoShipment.jsp");
		dispatcher.forward(request, response);

	}

}
