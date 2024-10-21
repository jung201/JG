package homework.H_240816;

import java.util.Scanner;

public class H_240816_31 {

	public static void main(String[] args) {
		if ( 5>3 ) {
		System.out.println(true);		// true 출력
		}
		System.out.println("=======================");
		
		if ( 5<3 ) {
		System.out.println(true);		// 미출력
		}
		System.out.println("=======================");
		
		System.out.println(1);		// 1출력
		if ( 5 < 3) {
			System.out.println(true);		// 미출력
		}
		System.out.println(2);		// 2 출력
		System.out.println("=======================");
		
		if ( 5 > 3) {
			System.out.println(true);		// true 출력
		} else {
			System.out.println(false);
		}
		System.out.println("=======================");
		
		if ( 5 == 3) {
			System.out.println(true);
		} else {
			System.out.println(false);		// false 출력
		}
		System.out.println("=======================");
		
		System.out.println(1);		// 1출력
		if ( 5 > 3 ) {
			System.out.println(true);		// true 출력
		} else {
			System.out.println(false);
		}
		System.out.println(2);		// 2 출력
		System.out.println("=======================");

	}
}
