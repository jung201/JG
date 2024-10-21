package homework.H_240821;

public class H_240821_16 {

	public static void main(String[] args) {
		Season currentSeason = Season.AUTUMN;
		switch (currentSeason) {
			case SPRING:
				System.out.println("순천만 꽃 구경 가기");
				break;
			case SUMMER:
				System.out.println("캐리비안베이 놀러가기");
				break;
			case AUTUMN:
				System.out.println("내장산 단풍 구경가기");
				break;
			case WINTER:
				System.out.println("한라산 눈 구경하기");
				break;
		}
	}

}
