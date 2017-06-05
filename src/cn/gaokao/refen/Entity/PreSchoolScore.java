package cn.gaokao.refen.Entity;

public class PreSchoolScore {
	private int pssNo;
	private String school;
	private String province;
	private int year;
	private String cdc;
	private int preRank;
	private int preScore;
	private School schInfo;

	public PreSchoolScore() {
		super();
	}

	public int getPssNo() {
		return pssNo;
	}

	public void setPssNo(int pssNo) {
		this.pssNo = pssNo;
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

	public int getPreRank() {
		return preRank;
	}

	public void setPreRank(int preRank) {
		this.preRank = preRank;
	}

	public int getPreScore() {
		return preScore;
	}

	public void setPreScore(int preScore) {
		this.preScore = preScore;
	}

	public School getSchInfo() {
		return schInfo;
	}

	public void setSchInfo(School schInfo) {
		this.schInfo = schInfo;
	}
}
