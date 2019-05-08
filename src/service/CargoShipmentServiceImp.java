package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.CargoExport;
import model.PackageExport;
import model.Shipment;
import util.DBConnection;

public class CargoShipmentServiceImp implements ShipmentService{
	
	public  static Connection con;
	public static PreparedStatement preparedStatement;

	public void addCargoShipment(Shipment cargo) {
		
			String expoID = cargo.getRefID();
			String routeOption = cargo.getRouteOption();
			String date1 = cargo.getDate1();
			String portName1 = cargo.getPortName1();
			String date2 = cargo.getDate2();
			String portName2 = cargo.getPortName2();
			String date3 = cargo.getDate3();
			String portName3 = cargo.getPortName3();
			

		
		try
		{
			con = DBConnection.createConnection();
			String query1 ="insert into cargoShipment(shipmentID,refID,routeOption,date1,portName1,date2,portName2,date3,portName3) values (NULL,?,?,?,?,?,?,?,?)";
			
			preparedStatement = con.prepareStatement(query1);
			preparedStatement.setString(1,expoID);
			preparedStatement.setString(2,routeOption);
			preparedStatement.setString(3,date1);
			preparedStatement.setString(4,portName1);
			preparedStatement.setString(5,date2);
			preparedStatement.setString(6,portName2);
			preparedStatement.setString(7,date3);
			preparedStatement.setString(8,portName3);
			
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
	

	public String updateCargoShipment(String shipmentID, Shipment cargo1) {
		
		if(shipmentID != null)
		{
			
			String refID = cargo1.getRefID();
			String routeOption = cargo1.getRouteOption();
			String date1 = cargo1.getDate1();
			String portName1 = cargo1.getPortName1();
			String date2 = cargo1.getDate2();
			String portName2 = cargo1.getPortName2();
			String date3 = cargo1.getDate3();
			String portName3 = cargo1.getPortName3();
				
			
			try
			{
				con = DBConnection.createConnection();
		
				String sql="Update cargoShipment set shipmentID=?,refID=?,routeOption=?,date1=?,portName1=?,date2=?,portName2=?,date3=?,portName3=?  where shipmentID="+shipmentID;

				preparedStatement = con.prepareStatement(sql);
				preparedStatement.setString(1,shipmentID);
				preparedStatement.setString(2, refID);
				preparedStatement.setString(3, routeOption);
				preparedStatement.setString(4, date1);
				preparedStatement.setString(5, portName1);
				preparedStatement.setString(6, date2);
				preparedStatement.setString(7, portName2);
				preparedStatement.setString(8, date3);
				preparedStatement.setString(9, portName3);
			
							
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
		return shipmentID;
	}


	@Override
	public void deleteCargoShipment(String shipmentID) {
		
		
		if (shipmentID != null ) {
			
			
			
			try{ 
				con = DBConnection.createConnection();
				String sql="DELETE FROM cargoShipment WHERE shipmentID="+shipmentID;
				
				preparedStatement = con.prepareStatement(sql);
				
			
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
	public String updateNotify(String expoID, CargoExport c) {
		if(expoID != null )
		{

			String productCategory = c.getProductCategory();
			String noOfContainers = c.getNoOfContainers();
			String size = c.getSize();
			String ref = c.getRef();
			String transpType = c.getTransportType();
			String routeSelection = c.getRouteOption();
			String userid = c.getUserid();
			String notify = c.getNotify();
				
			
			try
			{
				con = DBConnection.createConnection();
				String sql="Update cargoExpo set expoID=?,productCategory=?,noOfContainers=?,size=?,ref=?,transpType=?,routeSelection=?,userID=?,notify=?  where expoID="+expoID ;

				preparedStatement = con.prepareStatement(sql);
				preparedStatement.setString(1, expoID);
				preparedStatement.setString(2, productCategory);
				preparedStatement.setString(3, noOfContainers);
				preparedStatement.setString(4, size);
				preparedStatement.setString(5, ref);
				preparedStatement.setString(6, transpType);
				preparedStatement.setString(7, routeSelection);
				preparedStatement.setString(8, userid);
				preparedStatement.setString(9, notify);
				
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
	public void addPackageShipment(Shipment package1) {
		
		
	}


	@Override
	public String updatePackageShipment(String PshipmentID, Shipment package1) {
	
		return null;
	}


	@Override
	public void deletePackageShipment(String PshipmentID) {
		
		
	}


	@Override
	public String updateNotify(String expoID, PackageExport e) {
		// TODO Auto-generated method stub
		return null;
	}




}

	
	
