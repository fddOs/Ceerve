package cn.gaokao.refen.Entity;


public class School {
	private int scNo;
	private String scName;
	private int scPop;
	private String province;
	private String cate;
	private String f985;
	private String f211;
	private String ATTR;

	public School() {
		super();
	}

	public School(String scName, int scPop, String province, String cate, String f985, String f211, String aTTR) {
		super();
		this.scName = scName;
		this.scPop = scPop;
		this.province = province;
		this.cate = cate;
		this.f985 = f985;
		this.f211 = f211;
		ATTR = aTTR;
	}

	public int getScNo() {
		return scNo;
	}

	public void setScNo(int scNo) {
		this.scNo = scNo;
	}

	public String getScName() {
		return scName;
	}

	public void setScName(String scName) {
		this.scName = scName;
	}

	public int getScPop() {
		return scPop;
	}

	public void setScPop(int scPop) {
		this.scPop = scPop;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getCate() {
		return cate;
	}

	public void setCate(String cate) {
		this.cate = cate;
	}

	public String getF985() {
		return f985;
	}

	public void setF985(String f985) {
		this.f985 = f985;
	}

	public String getF211() {
		return f211;
	}

	public void setF211(String f211) {
		this.f211 = f211;
	}

	public String getATTR() {
		return ATTR;
	}

	public void setATTR(String aTTR) {
		ATTR = aTTR;
	}

}
