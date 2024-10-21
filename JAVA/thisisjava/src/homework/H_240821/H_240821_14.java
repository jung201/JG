package homework.H_240821;

import java.util.Arrays;
import java.util.Scanner;

public class H_240821_14 {

	public static void main(String[] args) {
		// 금액을 입력받아 천원, 오백원, 백원, 오십원, 십원 짜리 잔돈으로 바꿔주는 프로그램을 구현해 주세요. 
		//	예를 들어 5820 을 입력 받으면 천원짜리 5개, 오백원짜리 1개, 백원짜리 3개, 오십원짜리 0개, 십원짜리 2개 라고 출력
		
		Scanner sc = new Scanner(System.in);
		System.out.print("금액를 입력하세요 : ");
		
		int money = sc.nextInt();
		int num;
		
		num = money / 1000;
		money %= 1000;
		System.out.println("> 천원 " + num + "장");
		
		num = money / 500;
		money %= 500;
		System.out.println("> 500원 " + num + "개");
		
		num = money / 100;
		money %= 100;
		System.out.println("> 100원 " + num + "개");
		
		num = money / 50;
		money %= 50;
		System.out.println("> 50원 " + num + "개");
		
		num = money / 10;
		money %= 10;
		System.out.println("> 10원 " + num + "개");

		
		
		
		
		
	}

}
