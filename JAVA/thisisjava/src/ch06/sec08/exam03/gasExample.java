package ch06.sec08.exam03;

public class gasExample {

	public static void main(String[] args) {
		gas myCar = new gas();

		myCar.setGas(5);

		if (myCar.isLeftGas()) {
			System.out.println("출발합니다~~");

			myCar.run();
		}
		System.out.println("gas를 주입하세요");
	}

}
