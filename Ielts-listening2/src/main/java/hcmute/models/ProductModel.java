package hcmute.models;

import java.io.Serializable;

public class ProductModel implements Serializable{

	private static final long serialVersionUID = 6065277787861642006L;
	private int productID;
	private String productName;
	private String description ;
	private int price ;
	private String imageLink ;
	private int cateID;
	private int sellerID ;
	private int amount ;
	private int stoke ;
	public ProductModel(int productID, String productName, String description, int price, String imageLink, int cateID,
			int sellerID, int amount, int stoke) {
		super();
		this.productID = productID;
		this.productName = productName;
		this.description = description;
		this.price = price;
		this.imageLink = imageLink;
		this.cateID = cateID;
		this.sellerID = sellerID;
		this.amount = amount;
		this.stoke = stoke;
	}
	public ProductModel() {
		super();
	}
	@Override
	public String toString() {
		return "ProductModel [productID=" + productID + ", productName=" + productName + ", description=" + description
				+ ", price=" + price + ", imageLink=" + imageLink + ", cateID=" + cateID + ", sellerID=" + sellerID
				+ ", amount=" + amount + ", stoke=" + stoke + "]";
	}
	public int getProductID() {
		return productID;
	}
	public void setProductID(int productID) {
		this.productID = productID;
	}
	public String getProductName() {
		return productName;
	}
	public void setProductName(String productName) {
		this.productName = productName;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getImageLink() {
		return imageLink;
	}
	public void setImageLink(String imageLink) {
		this.imageLink = imageLink;
	}
	public int getCateID() {
		return cateID;
	}
	public void setCateID(int cateID) {
		this.cateID = cateID;
	}
	public int getSellerID() {
		return sellerID;
	}
	public void setSellerID(int sellerID) {
		this.sellerID = sellerID;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public int getStoke() {
		return stoke;
	}
	public void setStoke(int stoke) {
		this.stoke = stoke;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
	
	
	
}
