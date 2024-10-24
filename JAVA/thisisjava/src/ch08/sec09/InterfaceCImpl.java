package ch08.sec09;

public class InterfaceCImpl implements InterfaceC{
	@Override
	public void methodA() {
		System.out.println("InterfaceCimpl-methodA() 실행");
	}
	@Override
	public void methodB() {
		System.out.println("InterfaceCimpl-methodB() 실행");
	}
	@Override
	public void methodC() {
		System.out.println("InterfaceCimpl-methodC() 실행");
	}
}
