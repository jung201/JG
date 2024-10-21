package homework.H_240819;

import java.util.Scanner;

public class H_240819_7 {

	public static void main(String[] args) {
//		while 문과 Scanner의 nextLine() 메소드를 이용해서 다음 실행 결과와 같이 키보드로부터
//		입력된 데이터로 예금, 출금, 조회, 종료 기능을 제공하는 코드를 작성해 보세요.

		Scanner scanner = new Scanner(System.in);

//		int x = 10000;
//		int y = 2000;
//		int z = 3000;
		int deposti = (int) (Math.random() * 9000) + 1000;
		int withdraw = (int) (Math.random() * 5000) + 500;
		int balance = (int) (Math.random() * 50000) + 10000;

		while (true) {
			System.out.println("-----------------------------------------");
			System.out.println(" 1. 예금 | 2. 출금 | 3. 잔고 | 4. 종료");
			System.out.println("-----------------------------------------");
			System.out.print("선택 > ");

			String bank = scanner.nextLine();

			if (bank.equals("1")) {
				System.out.println("예금액 > " + deposti);
			} else if (bank.equals("2")) {
				System.out.println("출금액 > " + withdraw);
			} else if (bank.equals("3")) {
				System.out.println("잔고 > " + balance);
			} else if (bank.equals("4")) {
				System.out.println("프로그램 종료");
				break;
			}
			System.out.println();
		}
	}
}
