package cn.gaokao.refen.Entity;

public class Province {
	private int proviNo;
	private String proviName;

	public Province() {
		super();
	}

	public Province(int proviNo, String proviName) {
		super();
		this.proviNo = proviNo;
		this.proviName = proviName;
	}

	public int getProviNo() {
		return proviNo;
	}

	public void setProviNo(int proviNo) {
		this.proviNo = proviNo;
	}

	public String getProviName() {
		return proviName;
	}

	public void setProviName(String proviName) {
		this.proviName = proviName;
	}
}
