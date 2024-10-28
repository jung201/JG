package aa.exam06;

class B {
	int m;
	int n;

	void init(int m, int n) {
		m = m;
		n = n;
	}
}

class BB {
	int m;
	int n;

	void init(int m, int n) {
		this.m = m;
		this.n = n;
	}
}

public class ThisKeyword_2 {
	public static void main(String[] args) {

		// 1. 필드명과 지역변수 명이 같은 경우 ( this 키워드를 사용하지 않은 경우 )
		B b = new B();
		b.init(2, 3);
		System.out.println(b.m);
		System.out.println(b.n);

		System.out.println("");

		// 2. 필드명과 지역변수 명이 같은 경우 ( this 키워드를 직접 사용하는경우 )
		BB b1 = new BB();
		b1.init(2, 3);
		System.out.println(b1.m);
		System.out.println(b1.n);
	}

}
