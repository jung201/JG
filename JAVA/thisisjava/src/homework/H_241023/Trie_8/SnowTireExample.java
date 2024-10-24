package homework.H_241023.Trie_8;

public class SnowTireExample {

	public static void main(String[] args) {
		SnowTire snowTire = new SnowTire();
		Tire tire = snowTire;

		snowTire.run();
		tire.run();

		// 작성결과
		// "스노우 타이어가 굴러갑니다"
		// "일반 타이어가 굴러갑니다" 

		// 작성결과
		// "스노우 타이어가 굴러갑니다"
		// "스노우 타이어가 굴러갑니다"

		// 틀림 !! 왜 인지를 생각해 보니 Tire run을 상속받은 SnowTire가
		//  run을 오버로드하여 tire.run도 스노우 ! 인거같습니다
	}
}
