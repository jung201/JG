package ch06.sec08.exma04;

public class CalculatorExample {

	public static void main(String[] args) {
		
		Calculator rec1 = new Calculator();
		
		System.out.println(rec1.areaRectangle(4));
		System.out.println(rec1.areaRectangle(5, 2));
		
//		double result1 = rec1.areaRectangle(4);
//		double result2 = rec1.areaRectangle(5, 2);
//		System.out.println("정사각형의 넓이 = " + result1);
//		System.out.println("직사각형의 넓이 = " + result2);
	}

}
