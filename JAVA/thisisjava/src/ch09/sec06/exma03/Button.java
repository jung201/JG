package ch09.sec06.exma03;

public class Button {
	// 정적 멤버 인터페이스
	// static 키워드가 있어 외부 클래스의 인스턴스 없이 사용가능
	public static interface ClickListener {
		// 추상 메소드
		void onClick();
	}
	
	// 필드
	// 버튼이 클릭되었을때 실행될 인터페이스의 구현 객체를 저장
//	private ClickListener ClickListener;
	private ClickListener cl = new ClickListener() {
		@Override
		public void onClick() {
			System.out.println("Ok 버튼을 클릭했습니다");
		}
	};

	// 메소드
	public void setClickListener(ClickListener clickListener) {
		this.cl = clickListener;
	}
//
	public void click() {
		this.cl.onClick();
	}
	

	
}
