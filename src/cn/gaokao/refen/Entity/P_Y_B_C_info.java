package cn.gaokao.refen.Entity;

public class P_Y_B_C_info {
	private int pybcNo;
	private String province;
	private String year;
	private String cdc;
	private String bath;
	private String scrLine;

	public P_Y_B_C_info() {
		super();
	}

	public P_Y_B_C_info(String province, String year, String cdc, String bath, String scrLine) {
		super();
		this.province = province;
		this.year = year;
		this.cdc = cdc;
		this.bath = bath;
		this.scrLine = scrLine;
	}

	public int getPybcNo() {
		return pybcNo;
	}

	public void setPybcNo(int pybcNo) {
		this.pybcNo = pybcNo;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getYear() {
		return year;
	}

	public void setYear(String year) {
		this.year = year;
	}

	public String getCdc() {
		return cdc;
	}

	public void setCdc(String cdc) {
		this.cdc = cdc;
	}

	public String getBath() {
		return bath;
	}

	public void setBath(String bath) {
		this.bath = bath;
	}

	public String getScrLine() {
		return scrLine;
	}

	public void setScrLine(String scrLine) {
		this.scrLine = scrLine;
	}


}
