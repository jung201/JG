package ch06.sec13.exma03.package1;

public class A {

	// public 접근 제한을 갖는 필드 선언
	public int field1;

	// default 접근 제한을 갖는 필드 선언
	int field2;

	// private 접근 제한을 갖는 필드 선언
	private int field3;

	// 생성자 선언
	public A() {
		field1 = 1; // 0
		field2 = 1; // 0
		field3 = 1; // 0

		method1(); // 0
		method2(); // 0
		method3(); // 0
	}

	// public 접근 제한을 갖는 메소드 선언
	public void method1() {
	}

	// default 접근 제한을 갖는 메소드 선언
	void method2() {
	}
	
	// private 접근 제한을 갖는 메소드 선언
	private void method3() {
	}
}
