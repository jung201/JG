package homework.H_241023;

class A {

}

class B extends A {

}

class C extends A {

}

class D extends B {

}

class E extends B {

}

class F extends C {

}

public class ABCEDF_9 {
	public static void main(String[] args) {
		B b = new B();
		C c = new C();
		D d = new D();
		E e = new E();
		F f = new F();

		A a1 = b;
		A a2 = c;
		A a3 = d;
		A a4 = e;
		A a5 = f;

		B b1 = d;
		B b2 = e;

		C c1 = f;

	}

}
