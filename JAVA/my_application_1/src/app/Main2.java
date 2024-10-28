package app;

import java.util.Scanner;

public class Main2 {

	public static void main(String[] args) {
		Scanner scan = new Scanner(System.in);
		try {
			// 나이 입력
			System.out.print("당신의 나이를 입력하세요 >>");
			int age = scan.nextInt();

			if (age < 0) {
				// 1살 미만인 경우 입력 실패
				throw new InputErrorException("입력이 잘못되었습니다.");
			}

			if (age > 19) {
				System.out.println("성인입니다.");
			} else if (age > 13) {
				System.out.println("청소년입니다.");
			} else if (age > 6) {
				System.out.println("어린이입니다.");
			} else {
				System.out.println("아동입니다.");
			}
		} catch (InputErrorException e) {
			System.out.println(e.getMessage());
		} finally {
			if (scan != null) {
				scan.close();
			}
		}

	}

}
