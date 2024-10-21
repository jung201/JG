package homework.H_240819;

public class H_240819_2 {

	public static void main(String[] args) {
//		왼쪽 switch문을 Expression (표현식)으로 변경해서 작성해 보세요.

//		String grade = "B";
//		int score1 = 0;
		
//			switch (grade) {
//				case "A":
//					score1 = 100;
//					break;
//				case "B":
//					int result = 100 - 20;
//					score1 = result;
//					break;
//				default:
//					score1 = 60;
//		}

		String grade = "B";

		int score2 = switch (grade) {
			case "A" -> 100;
			case "B" -> {
				int result = 100 - 20;
				yield result;
			}
			default -> 60;
			};
		System.out.println(grade);
	}

}
