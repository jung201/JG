package homework.H_240820;

import java.util.Scanner;

public class H_240820_2 {

	public static void main(String[] args) {
		// 버스 요금 계산하는 프로그램을 구현해 주세요.
		// 15세 이하는 1300원, 초과는 1600원, 버스카드로 결제하면 100원 할인
//		boolean card = true;
//		int old = 15;
//		
//		if (old > 15) {
//			old = 1600;
//		} else if (old < 16) {
//			old = 1300;
//		}
//
//		if (card) {
//			old = old - 100;
//		}
//		System.out.println("버스요금은 " + old + " 원입니다.");
		
//		스캐너를 이용한 출력 프로그램
		Scanner scanner = new Scanner(System.in);
		
		System.out.print(">> 나이를 입력하시오 : ");
		int old = scanner.nextInt();
		System.out.println();
		
		System.out.print(">> 버스카드 지참 : 1  \n>> 버스카드 미지참 : 2");
		int card = scanner.nextInt();
		System.out.println();
	
		if (old > 15) {
			old = 1600;
		} else if (old < 16) {
			old = 1300;
		}

		if (card == 1 ) {
			old = old - 100;
		}
		System.out.println("버스요금은 " + old + " 원입니다.");

	}

}
