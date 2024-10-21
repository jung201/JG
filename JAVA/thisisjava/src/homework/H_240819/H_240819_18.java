package homework.H_240819;

import java.util.Scanner;

public class H_240819_18 {

	public static void main(String[] args) {
		int x = 5;
		int y = 10;

		if ((x > 0 && y > 0) || (x < 0 && y < 0)) {
			System.out.println("x와 y는 둘 다 양수이거나 둘 다 음수입니다.");
		} else {
			System.out.println("x와 y는 서로 다른 부호입니다.");
		}

//		NOT 연산자(!)를 이용한 문자열 비교 예제 :
		String str1 = "hello";
		String str2 = "world";

		if (!str1.equals(str2)) {
			System.out.println("str1과 str2는 다른 문자열입니다.");
		} else {
			System.out.println("str1과 str2는 같은 문자열입니다.");
		}
	}
}
