package test;

import java.util.Scanner;

public class Main3 {

    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        
        int hitCount; // 타자 스윙 횟수
        int bingle; // 안타 카운팅
        double ta; // 타율
        int batsman[] = {1, 2, 3, 4, 5, 6, 7, 8, 9}; // 타자 선수
        int batterIndex = 0; // 타자 인덱스 (0 ~ 8까지 반복)

        for (int i = 1; i < 4; i++) { // 3회를 반복
            int count = 0; // 아웃 카운팅
            hitCount = 0; // 회차별 스윙 횟수 초기화
            bingle = 0; // 회차별 안타 카운팅 초기화
            ta = 0; // 타율 초기화

            System.out.println("===" + i + "회 시작 ===\n");

            while (count < 3) { // 3아웃이 될 때까지 반복
                int pitcher = (int) (Math.random() * 10) + 1; // 투수 랜덤 숫자
                System.out.println("> 투수가 공을 던집니다\n");

                System.out.println("> " + String.format("%.3f", ta) + " 타율 " + batsman[batterIndex] + "번 타자 등장");

                System.out.print("> " + batsman[batterIndex] + "번 타자가 공을 칩니다 : ");
                int hit = sc.nextInt();
                hitCount++;
                System.out.println("> 투수 공 : " + pitcher);

                if (hit == 0 || hit > 10) { // 사용자 입력이 0 이거나 10 이상일 경우
                    System.out.println("\n==입력 값을 확인해주세요==\n==기회가 넘어갑니다==\n");
                } else if (pitcher == hit) { // 투수가 던진 숫자와 스윙 카운팅이 맞을 경우
                    System.out.println("안타 !");
                    System.out.println();
                    bingle++; // 안타 카운팅 +1
                } else { // 투수가 던진 숫자와 스윙 카운팅이 맞지 않을 경우
                    System.out.println("아웃 !");
                    System.out.println();
                    count++; // 아웃 카운팅 +1
                }

                if (hitCount > 0) {
                    ta = (double) bingle / hitCount; // 타율 계산
                }

                batterIndex = (batterIndex + 1) % 9; // 다음 타자로 이동
            }
            
            System.out.println("===" + i + "회 종료 ===");
        }

        System.out.println("경기가 종료되었습니다");
    }
}
