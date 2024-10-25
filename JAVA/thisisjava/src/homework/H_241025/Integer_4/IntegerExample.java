package homework.H_241025.Integer_4;
//오늘의 자바 4
//int num = Integer.parseInt("ABC");
//System.out.println(num);
//을 하면 java.lang.NumberFormatException 이 발생합니다.
//try-catch 구조를 사용해서 예외 처리한 프로그램을 만들어 주세요

public class IntegerExample {
	public static void main(String[] args) {
		try {
			int num = IntegerExample.parseInt("ABC"); // 예외가 발생하는 부분
			System.out.println("변환된 숫자: " + num);
		} catch (NumberFormatException n) { // 예외를 처리하는 catch 블록
			System.out.println("NumberFormatException 발생: 숫자로 변환할 수 없는 문자열입니다.");
		} finally {
			System.out.println("프로그램 종료");
		}
	}
}
