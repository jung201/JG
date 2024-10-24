package ch06.sec06.exam01;

public class SportsCarExample {

	public static void main(String[] args) {
		
		SportsCar mySportsCar = new SportsCar();
		
		System.out.println("모델명 : " + mySportsCar.model);
		System.out.println("시동여부 : " + mySportsCar.start);
		System.out.println("현재속도 : " + mySportsCar.speed);

	}

}
