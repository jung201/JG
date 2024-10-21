package homework.H_240820;

public class H_240820_3 {

	public static void main(String[] args) {
		// 1~45까지의 수를 랜덤하게 6번 뽑아서 로또 번호를 만들어주세요.
		// (단, 동일한 번호가 나오는 경우에는 프로그램을 다시 실행해서 동일번호가 나오지 않은
		// 결과를 주석으로 적어주세요)

		int[] lotto = new int[6]; 												// lotto라는 이름으로 6개짜리 정수 배열 생성
		System.out.print("로또번호 : "); 									// 반복문 밖에다 작성

		for (int i = 0; i < lotto.length; i++) { 							// 6개 방 순회
			int num = (int) (Math.random() * 45) + 1; 			// 1~45까지 랜덤숫자 생성
			lotto[i] = num; 														// lotto 6개 방에 num 랜덤숫자 대입

			for (int j = 0; j < i; j++) {										// j가 i보다 작을때
				if (lotto[i] == lotto[j]) { 										// 로또방에 i  j  같을경우
					i--;																	// i를 하나씩 줄인다

				}
			}
			System.out.print(lotto[i] + " "); 							// 반복문 밖에다 작성
		}	// 41 23 24 29 38 13

	}

}
