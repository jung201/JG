package homework.H_240816;

import java.util.Scanner;

public class H_240816_29 {

	public static void main(String[] args) {
		// 국어, 영어, 수학 점수를 입력받아 평균을 구하여 아래와 같이 출력하는 프로그램을 구현해주세요
		// 국어 : ~ 점 , 영어 : ~ 점, 수학 : ~ 점, 평균 : ~ 점
		
		Scanner scanner = new Scanner(System.in);
		
		System.out.print("국어 : ");
		String strX = scanner.nextLine();
		int X = Integer.parseInt(strX);
		
		System.out.print("영어 : ");
		String strY = scanner.nextLine();
		int Y = Integer.parseInt(strY);
		
		System.out.print("수학 : ");
		String strZ = scanner.nextLine();
		int Z = Integer.parseInt(strZ);
		
		System.out.println("----------------------------------");
		
		int result = (X + Y + Z) / 3;		// (국어x영어x수학) / 3 
		System.out.println("국어 : " + strX + "점");
		System.out.println("영어 : " + strY + "점");
		System.out.println("수학 : " + strZ + "점");
		System.out.println();
		System.out.println("평균 : " + result + "점");
		
		System.out.println("----------------------------------");
		
		System.out.println("종료");
		
	}
}
