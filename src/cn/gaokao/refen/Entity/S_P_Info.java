package cn.gaokao.refen.Entity;

public class S_P_Info {
	private int spNo;
	/*
	 * private int scNo; private int proNo;
	 */
	private School school;
	private Profession profession;

	public S_P_Info() {
		super();
	}

	public S_P_Info(int spNo, School school, Profession profession) {
		super();
		this.spNo = spNo;
		this.school = school;
		this.profession = profession;
	}

	public int getSpNo() {
		return spNo;
	}

	public void setSpNo(int spNo) {
		this.spNo = spNo;
	}

	public School getSchool() {
		return school;
	}

	public void setSchool(School school) {
		this.school = school;
	}

	public Profession getProfession() {
		return profession;
	}

	public void setProfession(Profession profession) {
		this.profession = profession;
	}

	/*
	 * public S_P_Info(int spNo, int scNo, int proNo) { super(); this.spNo =
	 * spNo; this.scNo = scNo; this.proNo = proNo; }
	 * 
	 * public int getSpNo() { return spNo; }
	 * 
	 * public void setSpNo(int spNo) { this.spNo = spNo; }
	 * 
	 * public int getScNo() { return scNo; }
	 * 
	 * public void setScNo(int scNo) { this.scNo = scNo; }
	 * 
	 * public int getProNo() { return proNo; }
	 * 
	 * public void setProNo(int proNo) { this.proNo = proNo; }
	 */
}
