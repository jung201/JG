package ch02.sec07;

public class PromotionExample {

	public static void main(String[] args) {
		
		// 자동 타입 변환
		byte byteValue = 10;
		int intValue = byteValue;
		System.out.println("intValue: " + intValue);
		
		char charValue = '가';
		intValue = charValue;
		System.out.println("가의 유니코드: " + intValue);
		
		intValue = 50;
		long longValue = intValue;
		System.out.println("longValue: " + longValue);
		
		longValue = 100;
		float floatValue = longValue;
		System.out.println("floatValue: " + floatValue);
		
		floatValue = 100.5F;
		double doubleValue = floatValue;
		System.out.println("doubleValue: " + doubleValue);
		
		char char1Value = '이';
		intValue = char1Value;
		System.out.println("이의 유니코드: " + intValue);
		
		char char2Value = '정';
		intValue = char2Value;
		System.out.println("정의 유니코드: " + intValue);
		
		char char3Value = '규';
		intValue = char3Value;
		System.out.println("규의 유니코드: " + intValue);
	}

}
