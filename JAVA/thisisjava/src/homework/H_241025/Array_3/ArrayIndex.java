package homework.H_241025.Array_3;

public class ArrayIndex {
//	오늘의 자바 3번
//	배열의 크기를 벗어나는 경우에 발생되는 예외를 처리해 주세요. 
//	예외의 이름은 ArrayIndexOutOfBoundsException 입니다.
//	배열의 내용은 1,2,3,4,5 가 저장되었으며
//	인덱스 5는 사용할 수 없습니다 내용이 나오는 예외처리 상황을 만들어 보세요
	
    public static void main(String[] args) {
        int[] arr = {1, 2, 3, 4, 5};
        
        try {
        	System.out.println(arr[5]);
        } catch (ArrayIndexOutOfBoundsException a) {
        	System.out.println("인덱스 5는 사용할 수 없습니다");
        } finally {
        	System.out.println("프로그램 종료");
        }
        
    }
}


