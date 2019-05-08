package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.PackageShipment;
import model.Shipment;
import service.ShipmentService;
import service.PackageShipmentServiceImp;

/**
 * Servlet implementation class updatePackageShipmentServlet
 */
@WebServlet("/updatePackageShipmentServlet")

public class updatePackageShipmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public updatePackageShipmentServlet() {


    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		
		Shipment package2 = new PackageShipment();
		

		String PshipmentID = request.getParameter("PshipmentID");
		String refID = request.getParameter("expoID");
		String routeOption = request.getParameter("routeOption");
		String date1 = request.getParameter("date1");
		String portName1 = request.getParameter("portName1");
		String date2 = request.getParameter("date2");
		String portName2 = request.getParameter("portName2");
		String date3 = request.getParameter("date3");
		String portName3 = request.getParameter("portName3");
		
		
		package2.setRefID(refID);
		package2.setRouteOption(routeOption);
		package2.setDate1(date1);
		package2.setPortName1(portName1);
		package2.setDate2(date2);
		package2.setPortName2(portName2);
		package2.setDate3(date3);
		package2.setPortName3(portName3);
	
	
		ShipmentService iShipmentService = new PackageShipmentServiceImp();
		iShipmentService.updatePackageShipment(PshipmentID,package2);
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/views/ListPackageShipment.jsp");
		dispatcher.forward(request, response);

	}

}
