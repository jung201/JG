package homework.H_240816;

public class H_240816_6 {

	public static void main(String[] args) {
		// a=b=c를 실행시키면 3개의 값이 c값으로 변경되는 이유를 설명해 주세요
		
		int a = 1;
		int b = 1;
		int c = 3;
		
		a=b=c;
		System.out.println(a);
		System.out.println(b);
		System.out.println(c);
		
		// 오른쪽에서 왼쪽으로 변수가 대입되기 때문 
	}

}
