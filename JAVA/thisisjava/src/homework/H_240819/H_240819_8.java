package homework.H_240819;

public class H_240819_8 {

	public static void main(String[] args) {
//		변수 a 에 20, b 에 0 을 넣은 다음에 만약 a 가 10보다 크면 a 에 b를 넣고 아니면 b 에 a 를 
//		넣어서 a,b 값을 출력하는 프로그램을 만드세요

		int a = 20;
		int b = 0;

		int result = (a > 10) ? (a = b) : (b = a);
		System.out.println(result);
	}
}
