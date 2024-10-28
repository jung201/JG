package aa.exam07.EX01;

 
// 다른 패키지에 있는 클래스를 가져와 활용하는 방법 : 클래스의 풀네임사용

public class Package_1 {
	public static void main(String[] args) {
		
		// 1. 객체 생성
		// A a =  new A();  // 오류
		aa.exam07.common.A a = new aa.exam07.common.A();

		// 2. 멤버 활용
		System.out.println(a.m); // 3 
		System.out.println(a.n); // 4
		a.print(); // 임포트
	}
}
