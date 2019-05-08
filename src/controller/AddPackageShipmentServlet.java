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
 * Servlet implementation class AddPackageShipmentServlet
 */
@WebServlet("/AddPackageShipmentServlet")

public class AddPackageShipmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public AddPackageShipmentServlet() {
        
    }


	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String refID = request.getParameter("refID");
		String routeOption = request.getParameter("routeOption");
		String date1 = request.getParameter("date1");
		String portName1 = request.getParameter("portName1");
		String date2 = request.getParameter("date2");
		String portName2 = request.getParameter("portName2");
		String date3 = request.getParameter("date3");
		String portName3 = request.getParameter("portName3");
		
		Shipment package1 = new PackageShipment();
	
		package1.setRefID(refID);
		package1.setRouteOption(routeOption);
		package1.setDate1(date1);
		package1.setPortName1(portName1);
		package1.setDate2(date2);
		package1.setPortName2(portName2);
		package1.setDate3(date3);
		package1.setPortName3(portName3);
	
	
		ShipmentService iShipmentService1 = new PackageShipmentServiceImp();
		iShipmentService1.addPackageShipment(package1);
		
		request.setAttribute("package1", package1);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/views/ListPackageShipment.jsp");
		dispatcher.forward(request, response);
		
	}

}
