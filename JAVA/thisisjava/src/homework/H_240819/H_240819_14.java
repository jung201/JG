package homework.H_240819;

import java.util.Scanner;

public class H_240819_14 {

	public static void main(String[] args) {
//		월을 입력 받아 해당 월이 28일지 30일지, 31일지 출력하는 프로그램을 만드세요(29일은 없음)

		Scanner scanner = new Scanner(System.in);
		int day = 1;
		
		System.out.print(">> 월을 입력해주세요 : ");
		int month = scanner.nextInt();
		
		switch (month) {
			case 1 : case 3 : case 5 : case 7 : case 8 : case 10 : case 12 :
				day = 31;
				System.out.println("해당 월의 마지막날짜는 " + day + "일" + "입니다.");
				break;
			case 4 : case 6 : case 9 : case 11 : 
				day = 30;
				System.out.println("해당 월의 마지막날짜는 " + day + "일" + "입니다.");
				break;
			case 2 :
				day = 28;
				System.out.println("해당 월의 마지막날짜는 " + day + "일" + "입니다.");
				break;
			default : 
				System.out.println("해당 월이 없습니다");
				break;	
		} 
	}
}
