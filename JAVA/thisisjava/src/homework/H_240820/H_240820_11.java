package homework.H_240820;

public class H_240820_11 {

	public static void main(String[] args) {
// 배열 a[100]에 1부터 100까지의 숫자를 순서대로 넣은 다음 배열의 인덱스가 짝수인 
//	배열에 들어 있는 값만 출력하는 프로그램을 구현 해 주세요
		int a[] = new int[100];

		for (int i = 1; i < a.length; i++) { 	// 100이 포함되게 등호를 <=로 바꾸면 100이 안뜨고 에러가 나는데 나중에 알려주세요..
			a[i] = i;
			if (i % 2 == 0) {
				System.out.println(a[i]);
			}

		}

	}

}
