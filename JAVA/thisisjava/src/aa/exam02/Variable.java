package aa.exam02;

// #1. 클래스 생성 ( 정의 )
class AA {
    boolean m1;
    // 필드값 앞에 private를 붙여야함
    private int m2;
    double m3;
    String m4;

    // m2의 값을 수정하고 싶으면 set,get로 접근

    public void setM2(int m2) {
        this.m2 = m2;
    }

    public int getM2() {
        return m2;
    }

    void printValue() {
        System.out.println(m1); // false
        System.out.println(m2); // 0
        System.out.println(m3); // 0.0
        System.out.println(m4); // null: 객체를 가리키지 않고 있다.
    }

    void printVariable() {
        int k;
        k = 5;
        System.out.println(k); // 지역변수는 반드시 초기화하여야함
    }
}

public class Variable {
    public static void main(String[] args) {
        // #2. 클래스를 활용하여 객체 생성
        AA aa = new AA();
        // 필드값 수정 및 호출
        aa.setM2(2);
        aa.printValue();
        aa.printVariable();
    }
}
