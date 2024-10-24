package ch08.sec06;

public interface RemoteControl {
	// 상수 필드
	int MAX_VOLUME = 25;
	int MIN_VOLUME = 0;

	// 추상 메소드
	void turnOn();

	void turnOff();

	void setVolume(int volume);

	// 디폴트 인스턴스 메소드
	default void setMute(boolean mute) {
	}

	static void changeBattery() {
		System.out.println("리모콘 건전지를 교환합니다.");
	}
}
