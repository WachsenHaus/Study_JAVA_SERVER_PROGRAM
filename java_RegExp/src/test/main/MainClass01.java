package test.main;

public class MainClass01 {
	public static void main(String[] args) {
		String str = "abcd1234";
		
		String reg="abcd";
		//String pattern="abcd";

		//정규 표현식에 매칭되는지 여부 "^abcd$" 와 같이 완벽히 입치해야 true가 나온다.
		boolean isMatch=str.matches(reg);
		System.out.println(isMatch);
		//str.matches(pattern);
	}
}
