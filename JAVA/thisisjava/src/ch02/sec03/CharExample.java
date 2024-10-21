package ch02.sec03;

public class CharExample {

	public static void main(String[] args) {
		char c1 = 'A';		// 문자 저장
		char c2 = 65;		// 유니코드 직접 저장
		
		char c3 = '가';	// 문자저장
		char c4 = 44032;		// 유니코드 직접 저장
		
		System.out.println(c1);		// A
		System.out.println(c2);		// A
		System.out.println(c3);		// 가
		System.out.println(c4);		// 가
		
	}

}
