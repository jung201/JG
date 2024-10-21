package homework.H_240828;

import java.util.Scanner;

public class H_240828_5 {

	public static void main(String[] args) {
		// 팩토리얼 값을 계산해서 보여주는 프로그램을 구현해 주세요
		// 팩토리얼이란 다음과 같이 정의된다
		//	n! = 1 * 2 * 3 * ... * n
		//	실행결과
		//	정수를 입력하시오 : 20
		//	20! 은 24322902008176640000 입니다

		Scanner scanner = new Scanner(System.in);
		long num = 1; // 1~10까지의 숫자
		long result = 1;
		System.out.print("정수를 입력하시오 : ");
		num = scanner.nextInt();

		for (int i = 1; i <= num; i++) {
			result *= i;
			System.out.println(i + " = " + result);
		}
		System.out.println();
		System.out.println("팩토리얼 값 : " + result);
	}
}
