package AA;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Random;
import java.util.Set;

public class lotto {

	public static void main(String[] args) {
		
	int[] lotto = new int[6];		
		
		for (int i = 0; i < 6 ; i++) {
			lotto[i]= (int) (Math.random() * 9) + 1;
			
//			for(int j = 0; j < i; j++) {
//				if(lotto[i] == lotto[j]) {
//					i--;
//					break;
//				}
//			}
		} 
		System.out.println(Arrays.toString(lotto));
		
		// HashSet을 사용해 중복 없는 숫자를 저장.
		// Random 클래스를 사용해 1부터 45까지의 숫자를 무작위로 생성
		// 로또 번호를 배열로 변환 후 정렬하여 출력.
		
        // 로또 번호는 1부터 45까지, 중복 없이 6개를 선택
        Set<Integer> lottoNumbers = new HashSet<>();
        Random random = new Random();

        while (lottoNumbers.size() < 6) {
            int number = random.nextInt(45) + 1;  // 1부터 45까지의 숫자 생성
            lottoNumbers.add(number);  // 중복을 방지하는 Set 사용
        }

        // Set을 배열로 변환 후 정렬
        Integer[] lottoArray = lottoNumbers.toArray(new Integer[0]);
        Arrays.sort(lottoArray);

        // 결과 출력
        System.out.println(Arrays.toString(lottoArray));
		
	}
}