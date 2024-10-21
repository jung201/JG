package test;

import java.util.Iterator;
import java.util.Scanner;

public class Main2 {

	public static void main(String[] args) {
		Scanner sc = new Scanner(System.in);
		int hitCount = 0; // 타자 스윙 횟수
		int bingle = 0; // 안타 카운팅
		double ta = 0; // 타율
		int batsman[] = new int [8]; // 타자 선수

		for (int i = 1; i < 4; i++) { // 3회를 반복
			int count = 0; // 아웃 카운팅

			System.out.println("===" + i + "회 시작 ===\n");

			for (int j = 0; j < batsman.length; j++) { // 선수 순서

				int pitcher = (int) (Math.random() * 10) + 1; // 투수 랜덤 숫자
				System.out.println("> 투수가 공을 던집니다\n");

				System.out.println("> " + String.format("%.3f", ta) + " 타율 " + (j + 1) + "번 타자 등장");

				System.out.print("> " + (j + 1) + "번 타자가 공을 칩니다 : ");
				int hit = sc.nextInt();
				hitCount++;
				System.out.println("> 투수 공 : " + pitcher);

				if (hit == 0 || hit > 10) { // 사용자 입력이 0 이거나 10 이상일 경우
					System.out.println("\n==입력 값을 확인해주세요==\n==기회가 넘어갑니다==\n");
					continue;
				} else if (pitcher == hit) { // 투수가 던진 숫자와 스윙 카운팅이 맞을 경우
					System.out.println("안타 !");
					System.out.println();
					bingle++; // 안타 카운팅 +1
//					continue;
				} else if (pitcher != hit) { // 투수가 던진 숫자와 스윙 카운팅이 맞지 않을 경우
					System.out.println("아웃 !");
					System.out.println();
					count++; // 아웃 카운팅 +1
				}
				if (count == 3) { // 3아웃이 되면 회차 종료
					System.out.println("===" + i + "회 종료 ===");
					count = 0;
					break;
				}

				if (hitCount > 0) {
					ta = (double) bingle / hitCount; // 타율 계산
//					batsman = ta;
				}
			}

		}
		System.out.println("경기가 종료되었습니다");
	}

}