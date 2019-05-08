package controller;// tell model what to do


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
 * Servlet implementation class AddCargoExportServlet
 */
@WebServlet("/AddCargoExportServlet")

public class AddCargoExportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AddCargoExportServlet() {
        super();
     
    }

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String productC = request.getParameter("productC");
		String noOfCont = request.getParameter("noOfCont");
		String size = request.getParameter("size");
		String ref = request.getParameter("ref");
		String transType = request.getParameter("transType");
		String rOption = request.getParameter("rOption");
		String uid = request.getParameter("uid");
		
	
		CargoExport cargoExport = new CargoExport();
		
		cargoExport.setProductCategory(productC);
		cargoExport.setNoOfContainers(noOfCont);
		cargoExport.setSize(size);
		cargoExport.setRef(ref);
		cargoExport.setTransportType(transType);
		cargoExport.setRouteOption(rOption);
		cargoExport.setUserid(uid);
		
		ICargoService iCargoService = new CargoServiceImp();
		iCargoService.addCargoExport(cargoExport);

		request.setAttribute("cargoExport", cargoExport);
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/viewCargoDetails.jsp");
		dispatcher.forward(request, response);
						
	}
	
}


	