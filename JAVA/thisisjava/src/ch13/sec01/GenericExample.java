package ch13.sec01;

public class GenericExample {
	public static void main(String[] args) {
		// Box<String> box1 = new Box<String>();
		Box<String> box1 = new Box<>(); // Box를 생성할때 타입 파라미터 T 대신 String
		box1.content = "안녕하세요~~";
		String str = box1.content;
		System.out.println(str);

		// Box<Integer> box2 = new Box<Integer>();
		Box<Integer> box2 = new Box<>(); // Box를 생성할때 타입 파라미터 T 대신 Integer
		box2.content = 100;
		int value = box2.content;
		System.out.println(value);
	}

}
