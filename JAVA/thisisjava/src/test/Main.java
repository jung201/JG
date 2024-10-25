package test;

import java.util.Iterator;
import java.util.Scanner;

public class Main {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int batsman[] = { 1, 2, 3, 4, 5, 6, 7, 8, 9 }; // 타자 선수
		int hit = 0; // 타자 스윙 카운팅
		int bingle = 0; // 안타 카운팅
		int count = 0; // 아웃 카운팅

		for (int i = 0; i < 2; i++) {
			for (int j= 0; j < batsman.length; j++) { // 선수 순서
				int pitcher = (int) (Math.random() * 10) + 1; // 투수 랜덤 숫자
				System.out.println("> 투수가 공을 던집니다");
				System.out.print("> " + (j+1) + "번 타자가 공을 칩니다 : ");
				hit = sc.nextInt();
				System.out.println("> 투수 공 : " +pitcher);
				

				if (hit == 0 || hit > 10) { // 사용자 입력이 0 이거나 10 이상일 경우
					System.out.println("\n==입력 값을 확인해주세요==\n==기회가 넘어갑니다==\n");
					continue;
				} else if (pitcher == hit) { // 투수가 던진 숫자와 스윙 카운팅이 맞을 경우
					System.out.println("안타 !");
					System.out.println();
					bingle++; // 안타 카운팅 +1
					continue; // 다음으로 이동
				} else if (pitcher != hit) { // 투수가 던진 숫자와 스윙 카운팅이 맞지 않을 경우
					System.out.println("아웃 !");
					System.out.println();
					count++; // 아웃 카운팅 +1
				}

				if (count == 3) { // 아웃 카운팅이 3일경우
					System.out.println("=== 1회 종료 ===");
					System.out.println();
				} else if (count == 6) { // 아웃 카운팅이 6일경우
					System.out.println("=== 2회 종료 ===");
					System.out.println();
				} else if (count == 9) { // 아웃 카운팅이 9일경우
					System.out.println();
					System.out.println("=== 3회 종료 ===");
					count = 0; // 아웃 카운팅 초기화
					bingle = 0; // 안타 카운팅 초기화
					break;
				}

			}

		}
		System.out.println("경기가 종료되었습니다");
	}

}
