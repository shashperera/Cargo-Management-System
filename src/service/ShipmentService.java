package service;



import model.CargoExport;
import model.PackageExport;
import model.Shipment;


public interface ShipmentService {



	
	public void addCargoShipment(Shipment cargo);
	
	public String updateCargoShipment(String shipmentID, Shipment cargo1);
	
	public void deleteCargoShipment(String shipmentID);
	
	public String updateNotify(String expoID, CargoExport c);
	
	
	public void addPackageShipment(Shipment package1);
	
	public String updatePackageShipment(String PshipmentID, Shipment package1);
	
	public void deletePackageShipment(String PshipmentID);
	
	public String updateNotify(String expoID, PackageExport e); 
	}

