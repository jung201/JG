package homework.H_240820;

public class H_240820_5 {

	public static void main(String[] args) {
		// for문을 이용해서 1부터 100까지의 홀수들의 합을 구하는 프로그램을 구현해 주세요

		int sum = 0;

		for (int i = 1; i < 100; i += 2) {
			System.out.println(i + " + " + sum);
			sum += i;
		}
		System.out.println();
		System.out.println("1~100까지의 홀수들의 합 : " + sum);

	}

}
