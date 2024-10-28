package homework.H_241022;

public class MemberExample {

	public static void main(String[] args) {

		Member user1 = new Member("홍길동", "hong");

		System.out.println(user1.name);
		System.out.println(user1.id);
	}
}


//public static void main(String[] args) {
//    // 생성자를 사용하여 name과 id를 초기화
//    Member user1 = new Member("홍길동", "hong");
//
//    // 나머지 필드는 필요시 직접 할당
//    user1.password = "1234";
//    user1.age = 30;
//
//    // 필드 출력
//    System.out.println("Name: " + user1.name);
//    System.out.println("ID: " + user1.id);
//    System.out.println("Password: " + user1.password);
//    System.out.println("Age: " + user1.age);
//}
//}