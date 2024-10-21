package homework.H_240814.copy;

public class H_240814_5 {

	public static void main(String[] args) {
		for ( int i = 0; i < 5; i++) {
			for ( int j = 0; j < 4 - i; j++) {
				System.out.print(" ");
			}	
			for ( int k = 0; k <= i; k++) {
				System.out.print("*");
			}
			System.out.println();
		}

	}

}
