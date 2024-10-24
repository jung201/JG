package ch06.sec13.exma03.package1;

public class B {
	public void method() {
		// 객체 생성
		A a = new A();
		
		// 필드값 변경
		a.field1 = 1; // 0
		a.field2 = 1; // 0
//		a.field3 = 1; // x
		
		// 메소드 호출
		a.method1(); // 0
		a.method2(); // 0
//		a.method3(); // x
	}
}
