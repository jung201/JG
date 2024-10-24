package ch06.sec12.Hyundai;

//import 문으로 다른 패키지 클래스 사용을 명시
import ch06.sec12.hankook.SnowTire;
import ch06.sec12.kumho.AllSeasonTire;

public class Car {
	// 부품 필드 선언
	// 동일한 이름이면 풀네임 작성
	ch06.sec12.hankook.Tire tire1 = new ch06.sec12.hankook.Tire();
	ch06.sec12.kumho.Tire tire2 = new ch06.sec12.kumho.Tire();
	SnowTire tire3 = new SnowTire();
	AllSeasonTire tire4 = new AllSeasonTire();
}
