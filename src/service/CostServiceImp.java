package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.Cost;
import util.DBConnection;

public class CostServiceImp implements ICostService{

	private static PreparedStatement preparedStatement = null;
	private static Connection con = null;
	
	@Override
	public String updateCost(String num, Cost c1) {
					
			if(num != null)
			{
				
				String opt = c1.getOpt();
				String one = c1.getOne();
				String two = c1.getTwo();
				String three = c1.getThree();
				String four = c1.getFour();
				String five = c1.getFive();
				String six = c1.getSix();
				String seven = c1.getSeven();
					

				
				try
				{
					con = DBConnection.createConnection();
			
					String sql="update cost set num=?,Opt=?,PackageWeight_1to10_KG=?,PackageWeight_11to25_KG=?,PackageWeight_26to50_KG=?,Above50KG=?,tax=?,TotalPortCost=?,CostPerOneContainer=? where num="+num;
					preparedStatement = con.prepareStatement(sql);
					
					preparedStatement.setString(1, num);
					preparedStatement.setString(2, opt);
					preparedStatement.setString(3, one);
					preparedStatement.setString(4, two);
					preparedStatement.setString(5, three);
					preparedStatement.setString(6, four);
					preparedStatement.setString(7, five);
					preparedStatement.setString(8, six);
					preparedStatement.setString(9, seven);
											
					preparedStatement.executeUpdate();				
					
				} catch (SQLException e) {
						e.getMessage();
					} finally {
				
					try {
						if (preparedStatement != null) {
							preparedStatement.close();
						}
						if (con != null) {
							con.close();
						}
					} catch (SQLException e) {
						 e.getMessage();
					}
				}
			}
			return num;
		}
	


	@Override
	public void deleteCost(String num) {
		
		if (num != null && !num.isEmpty()) {
			

			try{ 
				con = DBConnection.createConnection();
				String sql1="DELETE FROM cost WHERE num="+num;
				
				preparedStatement = con.prepareStatement(sql1);
				
			
				preparedStatement.executeUpdate();				
				
			} catch (SQLException e) {
					e.getMessage();
				} finally {
			
				try {
					if (preparedStatement != null) {
						preparedStatement.close();
					}
					if (con != null) {
						con.close();
					}
				} catch (SQLException e) {
					 e.getMessage();
				}
			}
		}
	}



	@Override
	public void insertCost(Cost c) {
		

		String opt = c.getOpt();
		String one = c.getOne();
		String two = c.getTwo();
		String three = c.getThree();
		String four = c.getFour();
		String five = c.getFive();
		String six = c.getSix();
		String seven = c.getSeven();
		

		
		try
		{
			con = DBConnection.createConnection();
			String q ="insert into cost(num,Opt,PackageWeight_1to10_KG,PackageWeight_11to25_KG,PackageWeight_26to50_KG,Above50KG,tax,TotalPortCost,CostPerOneContainer) values (NULL,?,?,?,?,?,?,?,?)";
			
			preparedStatement = con.prepareStatement(q);
			preparedStatement.setString(1,opt);
			preparedStatement.setString(2,one);
			preparedStatement.setString(3,two);
			preparedStatement.setString(4,three);
			preparedStatement.setString(5,four);
			preparedStatement.setString(6,five);
			preparedStatement.setString(7,six);
			preparedStatement.setString(8,seven);
			
			
			preparedStatement.executeUpdate();
		}
			catch(SQLException e)
			{
				e.printStackTrace();
			}
			 finally {
		
				 try {
					 if (preparedStatement != null) {
						 preparedStatement.close();
					 }
					 	if (con != null) {
					 		con.close();
					 	}
				 } catch (SQLException e) {
				 e.getMessage();
				 }
				 
				
		}
	
	
	}
}
