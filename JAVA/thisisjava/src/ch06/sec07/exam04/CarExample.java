package ch06.sec07.exam04;

public class CarExample {

	public static void main(String[] args) {
		Car myCar = new Car("그랜저", "검정", 250);

		Car car1 = new Car();
		System.out.println("car1 company : " + car1.company);
		System.out.println("");

		Car car2 = new Car("K5");
		System.out.println("car2  company : " + car2.company);
		System.out.println("car2  model : " + car2.model);
		System.out.println("");

		Car car3 = new Car("아시아용", "흰색");
		System.out.println("car3 company : " + car3.company);
		System.out.println("car3 model : " + car3.model);
		System.out.println("car3 color : " + car3.color);
		System.out.println("");

		Car car4 = new Car("유럽용", "검정색", 350);
		System.out.println("car3 company : " + car4.company);
		System.out.println("car3 model : " + car4.model);
		System.out.println("car3 color : " + car4.color);
		System.out.println("car3 maxSpeed : " + car4.maxSpeed);
		System.out.println("");
		
		

	}

}
