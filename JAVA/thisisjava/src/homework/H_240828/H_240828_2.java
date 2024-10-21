package homework.H_240828;

public class H_240828_2 {

	public static void main(String[] args) {
		// 1~10까지 합을 구하세요. do~while 문 사용

		int num = 1; // 1~10까지의 숫자
		int sum = 1; // 1~10까지의 숫자의 합

		do {
			num++; // num = num + 1 ;
			sum += num; // sum = sum + num
			System.out.println(num + " + " + sum);
		} while (num < 10); // num 이 10보다 작을떄까지 반복

		System.out.println("\n총 합 : " + sum);

	}

}
