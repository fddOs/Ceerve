package cn.gaokao.refen.Entity;

public class S_A_Info {
	private int saNo;
	/*
	 * private School school; private List<Attribute> attribute; private
	 * List<Profession> profession;
	 */
	/*
	 * private int scNO; private int attrNo;
	 */
	private School school;
	private Attribute attribute;

	public S_A_Info() {
		super();
	}

	public S_A_Info(int saNo, School school, Attribute attribute) {
		super();
		this.saNo = saNo;
		this.school = school;
		this.attribute = attribute;
	}

	public int getSaNo() {
		return saNo;
	}

	public void setSaNo(int saNo) {
		this.saNo = saNo;
	}

	public School getSchool() {
		return school;
	}

	public void setSchool(School school) {
		this.school = school;
	}

	public Attribute getAttribute() {
		return attribute;
	}

	public void setAttribute(Attribute attribute) {
		this.attribute = attribute;
	}

	/*
	 * public S_A_Info(int saNo, int scNO, int attrNo) { super(); this.saNo =
	 * saNo; this.scNO = scNO; this.attrNo = attrNo; }
	 */

	/*
	 * public S_A_P_Info(int sapNo, School school, List<Attribute> attribute,
	 * List<Profession> profession) { super(); this.sapNo = sapNo; this.school =
	 * school; this.attribute = attribute; this.profession = profession; }
	 * 
	 * public School getSchool() { return school; }
	 * 
	 * public void setSchool(School school) { this.school = school; }
	 * 
	 * public List<Attribute> getAttribute() { return attribute; }
	 * 
	 * public void setAttribute(List<Attribute> attribute) { this.attribute =
	 * attribute; }
	 * 
	 * public List<Profession> getProfession() { return profession; }
	 * 
	 * public void setProfession(List<Profession> profession) { this.profession
	 * = profession; }
	 */

	/*
	 * public int getScNO() { return scNO; }
	 * 
	 * public void setScNO(int scNO) { this.scNO = scNO; }
	 * 
	 * public int getAttrNo() { return attrNo; }
	 * 
	 * public void setAttrNo(int attrNo) { this.attrNo = attrNo; }
	 * 
	 * public int getSaNo() { return saNo; }
	 * 
	 * public void setSaNo(int saNo) { this.saNo = saNo; }
	 */
}
