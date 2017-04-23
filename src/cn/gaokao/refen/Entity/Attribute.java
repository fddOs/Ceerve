package cn.gaokao.refen.Entity;

public class Attribute {
	private int attrNo;
	private String attrName;

	public Attribute() {
		super();
	}

	public Attribute(int attrNo, String attrName) {
		super();
		this.attrNo = attrNo;
		this.attrName = attrName;
	}

	public int getAttrNo() {
		return attrNo;
	}

	public void setAttrNo(int attrNo) {
		this.attrNo = attrNo;
	}

	public String getAttrName() {
		return attrName;
	}

	public void setAttrName(String attrName) {
		this.attrName = attrName;
	}

}
