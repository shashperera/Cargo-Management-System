package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Cost;
import service.CostServiceImp;
import service.ICostService;

/**
 * Servlet implementation class AddCost
 */
@WebServlet("/AddCostServlet")
public class AddCostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public AddCostServlet() {
      
    }
   
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			String opt = request.getParameter("opt");
			String one = request.getParameter("one");
			String two = request.getParameter("two");
			String three = request.getParameter("three");
			String four = request.getParameter("four");
			String five = request.getParameter("five");
			String six = request.getParameter("six");
			String seven = request.getParameter("seven");
			
			Cost c1 = new Cost();
			
			c1.setOpt(opt);
			c1.setOne(one);
			c1.setTwo(two);
			c1.setThree(three);
			c1.setFour(four);
			c1.setFive(five);
			c1.setSix(six);
			c1.setSeven(seven);
			
			ICostService iCostService = new CostServiceImp();
			iCostService.insertCost(c1);
			
			request.setAttribute("c1", c1);
	
			request.getRequestDispatcher("CostList.jsp").forward(request, response);
		
	}
					
}


