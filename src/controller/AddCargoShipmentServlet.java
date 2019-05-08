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


@WebServlet("/AddCargoShipmentServlet")

public class AddCargoShipmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public AddCargoShipmentServlet() {

     
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String expoID = request.getParameter("expoID");
		String route = request.getParameter("route");
		String d1 = request.getParameter("d1");
		String pN1 = request.getParameter("pN1");
		String d2 = request.getParameter("d2");
		String pN2 = request.getParameter("pN2");
		String d3 = request.getParameter("d3");
		String pN3 = request.getParameter("pN3");
		
		//Apply polymorphism & create object
		Shipment cargo = new CargoShipment();
	
		cargo.setRefID(expoID);
		cargo.setRouteOption(route);
		cargo.setDate1(d1);
		cargo.setPortName1(pN1);
		cargo.setDate2(d2);
		cargo.setPortName2(pN2);
		cargo.setDate3(d3);
		cargo.setPortName3(pN3);
	
	
		ShipmentService iShipmentService = new CargoShipmentServiceImp();
		iShipmentService.addCargoShipment(cargo);

		request.setAttribute("cargo", cargo);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/WEB-INF/views/ListCargoShipment.jsp");
		dispatcher.forward(request, response);
	
	}

}
