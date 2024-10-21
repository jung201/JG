package homework.H_240820;

public class H_240820_9 {

	public static void main(String[] args) {
// 배열 a에 1,2,3 을 넣은 후 배열 내의 모든 값에 2를 더한 값인 3,4,5로 변경한 다음에 배열의 
//	내용을 화면에 출력하는 프로그램을 구현해 주세요

		int[] num = { 1, 2, 3 };
		int sum = 0;

		for (int i = 0; i < num.length; i++) {
			sum = num[i];
			sum += 2;
			System.out.print(sum + " ");
		}

	}

}
