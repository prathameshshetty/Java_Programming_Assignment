// 3c.Q6. Write a Java Program for Capitalizing the first letter of each word. using user defined function capitalizeWords()

public class CapitalizeWords {
    public static String capitalizeWords(String str) {
        String[] words = str.trim().split("\\s+");
        StringBuilder sb = new StringBuilder();
        for (String word : words) {
            sb.append(Character.toUpperCase(word.charAt(0)))
                    .append(word.substring(1).toLowerCase()).append(" ");
        }
        return sb.toString().trim();
    }

    public static void main(String[] args) {
        System.out.println(capitalizeWords("hello world from java"));
    }
}
