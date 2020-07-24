
public class adssadadtest {

	static public class Hello{
		public void call() {
			print();
		}
		public void print() {
			print();
			System.out.println("hello");
		}
	}
	
	static public class World extends Hello{
		public void call() {
			
			super.print();
		}
		public void print() {
			System.out.println("world");
		}
		public void tour() {
			System.out.println("투어!");
		}
	}
	
	public static void main(String[] args) {
		Hello object = new World();
		object.call();
	}
}
