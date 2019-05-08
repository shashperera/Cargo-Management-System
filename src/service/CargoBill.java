package service;

import util.DBConnection;

public class CargoBill extends BillCalculate {

	public double calCargoBill(String routeSelection,int noOfContainers) {
		
		try {
			
			con = DBConnection.createConnection();
			statement=con.createStatement();
			
			if(routeSelection.equalsIgnoreCase("Sea1")) {
										
						String s1 = "select CostPerOneContainer FROM cost where Opt='"+routeSelection+"'";
				
						resultSet = statement.executeQuery(s1);
						while(resultSet.next()) {
					
							ProdAmt = noOfContainers * Double.parseDouble(resultSet.getString("CostPerOneContainer")) ;
				
						}
			}
				
			
			else if(routeSelection.equalsIgnoreCase("Sea2")) {
				
				
					String s1 = "select CostPerOneContainer FROM cost where Opt='"+routeSelection+"'";
			
					resultSet = statement.executeQuery(s1);
					while(resultSet.next()) {
				
						ProdAmt = noOfContainers * Double.parseDouble(resultSet.getString("CostPerOneContainer")) ;
			
					}
			}
			
			
			else if(routeSelection.equalsIgnoreCase("Air1")) {
				
					String s1 = "select CostPerOneContainer FROM cost where Opt='"+routeSelection+"'";
			
					resultSet = statement.executeQuery(s1);
					while(resultSet.next()) {
				
						ProdAmt = noOfContainers * Double.parseDouble(resultSet.getString("CostPerOneContainer")) ;
			
					}
			}
			
			
			else if(routeSelection.equalsIgnoreCase("Air2")) {
				
				
					String s1 = "select CostPerOneContainer FROM cost where Opt='"+routeSelection+"'";
			
					resultSet = statement.executeQuery(s1);
					while(resultSet.next()) {
				
						ProdAmt = noOfContainers * Double.parseDouble(resultSet.getString("CostPerOneContainer")) ;
			
					}
			}
			
			else {
				
				pCost= 00000.00;
			}
			
			
		}catch(Exception e) {
			
		}
					
		return ProdAmt;
		
		
	}	
			
		
	@Override
	public double calPackageBill(String routeSelection, double weight) {

		return 0;
	}
	
}
