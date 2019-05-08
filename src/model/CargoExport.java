package model; //variable declarartion

public class CargoExport extends Export{
	
	
	private String noOfContainers;
	private String size;
	private String ref;
	
	public CargoExport() {
		super();

	}

	public String getNoOfContainers() {
		return noOfContainers;
	}

	public void setNoOfContainers(String noOfContainers) {
		this.noOfContainers = noOfContainers;
	}

	public String getSize() {
		return size;
	}

	public void setSize(String size) {
		this.size = size;
	}

	public String getRef() {
		return ref;
	}

	public void setRef(String ref) {
		this.ref = ref;
	}

	
}
