package aa.exam06;

// this ( 생성자 매개변수 ) 활용

class D {
	int m1, m2, m3, m4;

	D() {
		m1 = 1;
		m2 = 2;
		m3 = 3;
		m4 = 4;
	}

	D(int a) {
		m1 = a;
		m2 = 2;
		m3 = 3;
		m4 = 4;
	}

	D(int a, int b) {
		m1 = a;
		m2 = b;
		m3 = 3;
		m4 = 4;
	}

	void print() {
		System.out.print(m1 + "  ");
		System.out.print(m2 + "  ");
		System.out.print(m3 + "  ");
		System.out.print(m4 + "  ");
		System.out.println();
	}
}

class E {
	int m1, m2, m3, m4;

	E() {
		m1 = 1;
		m2 = 2;
		m3 = 3;
		m4 = 4;
	}

	E(int a) {
		this();
		m1 = a;
	}

	E(int a, int b) {
		this(a);
		m2 = b;

//		this();
//		m1 = a;
//		m2 = b;
	}

	void print() {
		System.out.print(m1 + "  ");
		System.out.print(m2 + "  ");
		System.out.print(m3 + "  ");
		System.out.print(m4 + "  ");
		System.out.println();
	}
}

public class ThisMethod_2 {
	public static void main(String[] args) {

		// 1. 세가지 객체 생성 ( this() 미사용 )
		D d1 = new D();
		D d2 = new D(10);
		D d3 = new D(10, 20);
		
		d1.print();
		d2.print();
		d3.print();
		System.out.println();
		
		// 2. 세가지 객체 생성 ( this() 사용 )
		E e1 = new E();
		E e2 = new E(10);
		E e3 = new E(10, 20);
		
		e1.print();
		e2.print();
		e3.print();

	}

}
