package homework.H_240816;

import java.util.Scanner;

public class H_240816_28 {

	public static void main(String[] args) {
		// 두 수를 입력받아 두 수의 차를 출력하는 프로그램을 구현해 주세요
		
		Scanner scanner = new Scanner(System.in);
		
		System.out.print("X : ");
		String strX = scanner.nextLine();
		int X = Integer.parseInt(strX);		// int 형 변형
		
		System.out.print("Y : ");
		String strY = scanner.nextLine();
		int Y = Integer.parseInt(strY);		// int 형 변형
		
		int result = X - Y;		// 
		
		System.out.println("----------------------------------");
		
		System.out.println( "X - Y = " + result);
		
		System.out.println("----------------------------------");
		
		System.out.println("종료");
		
	}
}
