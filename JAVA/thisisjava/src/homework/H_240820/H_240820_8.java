package homework.H_240820;

import java.util.Scanner;

public class H_240820_8 {

	public static void main(String[] args) {
// 두 수를 입력 받아 첫 번째 수 부터 시작하여 하나씩 카운트하여 두번째수 만큼 화면에 출력 하는 
//	프로그램을 구현해 주세요. 5 6를 입력 받으면 5부터 6개 5 6 7 8 9 10 이 화면에 출력해 주세요
		Scanner scanner = new Scanner(System.in);

		System.out.print(">> 첫번째 숫자를 입력해 주세요 : ");
		int num1 = scanner.nextInt();

		System.out.print(">> 두번째 숫자를 입력해 주세요 : ");
		int num2 = scanner.nextInt();

		for (int i = num1; i <= num2+(num1-1); i++) {
			System.out.print(i + " ");
		}

	}

}
