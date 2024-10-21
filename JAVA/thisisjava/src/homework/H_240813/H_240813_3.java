package homework.H_240813;

public class H_240813_3 {

	public static void main(String[] args) {
		int i = 5, j = 0;
		j = i++;
		System.out.println("j=i++; 실행 후, i=" + i +", j="+ j);
		
		i = 5;
		j = 0;
		
		j = ++i;
		System.out.println("j = ++i; 실행 후, i = " + i + ", j = "+ j);
	}

}
