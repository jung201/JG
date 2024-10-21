package ch02.sec06;

public class StringExample {

	public static void main(String[] args) {
		String name = "홍길동";
		String job = "프로그래머";
		System.out.println(name);		// 홍길동
		System.out.println(job);			// 프로그래머

		String str = "나는 \"자바\"를 배웁니다.";
		System.out.println(str);		// "나는 "자바"를 배웁니다."
		
		str = "번호\t이름\t직업 ";
		System.out.println(str);		// 번호		이름		직업
		
		System.out.print("나는\n");	// 나는 (줄바꿈) 자바를 (줄바꿈)배웁니다.
		System.out.print("자바를\n");
		System.out.print("배웁니다.");
		
	}

}
