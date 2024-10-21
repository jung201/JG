package homework.H_240820;

public class H_240820_7 {

	public static void main(String[] args) {
		// 변수명이 동일해서 에러가 나면 변수명 바꿔주세요
		int a = 5;
		for (int i = 0; i < 10; i++) {
			if (i == a) {
				break;
			}
			System.out.print(i + " , "); // 0,1,2,3,4
		}
		System.out.println();

		for (int i = 0; i < 10; i++) {
			if (i == a) {
				continue;
			}
			System.out.print(i + " , "); // 0,1,2,3,4,6,7,8,9
		}
		System.out.println();

		int i = 0;
		while (true) {
			i++;
			if (i >= 5) {
				System.out.println(i); // 5
				break;
			}
		}
		for (int j = 0; j < 10; j++) {
			if (j >= 4) {
				System.out.println(j); // 4
				break;
			}
		}
		System.out.println("=1========================");

		int i2 = 0;
		while (i2 < 10) {
			i2++;
			if (i2 % 2 == 1) {
				continue;
			}
			System.out.println(i2); // 2 4 6 8 -> i2가 10보다 작을때 인데 10이 들어가나요..?
		}
		System.out.println("=2========================");

		for (int k = 0; k <= 10; k++) {
			if (k % 3 == 0) {
				continue;
			}
			System.out.println(k); // 1 2 4 5 7 8 10
		}
		System.out.println("=3========================");

		int i3 = 0;
		while (true) {
			i3++;
			if (i3 % 3 == 0) {
				continue;
			}
			if (i3 >= 5) {
				System.out.println(i3); // 5
				break;
			}
		}
		System.out.println("=4========================");

		for (int z = 0; z < 10; z++) {
			if (z % 2 == 1) {
				continue;
			}
			System.out.println(z); // 2 4 6 -> 0을 빼먹었습니다
			if (z >= 6) {
				break;
			}
		}
		System.out.println("=5========================");
		
		int h = 0;
		while (true) {
			h++;
			if (h % 2 == 0) {
				continue;
			}
			if (h >= 8) {
				System.out.println(h);	// 0 1 3 5 7 - > 9 잘못 이해했습니다
				break;
			}
		}

	}

}
