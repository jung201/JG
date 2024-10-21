package homework.H_240816;

import java.util.Scanner;

public class H_240816_32 {

	public static void main(String[] args) {
		int a = 10;
		int b = 5;
		if ( a < b ) {
			System.out.println(true);	// 미출력
		}
		System.out.println(true);		// true
		
		int c = 10;
		int d = 5;
		if ( c > d ) {
			System.out.println(true);		// true
		} else {
			System.out.println(false);		// 미출력
		}
		System.out.println("=============================");
		
		Scanner scanner = new Scanner(System.in);
		System.out.print("점수를 입력하세요: ");
		String input = scanner.nextLine();
		int score = Integer.parseInt(input);
		if ( score >= 90 ) {
			System.out.println("A학점입니다.");
		} else if ( score >= 80 ) {
			System.out.println("B학점입니다.");
		} else if ( score >= 60 ) {
			System.out.println("C학점입니다.");
		} else if ( score >= 60 ) {
			System.out.println("D학점입니다.");
		} else {
			System.out.println("F학점입니다.");
		}

	}
	
}
