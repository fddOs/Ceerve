package cn.gaokao.refen.Entity;

public class BatchInfo {
	private int btNo;
	private String btName;

	public BatchInfo() {
		super();
	}

	public BatchInfo(int btNo, String btName) {
		super();
		this.btNo = btNo;
		this.btName = btName;
	}

	public int getBtNo() {
		return btNo;
	}

	public void setBtNo(int btNo) {
		this.btNo = btNo;
	}

	public String getBtName() {
		return btName;
	}

	public void setBtName(String btName) {
		this.btName = btName;
	}
}
