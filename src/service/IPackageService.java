package service;

//import model.Export;
import model.PackageExport;



public interface IPackageService {

	public void addPackageExport(PackageExport packageExport);
	
	public String updatePackageExport(String expoID, PackageExport package1);
	
	public void deletePackage(String expoID);
	
	
}
