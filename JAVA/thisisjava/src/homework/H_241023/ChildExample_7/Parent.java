package homework.H_241023.ChildExample_7;

public class Parent {
	public String nation;

	public Parent() {
		this("대한민국");
		System.out.println("Parent() call : " + nation);
	}

	public Parent(String nation) {
		this.nation = nation;
		System.out.println("Parent(String nation) call : " + nation);
	}
}
