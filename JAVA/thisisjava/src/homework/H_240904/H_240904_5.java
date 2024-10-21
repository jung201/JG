package homework.H_240904;

import java.util.Iterator;
import java.util.Scanner;

public class H_240904_5 {

	public static void main(String[] args) {
		//		실행 결과
		//		피라미드를 출력합니다.
		//		단수는  : 8
		//		           1
		//		         222
		//		       33333
		//		     4444444
		//		    555555555
		//		   66666666666
		//		  7777777777777
		//		88888888888888
		//		단수는 입력을 받습니다. 3~9 단으로 입력 받습니다
		
		Scanner sc = new Scanner(System.in);
		System.out.println("피라미드 출력");
		System.out.print("단수 입력 3~9 : ");
		String strNum = sc.nextLine(); // 스캐너 문자열
		int n = Integer.parseInt(strNum);
		System.out.println();
		
		
		for (int i = 1; i <= n; i++) { // 행 8줄 8단
			for (int j = 0; j < n - i; j++) { // 한행 시작할때 열은 -i로 한칸씩 점점 줄임
				System.out.print("  "); // 공백 생성 
			}

			for (int k = 0; k < i * 2 - 1; k++) { // i가 0이면 1번  i가 1이면 3번 i가 2면 5번 2씩 증가
				System.out.print(i);
			}
			System.out.println();
		}

	}

}
