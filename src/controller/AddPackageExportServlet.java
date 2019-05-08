package controller;// tell model what to do


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import model.PackageExport;
import service.IPackageService;
import service.PackageServiceImp;


/**
 * Servlet implementation class AddPackageExportServlet
 */
@WebServlet("/AddPackageExportServlet")

public class AddPackageExportServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       


    public AddPackageExportServlet() {
        super();
     
    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String productCategory = request.getParameter("productCategory");
		String weightOfProduct = request.getParameter("weightOfProduct");
		String transportType = request.getParameter("transportType");
		String routeOption = request.getParameter("routeOption");
		String userid = request.getParameter("userid");
		
		PackageExport packageExport = new PackageExport();
		
		packageExport.setProductCategory(productCategory);
		packageExport.setWeightOfProduct(weightOfProduct);
		packageExport.setTransportType(transportType);
		packageExport.setRouteOption(routeOption);
		packageExport.setUserid(userid);
		
		IPackageService iPackageService = new PackageServiceImp();
		iPackageService.addPackageExport(packageExport);

		request.setAttribute("packageExport", packageExport);
		
		request.getRequestDispatcher("/viewPackageDetails.jsp").forward(request, response);
			
	}
			
}



