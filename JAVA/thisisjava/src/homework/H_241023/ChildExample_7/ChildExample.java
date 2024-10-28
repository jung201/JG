package homework.H_241023.ChildExample_7;

public class ChildExample {

	public static void main(String[] args) {
		Child child = new Child();

		
		// 작성결과
		// 1. "Parent() call"
		// 2. "Parent(String nation) call"
		// 3. "Child() call"
		// 4. "Child(String name) call"
		
		// 출력결과
		// 1. "Parent(String nation) call"
		// 2. "Parent() call"
		// 3. "Child(String name) call"
		// 4. "Child() call"
		
		// Parent를 Child가 상속 받았으나 오버로드하지 않아서 Parent가 먼저 출력될거라 생각하고
		// 위에서부터 썼습니다. 근데 ! 순서가 왜 저럴까 생각해보니 Parent에 public String nation; 이게
		// 상단에 필드선언이 되어있어서 인거같습니다.
	}

}
