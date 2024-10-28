package aa.exam07.EX03;

// 외부 클래스 정의 ( public을 설정할 수 없다 )
class A {
	int m = 3;
	int n = 4;

	void print() {
		System.out.println(m + " , " + n);

	}
}

//public class 네임과 파일 이름이 같음
// public class는 파일에 하나
public class ExternalClass_1 {
	public static void main(String[] args) {
		A a = new A();
		a.print();
	}
}
