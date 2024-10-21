package homework.H_240819;

public class H_240819_5 {

	public static void main(String[] args) {
//		중첩 for 문을 이용하여 방정식 4x + 5y = 60의 모든 해를 구해서 (x,y) 형태로 출력하는 코드를 작성
//		해보세요. 단 x와 y는 10 이하의 자연수입니다.

//		4x + 5y의 모든 해
		for (int x = 0; x < 11; x++) {
			for (int y = 0; y < 11; y++) {
				System.out.println(" ( " + x + " , " + y + " ) = " + ((4 * x) + (5 * y)));
			}
		}

		System.out.println("---------------------------------------");

//		4x + 5y = 60의 모든 해
		for (int x = 0; x < 11; x++) {
			for (int y = 0; y < 11; y++) {
				if ((4 * x) + (5 * y) == 60) {
					System.out.println(" ( " + x + " , " + y + " ) = " + ((4 * x) + (5 * y)));
				}
			}
		}
	}
}
