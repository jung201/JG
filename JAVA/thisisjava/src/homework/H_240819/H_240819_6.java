package homework.H_240819;

import java.util.Iterator;

public class H_240819_6 {

	public static void main(String[] args) {
//		for 문을 이용해서 다음과 같은 실행 결과가 나오는 코드를 작성해 보세요.

		for (int i = 0; i < 5; i++) {
			for (int k = 0; k < i + 1; k++) {
				System.out.print("*");
			}
			System.out.println();
		}
	}
}
