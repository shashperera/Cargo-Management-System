package controller; //get Package related data andd tell model(cost.java) what to do 

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.BillCalculate;
import service.PackageBill;



@WebServlet("/calPackageFullAmtServlet")
public class calPackageFullAmtServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	
    public calPackageFullAmtServlet() {
        super();

    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String expoID = request.getParameter("expoID");
		Double weight = Double.parseDouble( request.getParameter("weight"));
		String routeSelection = request.getParameter("routeSelection");
		
		BillCalculate billCalculate = new PackageBill();
		
		billCalculate.calPackageBill(routeSelection,weight);
		billCalculate.Tax(routeSelection);
		billCalculate.PortCost(routeSelection);
		billCalculate.Total();
		
		double b1 = billCalculate.calPackageBill(routeSelection,weight);
		double b2 = billCalculate.PortCost(routeSelection);
		double b3 = billCalculate.Tax(routeSelection);
		double b4 = billCalculate.Total();
		
		request.setAttribute("b1", b1);
		request.setAttribute("b2", b2);
		request.setAttribute("b3", b3);
		request.setAttribute("b4", b4);
		request.setAttribute("weight", weight);
		request.setAttribute("expoID", expoID);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("TotalPackageCost.jsp");	
		dispatcher.forward(request, response);
		
		}
	
	
}
