package ch09.sec02.exma01;

public class A {
	// 인스턴스 멤버 클래스
	class B {
		B() {
			System.out.println("B를 생성했습니다");
		}

		void methodB() {
			System.out.println("----------methodB");
		}
	}

	// 인스턴스 필드 값으로 B 객체 대입
	B field = new B();
	B field1;
	B field2;

	// 생성자
	A() {
		B b = new B();
		field1 = new B();
	}

	// 인스턴스 메소드
	void method() {
		B b = new B();
		field2 = new B();
	}
}
