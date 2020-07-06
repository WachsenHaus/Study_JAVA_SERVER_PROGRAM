package test.users.dto;

public class usersdto {

	private String id;
	private String pwd;

	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPwd() {
		return pwd;
	}
	public void setPwd(String pwd) {
		this.pwd = pwd;
	}
	public usersdto() {}
	public usersdto(String id, String pwd) {
		this.id = id;
		this.pwd = pwd;
	}
	
	
}
