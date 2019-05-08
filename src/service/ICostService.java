package service;

import model.Cost;

public interface ICostService {

	
	public String updateCost(String num,Cost cost);
	
	public void deleteCost(String num);
	
	public void insertCost(Cost c);
}
