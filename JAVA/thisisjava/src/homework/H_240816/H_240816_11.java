package homework.H_240816;

public class H_240816_11 {

	public static void main(String[] args) {
		// 삼항연산자가 어떤것이 있으며 어떻게 사용하는지 설명해 주세요
		
		// 삼항 연산자는 항이 3개라는 뜻이다. 조건에 만족하면 true 표현식이 실행되고 조건에 
		// 맞지 않으면 false 표현식이 실행 된다. if, else 문과 유사하다 ( 단순 표현식만 가능 )
		// (조건) ? true : false
		
		int a = 1;
		int b = 2;
		
		int c = ( a < b ) ? a + b : a - b;
		System.out.println(c);
		
		// 조건식 : ( a < b ) ? --> a가 b보다 작은가 ? 라는 조건식 a=1, b=2 이므로 true
		// true : 조건식이 true 일경우 a + b 실행, 조건식이 참이기때문에 1+2 실행
		// false : 조건식이 false 일경우 a - b 실행, 조건식이 참이기때문에 실행하지 않음
		
		
		
		

	}

}
