package homework.H_240828;

public class H_240828_3 {

	public static void main(String[] args) {
		// 1~10까지 합을 구하세요. for문 사용
		
		int num = 0; // 1~10까지의 숫자
		int sum = 0; // 1~10까지의 숫자의 합

		for (int i = 1; i < 11; i++) { // i 가 1~10 일때까지
			System.out.println(num + " = " + sum);
			num = i;
			sum += num;

		}
		System.out.println("\n총 합 : " + sum);
	}

}
