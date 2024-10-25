package app;

public class ExceptionExample2 {

	public static void main(String[] args) {
		String str01 = "11";
		String str02 = "11.2";

		// 정수 형태의 문자열을 정수로 변환
		int num01 = Integer.parseInt(str01);

		System.out.println("String to int :" + num01);

		// 실수 형태의 문자열을 정수로 변환
		int num02 = Integer.parseInt(str02);

		System.out.println("String to int :" + num02);

	}

}
