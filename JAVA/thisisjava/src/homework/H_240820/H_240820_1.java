package homework.H_240820;

public class H_240820_1 {

	public static void main(String[] args) {
		// 같은 문자열이 2번 출력 되도록 ? 안에 적절한 조건식, 결과값을 넣어주세요
		boolean isFlag1 = true, isFlag2 = true; // 입력값

		if (isFlag1) {
			if (isFlag2) {
				System.out.println("맞음");
			} else {
				System.out.println("틀림");
			}
		} else {
			if (isFlag2) {
				System.out.println("틀림");
			} else {
				System.out.println("틀림");
			}
		}
		if (isFlag1) { // 적절한 조건식을 ?부분에 넣어보자
			System.out.println("맞음"); // 출력값이 상위 코드와 동일하게 동작하도록
		} else {
			System.out.println("틀림");
		}
	}

}
