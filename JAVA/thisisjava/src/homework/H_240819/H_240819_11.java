package homework.H_240819;

import java.util.Scanner;

public class H_240819_11 {

	public static void main(String[] args) {
//		숫자를 하나 입력 받아 홀수 인지 짝수인지 구하는 프로그램을 만드세요
		Scanner scanner = new Scanner(System.in);

		System.out.print(">> 숫자를 입력해주세요. : ");
		int oddEven = scanner.nextInt();

		if (oddEven % 2 != 0) {
			System.out.println("> 홀수입니다.");
		} else if (oddEven % 2 == 0) {
			System.out.println("> 짝수입니다.");
		}
	}
}
