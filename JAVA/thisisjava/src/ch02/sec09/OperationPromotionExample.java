package ch02.sec09;

public class OperationPromotionExample {

	public static void main(String[] args) {
		// 컴파일 단계에서 연산
		byte result1 = 10 + 20;								
		System.out.println("result1: " + result1);
		
		// int 타입으로 변환 후 연산
		byte v1 = 10;
		byte v2 = 20;
		int result2 = v1 + v2;
		System.out.println("result2: " + result2);
		
		// long 타입으로 변환 후 연산
		byte v3 = 10;
		int v4 = 100;
		long v5 = 1000L;
		long result3 = v3 + v4 + v5;
		System.out.println("result3: " + result3);
		
		// int 타입으로 변환 후 연산
		char v6 = 'A';
		char v7 = 1;
		int result4 = v6 + v7;
		System.out.println("result4: " + result4);
		System.out.println("reslut4: " + (char)result4);
		
		// 정수 연산의 결과는 정수
		int v8 = 10;
		int result5 = v8 / 4;
		System.out.println("result5: " + result5);
		
		// double 타입으로 변환 후 연산
		int v9 = 10;
		double result6 = v9 / 4.0;
		double dResult = v9 / 4;
		System.out.println("result6: " + result6);
		System.out.println("dResult: " + dResult);
		
		// double 타입으로 변환 후 연산
		int v10 = 1;
		int v11 = 2;
		double result7 = (double) v10 / v11;
		double dResult2 =  v10 / (double) v11;
		double dResult3 =  (double)v10 / (double) v11;
		double dResult4 =  (double)v10 / v11;
		System.out.println("result7: " + result7);
		System.out.println("(double) v10 / v11: " + result2);
		System.out.println("v10 / (double) v11: " + result3);
		System.out.println("(double)v10 / (double) v11: " + result3);
		System.out.println("(double)v10 / v11: " + result4);
		

	}

}
