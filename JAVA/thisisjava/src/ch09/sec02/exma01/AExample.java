package ch09.sec02.exma01;

public class AExample {

	public static void main(String[] args) {
		// A 객체 생성
		A a = new A();
		System.out.println("1--------------------");

		// B 객체 생성
		
		// A안에 B가 있다 A.B를 b로 치환하고
		// 위에 A 객체 생성한 a에 a.new B를 대입 
		// b에 B를 대입
		A.B b = a.new B();
		System.out.println("2--------------------");
//		A.B b1 = new a.B(); 안됨
//		B b2 = new B(); 안됨
//		A.B b3 = new A().new B(); 됨
		
		a.field.methodB();
		System.out.println("3-------------------");
		
		A.B b4 = a.field1;
		System.out.println("4------------------");
		
		a.method();
		System.out.println("5------------------");
		A.B b5 = a.field2;
		System.out.println("6----------------");

	}

}
