package cn.gaokao.refen.Entity;

public class Profession {
	private int proNo;
	private String proName;
	private int proPop;
	private String proDetail;

	public Profession() {
		super();
	}

	public Profession(String proName, int proPop, String proDetail) {
		super();
		this.proName = proName;
		this.proPop = proPop;
		this.proDetail = proDetail;
	}

	public int getProNo() {
		return proNo;
	}

	public void setProNo(int proNo) {
		this.proNo = proNo;
	}

	public String getProName() {
		return proName;
	}

	public void setProName(String proName) {
		this.proName = proName;
	}

	public int getProPop() {
		return proPop;
	}

	public void setProPop(int proPop) {
		this.proPop = proPop;
	}

	public String getProDetail() {
		return proDetail;
	}

	public void setProDetail(String proDetail) {
		this.proDetail = proDetail;
	}

}
