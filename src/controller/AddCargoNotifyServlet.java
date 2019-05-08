package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.CargoExport;
import service.CargoShipmentServiceImp;
import service.ShipmentService;


@WebServlet("/AddCargoNotifyServlet")
public class AddCargoNotifyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public AddCargoNotifyServlet() {
        super();
  
    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		
		CargoExport  c = new CargoExport();
		
		String expoID = request.getParameter("expoID");
		String productCategory = request.getParameter("productCategory");
		String noOfContainers = request.getParameter("noOfContainers");
		String size = request.getParameter("size");
		String ref = request.getParameter("ref");
		String transpType = request.getParameter("transpType");
		String routeSelection = request.getParameter("routeSelection");
		String userid = request.getParameter("userid");
		String notify = request.getParameter("notify");
		
		
		c.setProductCategory(productCategory);
		c.setNoOfContainers(noOfContainers);
		c.setSize(size);
		c.setRef(ref);
		c.setTransportType(transpType);
		c.setRouteOption(routeSelection);
		c.setUserid(userid);
		c.setNotify(notify);
		
		ShipmentService ps = new CargoShipmentServiceImp();
		ps.updateNotify(expoID,c);
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/ExportList.jsp");
		dispatcher.forward(request, response);
		
	}
}
