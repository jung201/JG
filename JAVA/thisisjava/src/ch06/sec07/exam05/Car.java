package ch06.sec07.exam05;

public class Car {

	String company = "현대자동차";
	String model;
	String color;
	int maxSpeed;

	Car(String model) {
		this(model, "은색", 200);
		System.out.println("1개 파라미터로 구성한 생성자 호출했을때");
	}

	Car(String model, String color) {
		this(model, color, 250);
		System.out.println("2개 파라미터로 구성한 생성자 호출했을때");
	}

	Car(String model, String color, int maxSpeed) {
		System.out.println("3개 파라미터로 구성한 생성자 호출했을때");
		this.model = model;
		this.color = color;
		this.maxSpeed = maxSpeed;
	}

}
