package cn.gaokao.refen.Entity;

/**
 * @author 作者:方典典 时间:2017年3月27日:下午8:32:28 说明:专业录取线
 */
public class ProScore {
	private int psNo;
	private String school;
	private String proName;
	private String province;
	private String cdc;
	private int year;
	private String bath;
	private int avgScore;
	private int maxScore;
	private int minScore;
	private School schInfo;

	public ProScore() {
		super();
	}

	public ProScore(String school, String proName, String province, String cdc, int year, String bath, int avgScore,
			int maxScore, int minScore) {
		super();
		this.school = school;
		this.proName = proName;
		this.province = province;
		this.cdc = cdc;
		this.year = year;
		this.bath = bath;
		this.avgScore = avgScore;
		this.maxScore = maxScore;
		this.minScore = minScore;
	}

	public int getPsNo() {
		return psNo;
	}

	public void setPsNo(int psNo) {
		this.psNo = psNo;
	}

	public String getSchool() {
		return school;
	}

	public void setSchool(String school) {
		this.school = school;
	}

	public String getProName() {
		return proName;
	}

	public void setProName(String proName) {
		this.proName = proName;
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

	public int getYear() {
		return year;
	}

	public void setYear(int year) {
		this.year = year;
	}

	public String getBath() {
		return bath;
	}

	public void setBath(String bath) {
		this.bath = bath;
	}

	public int getAvgScore() {
		return avgScore;
	}

	public void setAvgScore(int avgScore) {
		this.avgScore = avgScore;
	}

	public int getMaxScore() {
		return maxScore;
	}

	public void setMaxScore(int maxScore) {
		this.maxScore = maxScore;
	}

	public int getMinScore() {
		return minScore;
	}

	public void setMinScore(int minScore) {
		this.minScore = minScore;
	}

	public School getSchInfo() {
		return schInfo;
	}

	public void setSchInfo(School schInfo) {
		this.schInfo = schInfo;
	}
}
