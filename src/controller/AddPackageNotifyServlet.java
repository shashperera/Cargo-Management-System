package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.PackageExport;
import service.PackageShipmentServiceImp;
import service.ShipmentService;

/**
 * Servlet implementation class AddNotifyServlet
 */
@WebServlet("/AddPackageNotifyServlet")
public class AddPackageNotifyServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AddPackageNotifyServlet() {
        super();

    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
response.setContentType("text/html");
		
		PackageExport  p = new PackageExport();
		
		String expoID = request.getParameter("expoID");
		String productCategory = request.getParameter("productCategory");
		String weight = request.getParameter("weight");
		String transpType = request.getParameter("transpType");
		String routeSelection = request.getParameter("routeSelection");
		String userid = request.getParameter("userid");
		String notify = request.getParameter("notify");
		
		p.setProductCategory(productCategory);
		p.setWeightOfProduct(weight);
		p.setTransportType(transpType);
		p.setRouteOption(routeSelection);
		p.setUserid(userid);
		p.setNotify(notify);
		
		ShipmentService ps = new PackageShipmentServiceImp();
		ps.updateNotify(expoID,p);
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/ExportList.jsp");
		dispatcher.forward(request, response);
		
		
		
	}

}
