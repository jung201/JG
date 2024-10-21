package homework.H_240823;

import java.util.Scanner;

public class test_1 {

	public static void main(String[] args) {
		// 가위(0), 바위(1), 보(2) 를 유저로부터 입력 받고
		// 컴퓨터가 0,1,2 값을 하나 추출해서
		// 서로 가위바위보를 비교해서
		// 각자 가위바위보 중에 어떤 것을 냈고 누가 이겼는지를 알려주는
		// 프로그램을 구현해 주세요

		Scanner sc = new Scanner(System.in);
		System.out.print(">> 유저vs컴퓨터\n>> 가위 : 0 , 바위 : 1 , 보 : 2 \n\n> 유저 입력 : ");
		int com = (int) (Math.random() * 2) + 0;
		String input = sc.nextLine();
		int inputInt = Integer.parseInt(input);
		
		System.out.println("> 컴퓨터 입력 : " + com);
		System.out.println();
		
		if (inputInt == 0 && com == 0) {
			System.out.println("유저 = 가위 vs 가위 = 컴퓨터");
			System.out.println("> 비겼다");
		} else if (inputInt == 0 && com == 1) {
			System.out.println("유저 = 가위 vs 바위 = 컴퓨터");
			System.out.println("> 졌다");
		} else if (inputInt == 0 && com == 2) {
			System.out.println("유저 = 가위 vs 보 = 컴퓨터");
			System.out.println("> 이겼다");
		} else if (inputInt == 1 && com == 0) {
			System.out.println("유저 = 바위 vs 가위 = 컴퓨터");
			System.out.println("> 이겼다");
		} else if (inputInt == 0 && com == 1) {
			System.out.println("유저 = 바위 vs 바위 = 컴퓨터");
			System.out.println("> 비겼다");
		} else if (inputInt == 0 && com == 2) {
			System.out.println("유저 = 바위 vs 보 = 컴퓨터");
			System.out.println("> 졌다");
		} else if (inputInt == 2 && com == 0) {
			System.out.println("유저 = 보 vs 가위 = 컴퓨터");
			System.out.println("> 졌다");
		} else if (inputInt == 0 && com == 1) {
			System.out.println("유저 = 보 vs 바위 = 컴퓨터");
			System.out.println("> 이겼다");
		} else if (inputInt == 0 && com == 2) {
			System.out.println("유저 = 보 vs 보 = 컴퓨터");
			System.out.println("비겼다");
		}
		System.out.println();
	}

}
