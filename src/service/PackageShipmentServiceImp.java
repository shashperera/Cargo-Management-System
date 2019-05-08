package service;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import model.CargoExport;
import model.PackageExport;
import model.Shipment;
import util.DBConnection;

public class PackageShipmentServiceImp implements ShipmentService {

	private static Connection con;	
	public PreparedStatement preparedStatement ;
	
	@Override
	public void addPackageShipment(Shipment package1) {
		
		String refID = package1.getRefID();
		String routeOption = package1.getRouteOption();
		String date1 = package1.getDate1();
		String portName1 = package1.getPortName1();
		String date2 = package1.getDate2();
		String portName2 = package1.getPortName2();
		String date3 = package1.getDate3();
		String portName3 = package1.getPortName3();
		

		
		try
		{
			con = DBConnection.createConnection();
			String query ="insert into PackageShipment(PshipmentID,refID,routeOption,date1,portName1,date2,portName2,date3,portName3) values (NULL,?,?,?,?,?,?,?,?)";
			
			preparedStatement = con.prepareStatement(query);
			preparedStatement.setString(1,refID);
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

	@Override
	public String updatePackageShipment(String PshipmentID, Shipment package1) {
		
		if(PshipmentID != null)
		{
			
			String refID = package1.getRefID();
			String routeOption = package1.getRouteOption();
			String date1 = package1.getDate1();
			String portName1 = package1.getPortName1();
			String date2 = package1.getDate2();
			String portName2 = package1.getPortName2();
			String date3 = package1.getDate3();
			String portName3 = package1.getPortName3();
				

			
			try
			{
				con = DBConnection.createConnection();
		
				String sql="Update packageShipment set PshipmentID=?,refID=?,routeOption=?,date1=?,portName1=?,date2=?,portName2=?,date3=?,portName3=?  where PshipmentID="+PshipmentID;

				preparedStatement = con.prepareStatement(sql);
				preparedStatement.setString(1,PshipmentID);
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
		return PshipmentID;
	}

	@Override
	public void deletePackageShipment(String PshipmentID) {
		
		
		if (PshipmentID != null ) {
			
			
			
			try{ 
				con = DBConnection.createConnection();
				String sql="DELETE FROM packageShipment WHERE expoID="+PshipmentID;
				
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
	public String updateNotify(String expoID, PackageExport e) {
		
		if(expoID != null)
		{

			String productCategory = e.getProductCategory();
			String weight = e.getWeightOfProduct();
			String transpType = e.getTransportType();
			String routeSelection = e.getRouteOption();
			String notify = e.getNotify();
			String userid = e.getUserid();

				
			PreparedStatement ps = null;
			
			try
			{
				con = DBConnection.createConnection();
				String sql="Update packageExpo set expoID=?,productCategory=?,weight=?,transpType=?,routeSelection=?,userID=?,notify=?  where expoID="+expoID;

				ps = con.prepareStatement(sql);
				ps.setString(1, expoID);
				ps.setString(2, productCategory);
				ps.setString(3, weight);
				ps.setString(4, transpType);
				ps.setString(5, routeSelection);
				ps.setString(6, userid);
				ps.setString(7, notify);
				
				ps.executeUpdate();				
				
			} catch (SQLException e1) {
					e1.getMessage();
				} finally {
			
				try {
					if (ps != null) {
						ps.close();
					}
					if (con != null) {
						con.close();
					}
				} catch (SQLException e1) {
					 e1.getMessage();
				}
			}
		}
		return expoID;
	}
	
	
	public void addCargoShipment(Shipment cargo) {
		
		
	}

	
	public String updateCargoShipment(String shipmentID, Shipment cargo1) {

		return null;
	}

	
	public void deleteCargoShipment(String shipmentID) {

		
	}

	@Override
	public String updateNotify(String expoID, CargoExport c) {

		return null;
	}







}
