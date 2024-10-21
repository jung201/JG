package homework.H_240828;

public class H_240828_4 {

	public static void main(String[] args) {
		// 1~100까지 짝수의 합을 구하세요. continue 문 사용

		int num = 0; // 1~10까지의 숫자
		int sum = 0; // 1~10까지의 숫자의 합

		for (int i = 1; i < 101; i++) { // i 가 100 아래일때까지
			if (i % 2 != 0) { // i 를 2로 나눴을때 나머지가 0이 아닌 경우
				continue; // 넘어간다
			}
			System.out.println(num + " = " + sum);
			num = i;
			sum += num;
		}
		System.out.println("\n총 합 : " + sum);
	}

}
