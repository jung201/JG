package ch12.sec03.exam04;

import ch12.sec03.exam02.*;

public class RecordExample {

	public static void main(String[] args) {
		Member m = new Member ( "winter", "눈송이", 25);
		System.out.println(m.id()); // get 함수 호출하는 법 ??.??()
		System.out.println(m.name());
		System.out.println(m.age());
		System.out.println(m.toString()); // 레코드안에 toString가 재정의가 되어있다
		System.out.println();
		// getName() >> 대신에 m.name() 하면 된다 
		
		
		Member m1 = new Member("winter", "눈송이", 25);
		Member m2 = new Member("winter", "눈송이", 26);
		Member m3 = new Member("fall", "단풍잎", 20);
		
		System.out.println("m.hashCode() : " + m.hashCode());
		System.out.println("m1.hashCode() : " + m1.hashCode());
		System.out.println("m2.hashCode() : " + m2.hashCode());
		System.out.println("m3.hashCode() : " + m3.hashCode());
		System.out.println("m.equals(m1) : " + m.equals(m1));
		System.out.println("m.equals(m2) : " + m.equals(m2));
		
		Student s1 = new Student ( 1, "홍길동");
		Student s2 = new Student ( 1, "홍길동");
		System.out.println("s1.hashCode() : " + s1.hashCode());
		System.out.println("s2.hashCode() : " + s2.hashCode());
	}

}
