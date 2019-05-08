package service;

import util.DBConnection;

public class PackageBill extends BillCalculate{

	public double calPackageBill(String routeSelection,double weight) {
		
		try {
			
			con = DBConnection.createConnection();
			statement=con.createStatement();
		
			if(routeSelection.equalsIgnoreCase("Sea1")) {
			
				String s1 = "select PackageWeight_1to10_KG,PackageWeight_11to25_KG,PackageWeight_26to50_KG,Above50KG FROM cost where Opt='"+routeSelection+"'";
				
				resultSet = statement.executeQuery(s1);
				
				while(resultSet.next()) {
					
					if(weight <= 10) {
						ProdAmt = weight * Double.parseDouble(resultSet.getString("PackageWeight_1to10_KG")) ;
					}
					else if(weight <= 25) {
						ProdAmt = weight * Double.parseDouble(resultSet.getString("PackageWeight_11to25_KG"));
					}
					else if(weight <= 50) {
						ProdAmt = weight * Double.parseDouble(resultSet.getString("PackageWeight_26to50_KG"));
					}
					else {
						ProdAmt = weight * Double.parseDouble(resultSet.getString("Above50KG"));
					}					
		
				}			
			}
			
			else if(routeSelection.equalsIgnoreCase("Sea2")) {
				
				String s1 = "select PackageWeight_1to10_KG,PackageWeight_11to25_KG,PackageWeight_26to50_KG,Above50KG FROM cost where Opt='"+routeSelection+"'";
				
				resultSet = statement.executeQuery(s1);
				
				while(resultSet.next()) {
					
					if(weight <= 10) {
						ProdAmt = weight * Double.parseDouble(resultSet.getString("PackageWeight_1to10_KG")) ;
					}
					else if(weight <= 25) {
						ProdAmt = weight * Double.parseDouble(resultSet.getString("PackageWeight_11to25_KG"));
					}
					else if(weight <= 50) {
						ProdAmt = weight * Double.parseDouble(resultSet.getString("PackageWeight_26to50_KG"));
					}
					else {
						ProdAmt = weight * Double.parseDouble(resultSet.getString("Above50KG"));
					}					
		
				}
			}
			
			else if(routeSelection.equalsIgnoreCase("Air1")) {
				
				String s1 = "select PackageWeight_1to10_KG,PackageWeight_11to25_KG,PackageWeight_26to50_KG,Above50KG FROM cost where Opt='"+routeSelection+"'";
				
				resultSet = statement.executeQuery(s1);
				
				while(resultSet.next()) {
					
					if(weight <= 10) {
						ProdAmt = weight * Double.parseDouble(resultSet.getString("PackageWeight_1to10_KG")) ;
					}
					else if(weight <= 25) {
						ProdAmt = weight * Double.parseDouble(resultSet.getString("PackageWeight_11to25_KG"));
					}
					else if(weight <= 50) {
						ProdAmt = weight * Double.parseDouble(resultSet.getString("PackageWeight_26to50_KG"));
					}
					else {
						ProdAmt = weight * Double.parseDouble(resultSet.getString("Above50KG"));
					}					
		
				}
			}
			
			else if(routeSelection.equalsIgnoreCase("Air2")) {
				
				String s1 = "select PackageWeight_1to10_KG,PackageWeight_11to25_KG,PackageWeight_26to50_KG,Above50KG FROM cost where Opt='"+routeSelection+"'";
				
				resultSet = statement.executeQuery(s1);
				
				while(resultSet.next()) {
					
					if(weight <= 10) {
						ProdAmt = weight * Double.parseDouble(resultSet.getString("PackageWeight_1to10_KG")) ;
					}
					else if(weight <= 25) {
						ProdAmt = weight * Double.parseDouble(resultSet.getString("PackageWeight_11to25_KG"));
					}
					else if(weight <= 50) {
						ProdAmt = weight * Double.parseDouble(resultSet.getString("PackageWeight_26to50_KG"));
					}
					else {
						ProdAmt = weight * Double.parseDouble(resultSet.getString("Above50KG"));
					}					
		
				}				
			}
			
			else {
				
				ProdAmt=0000.00;
			}
		
		}catch(Exception e) {
			e.getMessage();
		}
		
		return ProdAmt;
		
	}
	
	
	@Override
	public double calCargoBill(String routeSelection, int noOfContainers) {
		
		return 0;
	}

}

