package org.fkit.ebuy.domain;

public class Collect {
	
	private int cid;
    private int id;
    private String goodsname;
    private String price;
    private String image;
    private String descripts;
    private String username;
 
  
 
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getGoodsname() {
		return goodsname;
	}
	
	public void setGoodsname(String goodsname) {
		this.goodsname = goodsname;
	}

	public String getImage() {
		return image;
	}
	public void setImage(String image) {
		this.image = image;
	}
	public String getDescripts() {
		return descripts;
	}
	public void setDescripts(String descripts) {
		this.descripts = descripts;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	@Override
	public String toString() {
		return "Collect [cid=" + cid + ",id=" + id + ", goodsname=" + goodsname + ",price="
				+ price + ", image=" + image + ",descripts=" + descripts + ",username=" + username +"]";
	}

	public int getCid() {
		return cid;
	}

	public void setCid(int cid) {
		this.cid = cid;
	}

	public String getPrice() {
		return price;
	}

	public void setPrice(String price) {
		this.price = price;
	}

    
}
