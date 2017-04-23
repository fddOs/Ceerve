package cn.gaokao.refen.Entity;

public class YearInfo {
	private int yearNo;
	private int yearNum;

	public YearInfo() {
		super();
	}

	public YearInfo(int yearNo, int yearNum) {
		super();
		this.yearNo = yearNo;
		this.yearNum = yearNum;
	}

	public int getYearNo() {
		return yearNo;
	}

	public void setYearNo(int yearNo) {
		this.yearNo = yearNo;
	}

	public int getYearNum() {
		return yearNum;
	}

	public void setYearNum(int yearNum) {
		this.yearNum = yearNum;
	}

}
