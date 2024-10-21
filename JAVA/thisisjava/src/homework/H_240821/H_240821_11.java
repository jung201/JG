package homework.H_240821;

public class H_240821_11 {

	public static void main(String[] args) {
		// a[]={12,1,5,3,6,8,5,3}의 a배열에서 배열 안의 숫자가 짝수인 값을 더한 값을 출력하는 프로그램을 구현해 주세요
		// sum에 저장하여 출력하는 프로그램을 구현해 주세요

		int[] a = { 12, 1, 5, 3, 6, 8, 5, 3 };
		int sum = 0;

		for (int i = 0; i < a.length; i++) {
			if (a[i] % 2 == 0) {
				System.out.println("짝수인 값 : " + a[i]);
				sum += a[i];

			}
		}
		System.out.println("총 합 : " + sum);

	}

}
