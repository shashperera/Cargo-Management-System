package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

//import model.Export;
import model.PackageExport;
import util.DBConnection;

public class PackageServiceImp implements IPackageService{

	private static Connection con;
	private static PreparedStatement preparedStatement;
	
	@Override
	public void addPackageExport(PackageExport packageExport) {
		
		String productCategory = packageExport.getProductCategory();
		String weightOfProduct = packageExport.getWeightOfProduct();
		String transportType = packageExport.getTransportType();
		String routeOption = packageExport.getRouteOption();
		String userid = packageExport.getUserid();
		
		
		try
		{
			con = DBConnection.createConnection();
			String query ="insert into packageExpo(expoID,productCategory,weight,transpType,routeSelection,userID) values (NULL,?,?,?,?,?)";
			
			preparedStatement = con.prepareStatement(query);
			preparedStatement.setString(1,productCategory);
			preparedStatement.setString(2,weightOfProduct);
			preparedStatement.setString(3,transportType);
			preparedStatement.setString(4,routeOption);
			preparedStatement.setString(5,userid);
			
			
			preparedStatement.executeUpdate();
		}
			catch(SQLException e)
			{
				e.printStackTrace();
				
			}finally {
				
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
	
	
	@Override
	public String updatePackageExport(String expoID, PackageExport package1) {

		if(expoID != null)
		{

			String productCategory = package1.getProductCategory();
			String weight = package1.getWeightOfProduct();
			String transpType = package1.getTransportType();
			String routeSelection = package1.getRouteOption();
			String userid = package1.getUserid();

			
			try
			{
				con = DBConnection.createConnection();
				String sql="Update packageExpo set expoID=?,productCategory=?,weight=?,transpType=?,routeSelection=?,userID=?  where expoID="+expoID;

				preparedStatement = con.prepareStatement(sql);
				preparedStatement.setString(1, expoID);
				preparedStatement.setString(2, productCategory);
				preparedStatement.setString(3, weight);
				preparedStatement.setString(4, transpType);
				preparedStatement.setString(5, routeSelection);
				preparedStatement.setString(6, userid);
				
				
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
		return expoID;
	}

	
	@Override
	public void deletePackage(String expoID) {
		
		if (expoID != null && !expoID.isEmpty()) {

			
			try{ 
				con = DBConnection.createConnection();
				String sql1="DELETE FROM packageExpo WHERE expoID="+expoID;
				
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
			
}


