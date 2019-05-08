package model; //(variable declarartion)

public  class Export {

	protected String productCategory;
	protected String transportType;
	protected String routeOption;
	protected String userid;
	protected String expoID;
	protected String notify;
	
	public String getExpoID() {
		return expoID;
	}
	public void setExpoID(String expoID) {
		this.expoID = expoID;
	}
	public String getNotify() {
		return notify;
	}
	public void setNotify(String notify) {
		this.notify = notify;
	}
	public String getProductCategory() {
		return productCategory;
	}
	public void setProductCategory(String productCategory) {
		this.productCategory = productCategory;
	}
	public String getTransportType() {
		return transportType;
	}
	public void setTransportType(String transportType) {
		this.transportType = transportType;
	}
	public String getRouteOption() {
		return routeOption;
	}
	public void setRouteOption(String routeOption) {
		this.routeOption = routeOption;
	}
	public String getUserid() {
		return userid;
	}
	public void setUserid(String userid) {
		this.userid = userid;
	}

	
}
