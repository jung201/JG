package homework.H_240819;

public class H_240819_4 {

	public static void main(String[] args) {
//		while 문과 Math.random() 메소드를 이용해서 두개의 주사위를 던졌을 때 나오는 눈을 (눈1, 눈2)
//		형태로 출력하고, 눈의 합이 5가 아니면 계속 주사위를 던지고, 눈의 합이 이면 실행을 멈추는 코드를
//		작성해 보세요. 눈의 합이 5가 되는 경우는 (1,4) , (4,1) , (2,3) , (3,2) 입니다.

		while (true) {
			int dice1 = (int) (Math.random() * 6) + 1;
			int dice2 = (int) (Math.random() * 6) + 1;

			if (dice1 + dice2 != 5) {
				System.out.println(">> ( " + dice1 + " , " + dice2 + " ) ");
				System.out.println("> 눈의 합이 5가 아닙니다");
				System.out.println("");
			} else if (dice1 + dice2 == 5) {
				System.out.println(">> ( " + dice1 + " , " + dice2 + " ) ");
				break;
			}
		}
		System.out.println("> 눈의 합이 5이므로 실행을 종료합니다.");
	}
}
