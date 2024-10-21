package homework.H_240820;

public class H_240820_10 {

	public static void main(String[] args) {
		// 배열 a[10]에 3의 배수를 넣은 다음에 배열의 내용을 출력하는 프로그램을 구현해 주세요

		int[] num = new int[10];

		for (int i = 3; i < num.length; i += 3) {
			num[i] = i;
			System.out.print(num[i] + " ");

		}

	}

}
