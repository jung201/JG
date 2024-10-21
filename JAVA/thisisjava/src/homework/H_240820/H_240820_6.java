package homework.H_240820;

public class H_240820_6 {

	public static void main(String[] args) {
// for문을 이용해서 1부터 50까지의 숫자 중 5의 배수이면서 3의 배수인 숫자를 출력하면서 
//	합을 구하는 프로그램을 구현해 주세요
		int sum = 0;
		
		for (int i = 1; i < 51; i++) {
			if ((i % 3 == 0) || (i % 5 == 0)) {
				System.out.println("3, 5의 배수 : " + i);
				sum += i;
			}
			
		}
		System.out.println("--------------------------");
		System.out.println("3, 5의 배수의 합 : " + sum);

	}

}
