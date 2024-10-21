package homework.H_240816;

public class H_240816_14 {

	public static void main(String[] args) {
		// 2 % 6 + 3 + ( 2 + 5 ) + 3 / 2 실행 결과와 이유를 설명해 주세요
		
		System.out.println(2 % 6 + 3 + ( 2 + 5 ) + 3 / 2);
		
		// 괄호 우선 연산 ( 2 + 5 ) -> 7
		// 곱셈, 나눗셈 우선연산 -> 좌에서 우로 우선 연산 
		// 덧셈, 뺄셈 좌에서 우로 연산
		// 2 % 6 + 3 연산 -> 5 + 7 + 3 / 2 -> 3 / 2 우선 연산
		// 5 + 7 + 1 - > 13 출력
		

	}

}
