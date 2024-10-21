package homework.H_240828;

import java.util.Scanner;

public class H_240828_6 {

	public static void main(String[] args) {
		// -1 의 값이 입력될 때까지 사용자가 입력한 정수의 합계를 계산하여 출력해 주세요. while 문 사용

		int result = 0;
		int resultSum = 1;

		Scanner sc = new Scanner(System.in);
		while (result != -1) {
			System.out.print("정수를 입력하시오 : ");
			result = sc.nextInt();
			resultSum += result;

		}
		System.out.println("정수의 합은 " + resultSum + " 입니다");
	}
}
