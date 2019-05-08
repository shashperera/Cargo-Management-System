package controller;//get Cargo related data andd tell model(cost.java) what to do 

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.BillCalculate;
import service.CargoBill;


@WebServlet("/calCargoFullAmtServlet")
public class calCargoFullAmtServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public calCargoFullAmtServlet() {
        super();

    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String routeSelection = request.getParameter("routeSelection");
		int noOfContainers = Integer.parseInt( request.getParameter("noOfContainers"));
		String expoID = request.getParameter("expoID");
		
		BillCalculate billCalculate = new CargoBill();
		billCalculate.calCargoBill(routeSelection,noOfContainers);
		billCalculate.Tax(routeSelection);
		billCalculate.PortCost(routeSelection);
		billCalculate.Total();
		
		double b1 = billCalculate.calCargoBill(routeSelection,noOfContainers);
		double b2 = billCalculate.PortCost(routeSelection);
		double b3 = billCalculate.Tax(routeSelection);
		double b4 = billCalculate.Total();
		
		request.setAttribute("b1", b1);
		request.setAttribute("b2", b2);
		request.setAttribute("b3", b3);
		request.setAttribute("b4", b4);
		request.setAttribute("noOfContainers", noOfContainers);
		request.setAttribute("expoID", expoID);
		
		RequestDispatcher dispatcher = request.getRequestDispatcher("TotalCargoCost.jsp");	
		dispatcher.forward(request, response);
		
		}
	
}
