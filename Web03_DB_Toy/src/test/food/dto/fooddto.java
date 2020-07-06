package test.food.dto;

public class fooddto {

	private int num;
	private String name;
	private String addr;
	private String menu;
	private double price;
	private double grade;
	private String content;
	
	public fooddto() {}
	
	public fooddto(int num, String name, String addr, String menu, double price, double grade, String content) {
		super();
		this.num = num;
		this.name = name;
		this.addr = addr;
		this.menu = menu;
		this.price = price;
		this.grade = grade;
		this.content = content;
	}
	public int getNum() {
		return num;
	}
	public void setNum(int num) {
		this.num = num;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddr() {
		return addr;
	}
	public void setAddr(String addr) {
		this.addr = addr;
	}
	public String getMenu() {
		return menu;
	}
	public void setMenu(String menu) {
		this.menu = menu;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public double getGrade() {
		return grade;
	}
	public void setGrade(double grade) {
		this.grade = grade;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
}
