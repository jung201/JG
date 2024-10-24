package ch07.sec09;

public class InstanceofExample {
	// main() 메소드에서 바로 호출하기 위해 정적 메소드 선언
	public static void personInfo(Person person) {
		System.out.println("name : " + person.name);
		person.walk();

		// person이 참조하는 객체가 Student 타입일 경우
		// Student 변수에 대입 ( 타입 변환 발생 )
		if (person instanceof Student student) {
			System.out.println("studentNo : " + student.studentNo);
			student.study();
		} else {
			System.out.println("학생아님");
		}
	}

	public static void main(String[] arg) {
		Person p1 = new Person("홍");
		personInfo(p1);

		System.out.println();

		// Student 객체를 매개값으로 제공하고 personInfo() 메소드 호출
		Person p2 = new Student("김길", 10);
		personInfo(p2);
	}
}
