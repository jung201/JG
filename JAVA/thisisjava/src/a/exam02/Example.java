package a.exam02;

public class Example {
	// 인스턴스 변수
	int value = 10; 

	// 인스턴스 메서드
	void Value() {
		System.out.println("void value : " + value);
	}

	// static 메서드에서는 인스턴스 변수나 인스턴스 메서드에 직접 접근할 수 없다 
	// 인스턴스를 생성하지 않아도 사용할 수 있으므로, 인스턴스 변수나 메서드를 참조할 수 없다
	public static void main(String[] args) {
		Example ex = new Example(); // 인스턴스 생성
		System.out.println("value : " + ex.value); // 인스턴스 변수에 접근
		ex.Value(); // 인스턴스 메서드 호출
		
	}

}
