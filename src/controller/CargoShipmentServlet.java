package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ShipmentServlet
 */
@WebServlet("/CargoShipmentServlet")
public class CargoShipmentServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CargoShipmentServlet() {
        super();

    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	String a = request.getParameter("expoID");
	String b = request.getParameter("routeSelection");
	
	request.setAttribute("expoID", a);
	request.setAttribute("routeSelection", b);
	RequestDispatcher rd=request.getRequestDispatcher("/addCargoShipment.jsp");
	rd.forward(request, response);
		
	}

}
