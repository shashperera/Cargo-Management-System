package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.CargoExport;
import util.DBConnection;

public class CargoServiceImp implements ICargoService{

	private Connection con ;
	private PreparedStatement preparedStatement;
	
	@Override
	public void addCargoExport(CargoExport cargoExport) {
		
		String productCategory = cargoExport.getProductCategory();
		String noOfContainers = cargoExport.getNoOfContainers();
		String size = cargoExport.getSize();
		String ref = cargoExport.getRef();
		String transportType = cargoExport.getTransportType();
		String routeOption = cargoExport.getRouteOption();
		String userID = cargoExport.getUserid();
		
		
		
		try
		{
			con = DBConnection.createConnection();
			String query ="insert into cargoExpo(expoID,productCategory,noOfContainers,size,ref,transpType,routeSelection,userID) values (NULL,?,?,?,?,?,?,?)";
			
			preparedStatement = con.prepareStatement(query);
			preparedStatement.setString(1,productCategory);
			preparedStatement.setString(2,noOfContainers);
			preparedStatement.setString(3,size);
			preparedStatement.setString(4,ref);
			preparedStatement.setString(5,transportType);
			preparedStatement.setString(6,routeOption);
			preparedStatement.setString(7,userID);
			
			
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

	@Override
	public String updateCargoExpo(String expoID,CargoExport cargo) {
		
		if(expoID != null )
		{

			String productCategory = cargo.getProductCategory();
			String noOfContainers = cargo.getNoOfContainers();
			String size = cargo.getSize();
			String ref = cargo.getRef();
			String transpType = cargo.getTransportType();
			String routeSelection = cargo.getRouteOption();
			String userid = cargo.getUserid();

				
			
			try
			{
				con = DBConnection.createConnection();
				String sql="Update cargoExpo set expoID=?,productCategory=?,noOfContainers=?,size=?,ref=?,transpType=?,routeSelection=?,userID=?  where expoID="+expoID ;

				preparedStatement = con.prepareStatement(sql);
				preparedStatement.setString(1, expoID);
				preparedStatement.setString(2, productCategory);
				preparedStatement.setString(3, noOfContainers);
				preparedStatement.setString(4, size);
				preparedStatement.setString(5, ref);
				preparedStatement.setString(6, transpType);
				preparedStatement.setString(7, routeSelection);
				preparedStatement.setString(8, userid);
				
				
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
	public void deleteCargo(String expoID) {
		
		
			if (expoID != null && !expoID.isEmpty()) {
			
			
			
			try{ 
				con = DBConnection.createConnection();
				String sql1="DELETE FROM cargoExpo WHERE expoID="+expoID;
				
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

	

		
	


