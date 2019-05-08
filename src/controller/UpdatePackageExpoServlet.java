package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.PackageExport;
import service.IPackageService;
import service.PackageServiceImp;


/**
 * Servlet implementation class UpdatePackageExpoServlet
 */
@WebServlet("/UpdatePackageExpoServlet")
public class UpdatePackageExpoServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
  
    public UpdatePackageExpoServlet() {
        super();
        
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		
		response.setContentType("text/html");
		
		PackageExport  package1 = new PackageExport();
		
		String expoID = request.getParameter("expoID");
		String productCategory = request.getParameter("productCategory");
		String weight = request.getParameter("weight");
		String transpType = request.getParameter("transpType");
		String routeSelection = request.getParameter("routeSelection");
		String userid = request.getParameter("userid");
		
		package1.setProductCategory(productCategory);
		package1.setWeightOfProduct(weight);
		package1.setTransportType(transpType);
		package1.setRouteOption(routeSelection);
		package1.setUserid(userid);
		
		IPackageService iPackageService = new PackageServiceImp();
		iPackageService.updatePackageExport(expoID,package1);
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/viewExpo.jsp");
		dispatcher.forward(request, response);
		
	
	}

}
