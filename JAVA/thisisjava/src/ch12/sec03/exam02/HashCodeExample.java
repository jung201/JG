package ch12.sec03.exam02;

public class HashCodeExample {

	public static void main(String[] args) {
		Student s1 = new Student(1, "홍길동");
		Student s2 = new Student(1, "홍길동");
		Student s3 = new Student(1, "홍길동");
		Student s4 = s1;

		System.out.println("s1.hashCpde() : " + s1.hashCode());
		System.out.println("s2.hashCpde() : " + s2.hashCode());
		System.out.println("s3.hashCpde() : " + s3.hashCode());
		System.out.println("s4.hashCpde() : " + s4.hashCode());
		System.out.println("========================");

		if (s1.hashCode() == s2.hashCode()) {
		} else {
			System.out.println("데이터가 다르므로 동등 객체가 아닙니다");
		}
		if (s1.hashCode() == s4.hashCode()) {
			if (s1.equals(s4)) {
				System.out.println("equals true");
			} else {
				System.out.println("equals false");
			}
		} else {
			System.out.println("해시코드가 다르므로 동등 객체가 아닙니다");
		}
	}
}