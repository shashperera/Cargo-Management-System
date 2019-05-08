package service;

import model.Customer;

public interface ICustomerService {

	public void customerRegister(Customer register);
	
	public boolean loginCheck(String uname,String pass,String utype);
	
	public String GetID(String uname,String pass,String utype);
	
	public String updateProfile(String user,Customer c);
	
}
