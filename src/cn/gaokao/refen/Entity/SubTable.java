package cn.gaokao.refen.Entity;

public class SubTable {
	private int stNo;
	private String province;
	private String cdc;
	private int minScore;
	private int higScore;
	private int admiNum;
	private int sumNum;

	public SubTable() {
		super();
	}

	public SubTable(String province, String cdc, int minScore, int higScore, int admiNum, int sumNum) {
		super();
		this.province = province;
		this.cdc = cdc;
		this.minScore = minScore;
		this.higScore = higScore;
		this.admiNum = admiNum;
		this.sumNum = sumNum;
	}

	public int getStNo() {
		return stNo;
	}

	public void setStNo(int stNo) {
		this.stNo = stNo;
	}

	public String getProvince() {
		return province;
	}

	public void setProvince(String province) {
		this.province = province;
	}

	public String getCdc() {
		return cdc;
	}

	public void setCdc(String cdc) {
		this.cdc = cdc;
	}

	public int getMinScore() {
		return minScore;
	}

	public void setMinScore(int minScore) {
		this.minScore = minScore;
	}

	public int getHigScore() {
		return higScore;
	}

	public void setHigScore(int higScore) {
		this.higScore = higScore;
	}

	public int getAdmiNum() {
		return admiNum;
	}

	public void setAdmiNum(int admiNum) {
		this.admiNum = admiNum;
	}

	public int getSumNum() {
		return sumNum;
	}

	public void setSumNum(int sumNum) {
		this.sumNum = sumNum;
	}
}
