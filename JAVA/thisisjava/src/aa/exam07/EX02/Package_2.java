package aa.exam07.EX02;

// 다른 패키지에 있는 클래스를 가져와 활용하는 방법 : 임포트 ( import ) 사용
// 자동 임포트 단축키 ctrl + shift + o

import aa.exam07.common.A;
//import aa.exam07.common.*;

public class Package_2 {
	public static void main(String[] args) {
		
		// 1. 객체 생성
		 A a =  new A();  // 정상 동작
//		aa.exam07.common.A a = new aa.exam07.common.A();

		// 2. 멤버 활용
		System.out.println(a.m); // 3 
		System.out.println(a.n); // 4
		a.print(); // 임포트
	}
}