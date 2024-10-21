package homework.H_240821;

import java.util.Scanner;

public class H_240821_10 {

	public static void main(String[] args) {
		// 배열 a[]={12,1,5,3,6,8,5,3}를 만든 다음에 배열의 모든 내용을 더한 값을
		// sum에 저장하여 출력하는 프로그램을 구현해 주세요

		int[] a = { 12, 1, 5, 3, 6, 8, 5, 3 };
		int sum = 0;

		for (int i = 0; i < a.length; i++) {
			sum += a[i];
		}
		System.out.println("총 합 : "+ sum);
	}

}
