package homework.H_241021;

public class Phone {
//	Phone 이라는 클래스 만들때
//	필드로 브랜드, 모델 시리즈, 색상
//	메소드로는 info() 로 class 필드이 값을 출력하는 내용을 구현
//	생성자는 다양하게 구성
//	PhoneExample 클래스에서
//	삼성, 폴드4, 검정
//	애플, iPhone15
//	구글폰
//	3가지 정보가 info 를 통해서 출력해 주세요

	// 필드선언
	String company;
	String model;
	String color;

	void info() {
	}
	
	// 생성자 선언
	Phone (String company) {
		this.company = company;
	}

	Phone(String company, String model) {
		this.company = company;
		this.model = model;
	}

	Phone(String company, String model, String color) {
		this.company = company;
		this.model = model;
		this.color = color;
	}

}