package kr.co.farmStory.dto;

public class AdminDTO {
	private int pid;
	private String pName;
	private String types;
	private int price;
	private int point;
	private String discount;
	private int charge;
	private int stock;
	private String other;
	private String pDate;
	
	
	private String oName;
	private String sName;
	
	public String getsName() {
		return sName;
	}
	
	public void setsName(String sName) {
		this.sName = sName;
	}
	
	public String getoName() {
		return oName;
	}
	
	public void setoName(String oName) {
		this.oName = oName;
	}
	
	
	public int getPid() {
		return pid;
	}
	public void setPid(int pid) {
		this.pid = pid;
	}
	
	public void setPid(String pid) {
		
		if(pid != null) {
			this.pid = Integer.parseInt(pid);
		}
		
	}
	
	public String getpName() {
		return pName;
	}
	public void setpName(String pName) {
		this.pName = pName;
	}
	
	public String getTypes() {
		return types;
	}
	public void setTypes(String types) {
		this.types = types;
	}
	
	public int getPrice() {
		return price;
	}
	
	public void setPrice(int price) {
		this.price = price;
	}
	
	public void setPrice(String price) {
		
		if(price != null) {
			this.price = Integer.parseInt(price);
		}
	}
	
	public int getPoint() {
		return point;
	}
	public void setPoint(int point) {
		this.point = point;
	}
	
	public void setPoint(String point) {
		
		if(point != null) {
			this.point = Integer.parseInt(point);
		}
	}
	
	public String getDiscount() {
		return discount;
	}
	
	public void setDiscount(String discount) {
		this.discount = discount;
	}
	
	public int getCharge() {
		return charge;
	}
	public void setCharge(int charge) {
		this.charge = charge;
	}
	
	public void setCharge(String Charge) {
		if(Charge != null) {
			this.charge = Integer.parseInt(Charge);
		}
	}
	
	public int getStock() {
		return stock;
	}
	public void setStock(int stock) {
		this.stock = stock;
	}
	
	public void setStock(String Stock) {
		if(Stock != null) {
			this.stock = Integer.parseInt(Stock);
		}
	}
	
	public String getOther() {
		return other;
	}
	public void setOther(String other) {
		this.other = other;
	}
	public String getpDate() {
		return pDate;
	}
	public void setpDate(String pDate) {
		this.pDate = pDate;
	}
	
	@Override
	public String toString() {
		return "AdminDTO [pid=" + pid + ", pName=" + pName + ", types=" + types + ", price=" + price + ", point="
				+ point + ", discount=" + discount + ", charge=" + charge + ", stock=" + stock +  ", other=" + other + ", pDate=" + pDate + "]";
	}
	
	
	
	
}