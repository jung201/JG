package homework.H_241023.ChildExample_7;

public class Child extends Parent {
	public String name;

	public Child() {
		this("홍길동");
		System.out.println("Child() call : " + name);
	}

	public Child(String name) {
		this.name = name;
		System.out.println("Child(String name) call : " + name);
	}
}
