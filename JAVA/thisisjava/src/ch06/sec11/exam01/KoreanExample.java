package ch06.sec11.exam01;

public class KoreanExample {

	public static void main(String[] args) {
		//객체 생성 시 무님번호와 이름 전달
		Korean k1 = new Korean("123456-1234567", "김자바");
		
		// 필드 값 읽기
		System.out.println(k1.nation);
		System.out.println(k1.ssn);
		System.out.println(k1.name);
		
		//Final 필드는 값을 변경할 수 없음
//		 k1.nation = "USA";
//		 K1.SSN = "123-12-1234";
		
		// 비 final 필드는 값 변경 가능
		k1.name = "sksksk";
		System.out.println("=================");
		System.out.println(k1.nation);
		System.out.println(k1.ssn);
		System.out.println(k1.name);
		
	}

}
