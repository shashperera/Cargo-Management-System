package service; //Connect with db and get data


import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import util.DBConnection;

public abstract class BillCalculate {
	
	public double ProdAmt;
	public double tax;
	public double pCost;
	public double tot;
	
	public static Connection con = null;
	public static Statement statement = null;
	public static ResultSet resultSet = null;
	
	public abstract double calCargoBill(String routeSelection,int noOfContainers) ;
	public abstract double calPackageBill(String routeSelection,double weight);
	
	
	
	public double Tax(String routeSelection) {
		
		try {
			con = DBConnection.createConnection();
			statement=con.createStatement();
			
		
			if(routeSelection.equalsIgnoreCase("Sea1")) {
			
			
				String s1 = "select tax FROM cost where Opt='"+routeSelection+"'";
		
				resultSet = statement.executeQuery(s1);
				while(resultSet.next()) {
			
					tax= ProdAmt * Double.parseDouble(resultSet.getString("tax")) ;
		
				}									
			}
		
			else if(routeSelection.equalsIgnoreCase("Sea2")) {
			
				String s1 = "select tax FROM cost where Opt='"+routeSelection+"'";
		
				resultSet = statement.executeQuery(s1);
				while(resultSet.next()) {
			
					tax= ProdAmt * Double.parseDouble(resultSet.getString("tax")) ;
		
				}		
			}
			
			else if(routeSelection.equalsIgnoreCase("Air1")) {
			
				String s1 = "select tax FROM cost where Opt='"+routeSelection+"'";
		
				resultSet = statement.executeQuery(s1);
				while(resultSet.next()) {
			
					tax= ProdAmt * Double.parseDouble(resultSet.getString("tax")) ;
		
				}		
			}
			
			else if(routeSelection.equalsIgnoreCase("Air2")) {

				String s1 = "select tax FROM cost where Opt='"+routeSelection+"'";
		
				resultSet = statement.executeQuery(s1);
				while(resultSet.next()) {
			
					tax= ProdAmt * Double.parseDouble(resultSet.getString("tax")) ;
		
				}		
			}
			
			else {
				
				pCost= 00000.00;
			}
			
		}catch(Exception e) {
			e.getMessage();
		}
		
		
		return tax;
		
	}

	
	public double PortCost(String routeSelection) {
		
		try {
			con = DBConnection.createConnection();
			statement=con.createStatement();
		
			if(routeSelection.equalsIgnoreCase("Sea1")) {
			
			
				String s1 = "select TotalPortCost FROM cost where Opt='"+routeSelection+"'";
		
				resultSet = statement.executeQuery(s1);
				while(resultSet.next()) {
			
					pCost= Double.parseDouble(resultSet.getString("TotalPortCost")) ;
		
				}						
			}
		
			else if(routeSelection.equalsIgnoreCase("Sea2")) {
			
				String s1 = "select TotalPortCost FROM cost where Opt='"+routeSelection+"'";
		
				resultSet = statement.executeQuery(s1);
				while(resultSet.next()) {
			
					pCost= Double.parseDouble(resultSet.getString("TotalPortCost")) ;
		
				}
			
			}
		
			else if(routeSelection.equalsIgnoreCase("Air1")) {
			
				String s1 = "select TotalPortCost FROM cost where Opt='"+routeSelection+"'";
		
				resultSet = statement.executeQuery(s1);
				while(resultSet.next()) {
			
					pCost= Double.parseDouble(resultSet.getString("TotalPortCost")) ;
		
				}		
			}
		
			else if(routeSelection.equalsIgnoreCase("Air2")) {
			
				String s1 = "select TotalPortCost FROM cost where Opt='"+routeSelection+"'";
		
				resultSet = statement.executeQuery(s1);
				while(resultSet.next()) {
			
					pCost= Double.parseDouble(resultSet.getString("TotalPortCost")) ;
		
				}	
			}
			
			else {
				
				pCost= 00000.00;
			}
			
		}catch(Exception e) {
			e.getMessage();
		}
		
		return pCost;
		
	}
		
	public double Total() {
		
		return tot=(pCost+tax+ProdAmt);
		
	}
	

}
