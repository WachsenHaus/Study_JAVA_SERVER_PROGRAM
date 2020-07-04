package test.food.dto;

public class FoodDto {

	private int num;
	private String name;
	private String addr;
	private String menu;
	private int price;
	private int grade;
	private String content;
	
	public FoodDto() {}
	
	public FoodDto(int num, String name, String addr, String menu, int price, int grade, String content) {
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
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public int getGrade() {
		return grade;
	}
	public void setGrade(int grade) {
		this.grade = grade;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
}
