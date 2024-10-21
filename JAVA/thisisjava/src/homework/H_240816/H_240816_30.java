package homework.H_240816;

import java.util.Scanner;

public class H_240816_30 {

	public static void main(String[] args) {
		// 연필 한박스에 12자루의 연필이 들어있고 연필 1자루는 1000원이다.
		// 소비자가 몇박스와 연필 몇자루를 구매할 것인지 입력 받아 지불해야 할 돈을 계산해주는 
		// 프로그램을 구현해 주세요
		
		Scanner scanner = new Scanner(System.in);
		
		System.out.print("연필수량 : ");
		String strX = scanner.nextLine();
		int X = Integer.parseInt(strX);
		
		System.out.print("연필박스 : ");
		String strY = scanner.nextLine();
		int Y = Integer.parseInt(strY);

		int pencil = X * 1000;		// 연필 1자루 x 1000 = 1000원
		int pencilsBox = Y  * 12000;		// 연필 1박스(12자루) x 12000 = 12000원
		int result = pencil + pencilsBox;		// 연필 1자루 값 + 연필 1박스 값 = 합계
		System.out.println("가격 : " + result+ "원");

		System.out.println("----------------------------------");
		
		System.out.println("종료");
		
	}
}
