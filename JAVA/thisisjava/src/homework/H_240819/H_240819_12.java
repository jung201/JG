package homework.H_240819;

import java.util.Scanner;

public class H_240819_12 {

	public static void main(String[] args) {
//		점수를 입력받아 90점 이상은 수, 80점 이상은 우, 70점 이상은 미, 70점 미만이면 양가 로 
//		출력하는 프로그램을 만들때 if else if 를 사용해서 프로그램 만드세요
		Scanner scanner = new Scanner(System.in);

		System.out.print(">> 점수를 입력해주세요 : ");
		int score = scanner.nextInt();

		if (score >= 90) {
			System.out.println("> 성적은 '수' 입니다");
		} else if (score >= 80) {
			System.out.println("> 성적은 '우' 입니다");
		} else if (score >= 70) {
			System.out.println("> 성적은 '미' 입니다");
		} else if (score < 70) {
			System.out.println("> 성적은 '양', '가' 입니다");
		}
	}
}
