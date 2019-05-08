package service;

import model.CargoExport;



public interface ICargoService {

	public void addCargoExport(CargoExport cargoExport);
	
	public String updateCargoExpo(String expoID, CargoExport cargo);
	
	public void deleteCargo(String expoID);
	

	
}
