package aa.exam01;

// #1. 클래스의 구성 ( 정의 ) : 붕어빵 기계
class AA {
    int m = 3;

    void print() {
        System.out.println("객체 생성 및 활용");
    }
}

public class Do_it {
    public static void main(String[] args) {
        // #2. 클래스로부터 객체 생성 : 붕어빵
        AA a = new AA();

        // #3. 클래스 멤버 활용 ( 필드 활용 : 필드에 값을 읽기/쓰기, 메서드를 활용 : 메서드 호출 ) : 붕어빵을 먹기
        a.m = 5;
        System.out.println(a.m); // 5
        a.print(); // 객체 생성 및 활용

    }
}
