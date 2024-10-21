package homework.H_240904;

import java.util.Iterator;

public class H_240904_4 {

	public static void main(String[] args) {
		//		int[][] array = {{95, 86}, {83, 92, 96},{78, 83, 93, 87, 88}}; 에서 전체 합과 평균을 구해 출력해 주세요. 중첩 for 문 사용해 주세요
		
		int[][] array = {{95, 86}, {83, 92, 96},{78, 83, 93, 87, 88}};
		
		int count = 0;
		int sum = 0;
		
		
		for (int i = 0; i < array.length; i++) {
			for (int j = 0; j < array[i].length; j++) {
				sum += array[i][j];
				count += 1;
			}
			
		}
		double  avg = sum / count;
		System.out.println("전체 합 : " +sum);
		System.out.println("평균 : " + avg);
	}

}
