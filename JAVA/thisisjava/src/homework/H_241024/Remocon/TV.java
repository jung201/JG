package homework.H_241024.Remocon;

public class TV implements Remocon{
	@Override
	public void powerOn() {
		System.out.println("TV  전원이 켜졌습니다");
	}
	
	public static void main(String[] args) {
		Remocon r = new TV();
		r.powerOn();
	}
}
