package homework.H_240819;

import java.util.Scanner;

public class H_240819_9 {

	public static void main(String[] args) {
//		입력한 숫자가 10보다 큰수 인지 아닌지 출력하는 프로그램을 만드세요
		Scanner scanner = new Scanner(System.in);

		System.out.print(">> 숫자를 입력해주세요 : ");
		int number = scanner.nextInt();

		if (number > 10) {
			System.out.println("> 10보다 큽니다");
		} else if (number < 10) {
			System.out.println("> 10보다 작습니다");
		}
	}
}
