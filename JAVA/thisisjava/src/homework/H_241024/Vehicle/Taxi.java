package homework.H_241024.Vehicle;

public class Taxi implements Vehicle{
	// 추상 메소두 재정의
	@Override
	public void run() {
		System.out.println("택시가 달립니다");
	}
}
