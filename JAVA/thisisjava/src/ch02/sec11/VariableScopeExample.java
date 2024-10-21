package ch02.sec11;

public class VariableScopeExample {

	public static void main(String[] args) {
		int v1 = 15;
		System.out.println("v1: " + v1);
		if (v1 > 10) {
			int v2 = v1 - 10;
			System.out.println("v1: " + v1);
			System.out.println("v2: " + v2);
		}
		System.out.println("v1: " + v1);
//		System.out.println("v2: " + v2);		// 에러
//		System.out.println("v3: " + v3);		// 선언 이전이라 에러
		int v3 = 100;
		System.out.println("v1: " + v1);
		System.out.println("v3: " + v3);
	}

}
