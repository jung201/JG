package homework.H_240819;

import java.util.Scanner;

public class H_240819_10 {

	public static void main(String[] args) {
//		result 라는 변수를 선언하고 사용자에게 수를 입력 받아 0이면 0을 0이 아니면 1을 넣어서 
//		출력하는 프로그램을 만드세요
		Scanner scanner = new Scanner(System.in);

		System.out.print(">> 숫자를 입력해주세요 : ");
		int result = scanner.nextInt();
		
		if (result == 0 || result == 1) {
			System.out.println("> 정답입니다 !! ");
		} else if (result != 0 && result != 1) {
			System.out.println("> 해당값이 존재하지 않습니다. ");
		}
	}
}
