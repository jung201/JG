package AA;

import java.util.Scanner;

public class AA1 {
	public static void main(String[] args) {

		// ** 스캐너
		// Scanner scanner = new Scanner(System.in); // 스캐너 실행
		// String strNum = sc.nextLine(); // 스캐너 문자열
		//		int n = Integer.parseInt(strNum);
		// int b = scanner.nextInt(); // 스캐너 숫자

		// ** 타입변경
		// int X = Integer.parseInt(strX); // 문자열 -> 숫자열

		// ** 랜덤 메소드
		// int A = (int) (Math.random() * 6) + 1; // 랜덤 숫자생성

		// ** 참조, 기본 타입 비교
		// if (strNum.equals("1")) // 문자열 비교
		// equals는 주소값이 아닌 같은 값인지를 확인 -> 참조타입
		// ==은 값이 아닌 저장된 객체 주소가 같은지 확인 -> 기본타입
		// equals () = 내부 문자열만 비교

		// ** 문자열 추출 메소드
		// charAt() = 문자열에서 특정 위치의 문자를 얻고싶을때
		// lenght() = 문자열에서 문자의 개수를 얻고싶을때
		// replace() = 문자열에서 특정 문자열을 다른 문자열로 대체하고 싶다면
		// substring() = 문자열에서 특정 위치의 문자열을 잘라내어 가져오고 싶다면
		// indexOf() = 문자열에서 특정 문자열의 위치를 찾고자 할때 ( 포함되어있지 않으면 -1을 리턴)
		// contains() = 문자열이 단순히 포함되어 있는지만 알고자 할때 true, false로 리턴(boolean과 함께 사용)
		// split() = 여러개의 문자열로 구성되어 있을 경우, 따로 분리해서 얻고싶다면 ( 배열방식 )
		// System.arraycopy() = 배열 복사

		// enum 작성 및 사용
		// public enum Week {
		// MONDAY,
		// TUESDAY,
		// WEDNESDAY,
		// THURSDAY,
		// FRIDAY,
		// SATURDAY,
		// SUNDAY
		// }
		// Week 열거 타입 변수 선언
		// Week today = null;
		//
		// Calendar 얻기
		// Calendar cal = Calendar.getInstance();
		//
		// 오늘의 요일 얻기 (1~7)
		// int week = cal.get(Calendar.DAY_OF_WEEK);
		// System.out.println("week : " + week);
		// 일:1 월:2 화:3 수:4 목:5 금:6 토:7

		// ** 배열
		// 많이 씀
		// int[] score2 = new int[4]; // 선 -> 방 먼저 만듬
		// score2[0] = 100; // 후 -> 데이터 입력

		// int[] scores1;
		// scores1 = { 83 , 90 , 87 }; // 안된다, 데이터 선언 불가
		// scores1[0] = 83; // 안된다, 방이 없음
		// scores1 = new int[3]; // 된다, 변수명에 새로운 int방 3개 생성
		// scores1[0] = 83; // 된다, 새로운방에 0번째에 데이터 입력
		// scores1 = new int[] { 83, 90, 87 }; // 된다, 변수명에 새로운 방생성, 데이터 입력

		// 조건문 if, switch
		// 반복문 for, while, do whild

	}

}
