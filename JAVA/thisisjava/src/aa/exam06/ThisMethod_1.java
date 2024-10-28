package aa.exam06;

// this(생성자의 매개변수) 문법적 특징과 의미 : 자신이 속한 클래스의 다른 생성자 호출
// 1.  클래스의 정의

class C {
	C() {
		System.out.println("첫번째 생성자");
	}

	C(int a) {
		this(); // this() = C() 동일하다 , 생성자의 첫줄에만 올 수 있다.
		System.out.println("두번째 생성자");
	}

//	void abc() {
//		this(); // 메서드 안에서 불가능
//	}

}

public class ThisMethod_1 {
	public static void main(String[] args) {

		// 2. 객체 생성
		C c1 = new C(); // 첫번째 생성자 출력
		System.out.println();
		C c2 = new C(1); // 첫번째 생성자 , 두번째 생성자 출력

	}

}
