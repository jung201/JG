package ch02.sec06;

public class TextBlockExample {

	public static void main(String[] args) {
		String str1 = "" +
				"{\n" + 
				"\t\"id\" : \"winter\",\n" + 
				"\t\"name\" : \"눈송이\"\n" + 
				"}";
				
		// """ Java 13
		String str2 = """
			{
				"id" : "winter",
				"name" : "눈송이"
			}
			""";
		System.out.println(str1);		// 줄바꿈, 탭, "id" : "winter" 줄바꿈, 탭 "name" : "눈송이"
		System.out.println("-------------------------------------");
		System.out.println(str2);
		System.out.println("-------------------------------------");
		String str = """
		나는 자바를 \
		학습합니다.
		나는 자바 고수가 될 겁니다.	
				""";
		// """에서 \는 줄바꿈을 하지 않고 이어서 작성하고 싶을때 사용, 
		System.out.println(str);
	}

}
