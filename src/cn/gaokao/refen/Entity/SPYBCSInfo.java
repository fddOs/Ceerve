package cn.gaokao.refen.Entity;

public class SPYBCSInfo {
	private int ssNo;
	private String school;
	private String province;
	private int provinceScore;
	private int fensCha;
	private int minScore;
	private String bath;
	private int year;
	private String cdc;
	private int higScore;
	private int aveScore;
	private int admiSnum;

	public SPYBCSInfo() {
		super();
	}

	public SPYBCSInfo(String school, String province, int provinceScore, int fensCha, int minScore, String bath,
			int year, String cdc, int higScore, int aveScore, int admiSnum) {
		super();
		this.school = school;
		this.province = province;
		this.provinceScore = provinceScore;
		this.fensCha = fensCha;
		this.minScore = minScore;
		this.bath = bath;
		this.year = year;
		this.cdc = cdc;
		this.higScore = higScore;
		this.aveScore = aveScore;
		this.admiSnum = admiSnum;
	}

	public int getSsNo() {
		return ssNo;
	}

	public void setSsNo(int ssNo) {
		this.ssNo = ssNo;
	}

	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public int getProvinceScore() {
		return provinceScore;
	}

	public void setProvinceScore(int provinceScore) {
		this.provinceScore = provinceScore;
	}

	public int getFensCha() {
		return fensCha;
	}

	public void setFensCha(int fensCha) {
		this.fensCha = fensCha;
	}

	public int getMinScore() {
		return minScore;
	}

	public void setMinScore(int minScore) {
		this.minScore = minScore;
	}

	public String getBath() {
		return bath;
	}

	public void setBath(String bath) {
		this.bath = bath;
	}

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public String getCdc() {
		return cdc;
	}

	public void setCdc(String cdc) {
		this.cdc = cdc;
	}

	public int getHigScore() {
		return higScore;
	}

	public void setHigScore(int higScore) {
		this.higScore = higScore;
	}

	public int getAveScore() {
		return aveScore;
	}

	public void setAveScore(int aveScore) {
		this.aveScore = aveScore;
	}

	public int getAdmiSnum() {
		return admiSnum;
	}

	public void setAdmiSnum(int admiSnum) {
		this.admiSnum = admiSnum;
	}

}
