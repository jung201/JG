package homework.H_240904;

public class H_240904_3 {

	public static void main(String[] args) {
		// int[][] arr = new int[5][5]; 선언 한 후 1~25까지 차례대로 배열에 값을 넣고 출력해 주세요

		int[][] arr = new int[5][5];
		int count = 0;

		for (int i = 0; i < arr.length; i++) { // 행을 순회
			for (int j = 0; j < arr.length; j++) { // 열을 순회
				count += 1; // 0+1 부터 숫자 카운트
				arr[i][j] = count; // 1부터 숫자 대입
				System.out.print(arr[i][j] + "\t");
			}
			System.out.println();
		}

	}

}
