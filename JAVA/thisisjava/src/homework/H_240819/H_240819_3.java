package homework.H_240819;

public class H_240819_3 {

	public static void main(String[] args) {
		int sum = 0;
		
		for (int i = 1; i < 100; i++) {
			if (i % 3 == 0) {
				sum += i;
				System.out.println(i + " -> " + sum);
			}
		}
		System.out.println("-------------------------");
		System.out.println("3의 배수의 총 합 : " + sum);
	}
}
