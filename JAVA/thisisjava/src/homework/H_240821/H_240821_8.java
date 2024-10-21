package homework.H_240821;

public class H_240821_8 {

	public static void main(String[] args) {
		// 주어진 배열 항목의 전체 합과 평균을 구해 출력하는 코드를 작성해 보세요 (중첩 for문 이용)

		int[][] array = { { 95, 86 }, { 83, 92, 96 }, { 78, 83, 93, 87, 88 } };

		int totalClass = 0;
		int totalsum = 0;

		for (int i = 0; i < array.length; i++) {
			totalClass += array[i].length;
			for (int j = 0; j < array[i].length; j++) {
				totalsum += array[i][j];
			}

		}
		System.out.println("전체 클래스의 합 : " + totalClass);
		System.out.println("전체 점수의 합 : " + totalsum);

		double totalAvg = (double) totalsum / totalClass;
		System.out.println("전체 평균 : " + totalAvg);

	}

}
