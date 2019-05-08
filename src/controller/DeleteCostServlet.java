package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import service.CostServiceImp;
import service.ICostService;


/**
 * Servlet implementation class DeleteCostServlet
 */
@WebServlet("/DeleteCostServlet")

public class DeleteCostServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public DeleteCostServlet() {

    }

	
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
			String num = request.getParameter("num");			
			
			ICostService iCostService = new CostServiceImp();
			iCostService.deleteCost(num);

			RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/CostList.jsp");
			dispatcher.forward(request, response);
		}

}
