package AA;

import java.util.Random;
import java.util.Scanner;

public class sample_1 {

	public static void main(String[] args) {
		Scanner scanner = new Scanner(System.in);
		Random random = new Random();

		// 9명의 타자 등록
		String[] players = { "타자 1", "타자 2", "타자 3", "타자 4", "타자 5", "타자 6", "타자 7", "타자 8", "타자 9" };

		int currentBatter = 0; // 현재 타자 순번

		for (int inning = 1; inning <= 3; inning++) { // 1회부터 3회까지
			int outs = 0;
			System.out.println(inning + "회 시작!");

			while (outs < 3) {
				// 현재 타자가 타석에 등장
				System.out.println(players[currentBatter] + " 타석에 등장!");

				int pitcherBall = random.nextInt(10) + 1; // 투수의 공 (1~10 난수)
				System.out.print("1부터 10까지 숫자를 입력하세요: ");
				int playerInput = scanner.nextInt();

				if (playerInput == pitcherBall) {
					System.out.println("안타!");
				} else {
					System.out.println("아웃!");
					outs++;
				}

				// 다음 타자로 순환
				currentBatter = (currentBatter + 1) % 9;
			}

			System.out.println(inning + "회 종료. 3아웃 발생.");
		}

		System.out.println("게임 종료!");
		scanner.close();
	}
}