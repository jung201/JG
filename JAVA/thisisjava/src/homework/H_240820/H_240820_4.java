package homework.H_240820;

public class H_240820_4 {

	public static void main(String[] args) {
		// 변수명이 동일해서 에러가 나면 변수명 바꿔주세요
		for (int i = 0; i < 10; i++) {
			System.out.print(i + " , "); // 0,1,2,3,4,5,6,7,8,9
		}
		System.out.println();
		for (int i = 5; i < 10; i++) {
			System.out.print(i + " , "); // 5,6,7,8,9
		}
		System.out.println();
		for (int i = 5; i < 10; i++) {
			System.out.print(i + " , "); // 5,6,7,8,9
		}
		System.out.println();
		for (int i = 5; i < 10; i = i + 2) {
			System.out.print(i + " , "); // 5,7,9
		}
		System.out.println();
		for (int i = 5; i < 10; i = i + 2) {
			System.out.print(i + " , "); // 5,7,9
		}
		System.out.println();
		for (int i = 5; i < 10; i = i + 2) {
			System.out.print(i + " , "); // 5,7,9
		}
		System.out.println();
		for (int i = 5; i < 10; i = i + 2) {
			System.out.print(i + " , "); // 5,7,9
		}
		System.out.println();
		int sum = 0;
		for (int i = 0; i < 10; i++) {
			sum = sum + i;
			System.out.print(sum + " , "); // 0 1 3 6 10 15 21 28 36 45
		}
		System.out.println();
		int sum1 = 0;
		for (int i = 0; i < 5; i = i + 2) {
			sum1 = sum1 + i;
			System.out.print(sum1 + " , "); // 0 2 6
		}
	}

}
