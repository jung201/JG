package homework.H_240821;

import java.util.Scanner;

public class H_240821_13 {

	public static void main(String[] args) {
		// 배열에 5개의 숫자를 입력받아 넣은 다음에 숫자 하나를 입력받아 그 숫자가 배열에 있는 값이면
		// 몇번째 인덱스에 들어 있는지 출력하고 없으면 배열에 없는 값이라고 출력해 주세요. 인덱스는 0부터 시작합니다

		Scanner sc = new Scanner(System.in);
		System.out.print("숫자를 입력하세요 : ");
		int num1 = sc.nextInt();
		int[] arr = new int[5];

		for (int i = 0; i < arr.length; i++) {
			int num = (int) (Math.random() * 10) + 0;
			arr[i] = num;

			if (arr[i] == num1) {
				System.out.print(arr[i] + "번째 인덱스 : " + num);
				break;
			} else if (arr[i] != num1) {
				System.out.println("없는 배열 : " + num);
				break;
			}

		}

	}

}
