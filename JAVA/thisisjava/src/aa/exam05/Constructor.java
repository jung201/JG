package aa.exam05;

// 컴파일러가 자동 추가해주는 생성자 ( 기본 생성자 )

class A {
	int m;

	void work() {
		System.out.println(m); // 0
	}
//	A(){ // 자동으로 추가된 기본 생성자 
//		
//	}
}

class B {
	int m;

	void work() {
		System.out.println(m); // 0
	}

	B() { // 기본생성자
	}
}

class C {
	int m;

	void work() {
		System.out.println(m); // 생성자로 넘어온 값
	}

	C(int a) { // 생성자의 기본 기능 : 객체 생성 + 필드 초기화
		m = a;
	}
}

public class Constructor {
	public static void main(String[] args) {

		// 1. 클래스의 객체 생성
		A a = new A();
		B b = new B();
		C c = new C(3);

		a.work();
		b.work();
		c.work();

	}

}
