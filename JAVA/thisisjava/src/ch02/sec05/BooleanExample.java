package ch02.sec05;

public class BooleanExample {

	public static void main(String[] args) {
		boolean stop = true;
		if (stop) {
			System.out.println("중지합니다"); 	// 중지합니다
		}	else {
			System.out.println("시작합니다");	// 출력 x
		}
		
		int x = 10;
		boolean result1 = ( x == 20 );		// 변수 x의 값이 20이냐?
		boolean result2 = ( x != 20);			// 변수 x의 값이 20이 아니냐?
		System.out.println("reselt1: " + result1);		// false
		System.out.println("result2: " + result2);		// true

	}

}
