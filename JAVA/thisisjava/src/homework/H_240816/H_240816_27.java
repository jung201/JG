package homework.H_240816;

import java.util.Scanner;

public class H_240816_27 {

	public static void main(String[] args) {
		// 이름 나이 키를 입력받아 화면에 출력하는 프로그램을 구현해 주세요.
		// 출력결과는 아래와 같이 해주세요
		
		Scanner scanner = new Scanner(System.in);
		
		System.out.print("이름 : ");
		String strX = scanner.nextLine();
//		int X = Integer.parseInt(strX);		이름은 문자열이므로 int형 변형이 불필요
		
		System.out.print("나이 : ");
		String strY = scanner.nextLine();
		int Y = Integer.parseInt(strY);		// int형 변형
		
		System.out.print("키 : ");
		String strZ = scanner.nextLine();
		int Z = Integer.parseInt(strZ);		// int형 변형
		
		System.out.println("----------------------------------");
		
		System.out.println("당신의 이름은 " + strX + " 입니다.");
		System.out.println("당신의 나이는 " + strY + " 입니다.");
		System.out.println("당신의 키는 " + strZ + " 입니다.");
		
		System.out.println("----------------------------------");
		
		System.out.println("종료");
		
	}
}
