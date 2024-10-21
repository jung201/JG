package homework.H_240816;

import java.util.Scanner;

public class H_240816_24 {

	public static void main(String[] args) {
		// 세로와 가로를 입력받아 사각형의 넓이를 만드는 순서도와 프로그램을 구현해 주세요
		// (수학 공식은 웹에서 검색해서 알아보세요)
		
		Scanner scanner = new Scanner(System.in);
		
		System.out.print("가로 값 입력 : ");
		String strX = scanner.nextLine(); 
		int X = Integer.parseInt(strX);		// int형 변형
		
		System.out.print("세로 값 입력 : ");
		String strY = scanner.nextLine();
		int Y = Integer.parseInt(strX);		// int형 변형
		
		int result = X * Y;		// 가로 x 세로
		System.out.println("넓이 = "+result);
		System.out.println();
		
		System.out.println("종료");
	}
}
