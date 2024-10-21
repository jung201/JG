package ch02.sec04;

public class FloatDoubleExample {

	public static void main(String[] args) {
		// 정밀도 확인
		float var1 = 0.1234567890123456789f;
		double var2 = 0.1234567890123456789;
		System.out.println("var1: " + var1);		// 0.12345678 --> 0.12345679  반올림 확인할 것
		System.out.println("var1: " + var2);		// 0.1234567890123456789 -> 0.12345678901234568 17자리 기억할 것
		
		System.out.println("---------------------------------------");
		
		// 10의 거듭제곱 리터럴
		double var3 = 3e6;		// 10의 6승 : 1000000
		float var4 = 3e6F;			
		double var5 = 2e-3;		// 10의 -3승 : 0.001
		System.out.println("var3: " + var3);		// 3000000.0
		System.out.println("var4: " + var4);		// 3000000.0
		System.out.println("var5: " + var5);		// 0.002
	}

}
