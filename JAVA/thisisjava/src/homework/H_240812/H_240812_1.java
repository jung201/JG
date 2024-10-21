package homework.H_240812;

public class H_240812_1 {

	public static void main(String[] args) {
		String st1 = "Hello";
		String st2 =  "World";
		System.out.println(st1); // Hello
		System.out.println(st1 + "world"); // Hello world
		System.out.println(st1 + st2); // Hello World
		
		st1 = "new World";
		String str3 = st1 + st2;
		System.out.println(str3); // new WorldWorld
	}

}
