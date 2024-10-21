package homework.H_241021;

public class BoxExample {

	public static void main(String[] args) {

//		상자를 나타내는 Box 클래스를 작성해 주세요
//		Box 클래스는 가로, 세로, 높이를 나타내는 필드를 가지고, 상자 부피를 계산하는 메소드를 가집니다
//		BoxExample 클래스에서 Box 클래스 객체 생성하고 나면 결과 값이 아래와 같이 출력해 주세요 
//		====================================
//		상자의 가로, 세로, 높이는 20,20,30 입니다.
//		상자의 부피는 12000.0 입니다
//		====================================

		Box myBox = new Box();
		
		// 가로
		int width = myBox.Box1(20);
		// 세로
		int vertical = myBox.Box2(20);
		// 높이
		int height = myBox.Box3(30);
		//부피
		double volume = width * vertical * height;
		
		System.out.println("상자의 가로, 세로, 높이는 " + width + "," + vertical + "," + height + " 입니다");
		System.out.println("상자의 부피는 " + volume + " 입니다");
	}

}
