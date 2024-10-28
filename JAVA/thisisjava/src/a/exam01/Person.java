package a.exam01;

public class Person {
	// 필드 ( 인스턴스 )
	 String name;
	 int age;

	// 생성자
	public Person(String name, int age) {
		// this 를 사용하여 필드와 매개변수를 구분
		this.name = name;
		this.age = age;

	}

	// 이름과 나이를 출력하는 메서드
	public void print() {
		System.out.println("Name : " + name);
		System.out.println("Age : " + age);
	}

	public static void main(String[] args) {
		Person p = new Person("정규", 25);
		p.print();
	}
}
