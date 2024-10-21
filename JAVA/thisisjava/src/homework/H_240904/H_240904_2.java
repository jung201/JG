package homework.H_240904;

public class H_240904_2 {

	public static void main(String[] args) {
		// int [][] seats = { {0, 0, 0, 1, 1, 0, 0, 0, 0, 0},{0, 0, 1, 1, 0, 0, 0, 0, 0,
		// 0},{0, 0, 0, 0, 0, 0, 1, 1, 1, 0} };
		// 1의 값은 관객입니다. 현재 관객 수는 몇명인지 출력해 주세요

		int[][] seats = { { 0, 0, 0, 1, 1, 0, 0, 0, 0, 0 }, { 0, 0, 1, 1, 0, 0, 0, 0, 0, 0 },
				{ 0, 0, 0, 0, 0, 0, 1, 1, 1, 0 } };

		int sum = 0;
		int count = 0;

		for (int i = 0; i < seats.length; i++) { // 행을 순회
			for (int j = 0; j < seats[i].length; j++) { // 열을 순회
				if (seats[i][j] == 1) { // 행열의 숫자가 1이면
					count++; // 카운트 ++
				}

			}

		}
		System.out.println("현재 관객 수는 : " + count + "명 입니다");
	}

}
