package cn.gaokao.refen.Entity;

public class CDCInfo {
	private int cdcNo;
	private String cdcName;

	public CDCInfo() {
		super();
	}

	public CDCInfo(int cdcNo, String cdcName) {
		super();
		this.cdcNo = cdcNo;
		this.cdcName = cdcName;
	}

	public int getCdcNo() {
		return cdcNo;
	}

	public void setCdcNo(int cdcNo) {
		this.cdcNo = cdcNo;
	}

	public String getCdcName() {
		return cdcName;
	}

	public void setCdcName(String cdcName) {
		this.cdcName = cdcName;
	}

}
