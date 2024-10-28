package ch11.sec03.exam03;

public class ExceptionHandlingExample {

	public static void main(String[] args) {
		String[] array = { "100", "1oo", null, "200" };

		for (int i = 0; i <= array.length; i++) {
			try {
				int value = Integer.parseInt(array[i]);
				System.out.println("array[" + i + "] : " + value);

//			} catch (Exception e) {
//				System.out.println("배열 인덱스가 초과됨 : " + e.getMessage());

			} catch (ArrayIndexOutOfBoundsException e) {
				System.out.println("배열 인덱스가 초과됨 : " + e.getMessage());

			} catch (NumberFormatException | NullPointerException e) {
				System.out.println("데이터 확인 필요 : " + e.getMessage());

//			} catch (Exception e) {
//				System.out.println("다른 예외 : " + e.getMessage());

			}
		}

	}

}
