package cn.gaokao.refen.Entity;

public class Category {
	private int cateNo;
	private String cateName;

	public Category() {
		super();
	}

	public Category(int cateNo, String cateName) {
		super();
		this.cateNo = cateNo;
		this.cateName = cateName;
	}

	public int getCateNo() {
		return cateNo;
	}

	public void setCateNo(int cateNo) {
		this.cateNo = cateNo;
	}

	public String getCateName() {
		return cateName;
	}

	public void setCateName(String cateName) {
		this.cateName = cateName;
	}

}
