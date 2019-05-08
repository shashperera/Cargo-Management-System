package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.Cost;
import service.CostServiceImp;
import service.ICostService;




/**
 * Servlet implementation class updateCostServlet
 */
@WebServlet("/updateCostServlet")

public class updateCostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

    public updateCostServlet() {

    }


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		response.setContentType("text/html");
		
		Cost cost = new Cost();
		
		String num = request.getParameter("num");
		String opt = request.getParameter("opt");
		String one = request.getParameter("one");
		String two = request.getParameter("two");
		String three = request.getParameter("three");
		String four = request.getParameter("four");
		String five = request.getParameter("five");
		String six = request.getParameter("six");
		String seven = request.getParameter("seven");
	
		
		
		cost.setOpt(opt);
		cost.setOne(one);
		cost.setTwo(two);
		cost.setThree(three);
		cost.setFour(four);
		cost.setFive(five);
		cost.setSix(six);
		cost.setSeven(seven);
		
		
		ICostService iCostService = new CostServiceImp();
		iCostService.updateCost(num,cost);
		
		
		RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/CostList.jsp");
		dispatcher.forward(request, response);
	
		
		
		
	}

}
