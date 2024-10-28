package aa.exam04;

import java.util.Arrays;

public class Method {
	public static void main(String[] args) {

		// 배열을 매개변수로 가지는 메서드 호출
		Array(new int[] { 1, 2, 3 });
//		Array({1,2,3,}); // 오류
		
	}

	public static void Array(int[] a) {
		System.out.println(Arrays.toString(a));

	}
}
