package aa.exam05;

class AA{
	AA() {
		System.out.println("첫번째 생성자");
	}
	AA(int a) {
		System.out.println("두번째 생성자");
	}
	AA(int a, int b) {
		System.out.println("세번째 생성자");
	}
}

public class Overloading {
	public static void main(String[] args) {
		
		// 1. 세가지 생성자를 이용한 객체 생성
		AA a1 = new AA(); // 첫번째 생성자
		AA a2 = new AA(3); // 두번째 생성자
		AA a3 = new AA(3,5); // 세번째 생성자
		
		// 생성자의 숫자는 출력하거나 사용하지않으면 의미가 없다 3이든 5든 100이든
	}

}
