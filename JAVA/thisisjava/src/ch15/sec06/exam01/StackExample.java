package ch15.sec06.exam01;

import java.util.Stack;

public class StackExample {
	public static void main(String[] args) {

		// Stack 컬렉션 생성 - 후입선출
		Stack<Coin> coinBox = new Stack<Coin>();

		// 동전 넣기
		coinBox.push(new Coin(10));
		coinBox.push(new Coin(50));
		coinBox.push(new Coin(100));
		coinBox.push(new Coin(500));

		// 동전 하나씩 꺼내기
		while (!coinBox.isEmpty()) { // coinBox가 비어있지 않을 동안 반복
			Coin coin = coinBox.pop();
			System.out.println("꺼내온 동전 : " + coin.getValue() + "원");
		}
	}

}
