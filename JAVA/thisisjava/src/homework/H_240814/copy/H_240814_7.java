package homework.H_240814.copy;

public class H_240814_7 {

	public static void main(String[] args) {
		System.out.println("일\t월\t화\t수\t목\t금\t토");
		int day = 0;
		for (int i = 0; i < 5; i++) {	// 5주
			for (int j = 0; j < 7; j++) {	// 7일
				if (day <= 30) {
					++day;
					System.out.print(day + "\t");
				}	
				
			}	System.out.println();	
			
		}
		
	}

}
