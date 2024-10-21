package homework.H_240821;

public class H_240821_12 {

	public static void main(String[] args) {
		// a[]={12,1,51,3,6,8,5}의 a배열에서 가장 큰 값과 가장 작은 값을 더하는 프로그램을 구현해 주세요

		int[] a = { 12, 1, 51, 3, 6, 8, 5 };
		int max = a[0];
		int min = a[0];

		for (int i = 0; i < a.length; i++) {
			if (a[i] > max) {
				max = a[i];
				System.out.println("가장 큰 값 : " + max);
			}
			if (a[i] < min) {
				min = a[i];
				System.out.println("가장 작은 값 : " + min);
			}
		}
		System.out.println("큰 값과 작은 값의 합 : " + (max + min));

	}

}
