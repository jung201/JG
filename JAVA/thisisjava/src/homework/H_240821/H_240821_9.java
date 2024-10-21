package homework.H_240821;

import java.util.Scanner;

public class H_240821_9 {

	public static void main(String[] args) {
		// 학생들의 점수를 분석하는 프로그램을 만들려고 합니다. 키보드로부터 학생 수와 각 학생들의 점수를
		// 입력받고, while 문과 Scanner의 nextLine() 메소드를 이용해서 최고 점수 및 평균 점수를 출력하는
		// 코드를 작성해 보세요.

		Scanner sc = new Scanner(System.in);

		int[] scores = new int[3];
		int max = scores[0];

		while (true) {
			System.out.println("--------------------------------------------------------------");
			System.out.println("1. 학생 수 | 2. 점수입력 | 3. 점수리스트 | 4. 분석 | 5. 종료");
			System.out.println("--------------------------------------------------------------");
			System.out.print("선택 > ");

			String num = sc.nextLine();
			int count = Integer.parseInt(num);

			if (count == 1) {
				System.out.print("학생수 > ");
				String student = sc.nextLine();

			} else if (count == 2) {
				System.out.print("scores[0] : ");
				String strScore1 = sc.nextLine();
				int score1 = Integer.parseInt(strScore1);
				scores[0] = score1;

				System.out.print("scores[1] : ");
				String strScore2 = sc.nextLine();
				int score2 = Integer.parseInt(strScore2);
				scores[1] = score2;

				System.out.print("scores[2] : ");
				String strScore3 = sc.nextLine();
				int score3 = Integer.parseInt(strScore3);
				scores[2] = score3;

			} else if (count == 3) {
				System.out.println("scores[0] : " + scores[0]);
				System.out.println("scores[1] : " + scores[1]);
				System.out.println("scores[2] : " + scores[2]);
			}

			else if (count == 4) {
				System.out.print("최고 점수> ");
				System.out.println(scores[max]);
				System.out.print("평균 점수> ");
				System.out.println(scores[0] + scores[1] + scores[2] / 3); // 이건 모르겠습니다 ..

			} else if (count == 5) {
				System.out.print("프로그램 종료");
				break;
			}

		}

	}

}
