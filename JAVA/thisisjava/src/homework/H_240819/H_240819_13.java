package homework.H_240819;

import java.util.Scanner;

public class H_240819_13 {

	public static void main(String[] args) {
//		점수를 입력받아 90점 이상은 수, 80점 이상은 우, 70점 이상은 미, 70점 미만이면 양가 로 
//		출력하는 프로그램을 만들때 if else if 를 사용해서 프로그램 만드세요
//		12번을 switch 문으로 만드세요
		Scanner scanner = new Scanner(System.in);

		System.out.print(">> 점수를 입력해주세요 : ");
		int score = scanner.nextInt();

		switch (score) {
			case 90, 91, 92, 93, 94, 95, 96, 97, 98, 99, 100 -> {
				System.out.println("> 성적은 '수' 입니다");
			}
			case 80, 81, 82, 83, 84, 85, 86, 87, 88, 89 -> {
				System.out.println("> 성적은 '우' 입니다");
			}
			case 70 , 71, 72, 73, 74, 75, 76, 77, 78, 79 -> {
				System.out.println("> 성적은 '미' 입니다");
			}
			default  -> {
				System.out.println("> 성적은 '양', '가'입니다");
			}
		}
	}
}
