package homework.H_240816;

import java.util.Scanner;

public class H_240816_26 {

	public static void main(String[] args) {
		// a 센티미터를 입력받아 몇 미터 몇 센치 인지 출력하는 프로그램을 구현해 주세요
		// 100cm = 1m
		
		Scanner scanner = new Scanner(System.in);
		
		System.out.print("cm 입력 : ");
		String strX = scanner.nextLine();
		int X = Integer.parseInt(strX);		// int형 변형
		
		int result = X * 1/100;		// cm 값에 0.001을 곱해 m 값으로 출력
		System.out.println("m = " + result);
		System.out.println();
		
		System.out.println("종료");
		
	}
}
