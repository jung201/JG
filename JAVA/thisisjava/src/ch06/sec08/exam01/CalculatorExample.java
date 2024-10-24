package ch06.sec08.exam01;

public class CalculatorExample {

	public static void main(String[] args) {
		// Calculator 객체 생성
		Calculator myCalc = new Calculator();
		
		// 리턴값이 없는 powerOn() 호출
		myCalc.powerOn();
		
		//plus 메소드 호출 시 5와 6을 매개값으로 제공
		// 덧셈 결과를 리턴받아 result1 변수에 대입
		int result1 = myCalc.plus(5, 6);
		System.out.println("result1 : " + result1);
		
		
		int x = 10;
		int y = 4;
		// divide() 메소드 호출 시 변수 x와 y의 값을 매개값으로 제공
		double result2 = myCalc.divide(x, y);
		System.out.println("resulte2 : " + result2);;
		
		myCalc.powerOff();
		
	}

}
