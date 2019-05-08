package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.CargoExport;
import service.CargoServiceImp;
import service.ICargoService;


/**
 * Servlet implementation class UpdateCargoExpoServlet
 */
@WebServlet("/UpdateCargoExpoServlet")

public class UpdateCargoExpoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public UpdateCargoExpoServlet() {
        super();
       
    }


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		response.setContentType("text/html");
		
		CargoExport  cargo = new CargoExport();
		
		String expoID = request.getParameter("expoID");
		String productCategory = request.getParameter("productCategory");
		String noOfContainers = request.getParameter("noOfContainers");
		String size = request.getParameter("size");
		String ref = request.getParameter("ref");
		String transpType = request.getParameter("transpType");
		String routeSelection = request.getParameter("routeSelection");
		String userid = request.getParameter("userid");
		
		cargo.setProductCategory(productCategory);
		cargo.setNoOfContainers(noOfContainers);
		cargo.setSize(size);
		cargo.setRef(ref);
		cargo.setTransportType(transpType);
		cargo.setRouteOption(routeSelection);
		cargo.setUserid(userid);
		
		ICargoService iCargoService = new CargoServiceImp();
		iCargoService.updateCargoExpo(expoID,cargo);
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/viewExpo.jsp");
		dispatcher.forward(request, response);
		
	}

}
