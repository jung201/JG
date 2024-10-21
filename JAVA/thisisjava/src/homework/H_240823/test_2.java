package homework.H_240823;

public class test_2 {

	public static void main(String[] args) {
		for (int i = 1; i < 1001; i++) { // 1~ 1000
			int num = i; // 1~1000 num 대입
			boolean result = false; // 짝, 뽀숑 출력 여부

			if (num % 10 == 3 || num % 10 == 6 || num % 10 == 9) { // 1의 자리 나머지 3,6,9 구하기
				System.out.print("짝");
				result = true;
			}
			num /= 10; // 10으로 나누어 자릿수 줄이기

			if (num % 10 == 3 || num % 10 == 6 || num % 10 == 9) { // 10의 자리 나머지 3,6,9 구하기
				System.out.print("짝");
				result = true;
			}
			num /= 10; // 10으로 나누어 자릿수 줄이기

			if (num % 10 == 3 || num % 10 == 6 || num % 10 == 9) { // 100의 자리 나머지 3,6,9 구하기
				System.out.print("짝");
				result = true;
			}
			num /= 10; // 10으로 나누어 자릿수 줄이기

			if (i % 10 == 0) { // 10의 배수 뽀숑 출력
				System.out.print("뽀숑");
				result = true;
			}

			if (!result) { // 짝, 뽀숑이 출력되지 않은 경우 숫자 출력
				System.out.print(i);
			}

			System.out.println();
		}
	}
}