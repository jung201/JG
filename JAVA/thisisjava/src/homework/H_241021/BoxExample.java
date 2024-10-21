package homework.H_241021;

public class BoxExample {

	public static void main(String[] args) {

		Box myBox = new Box();

		int result1 = myBox.Box1(20);
		int result2 = myBox.Box2(20);
		int result3 = myBox.Box3(30);
		
		System.out.println("상자의 가로, 세로, 높이는 " + result1 +","+ result2 +","+result3 + " 입니다");
		System.out.println("상자의 부피는 " + ((result1 + result2)*result3 )+ " 입니다");
	}

}
