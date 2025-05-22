// 3b.Q5. Write a Java Program for Eliminating all whitespace characters from a string using user defined function removeWhitespace()

public class RemoveWhitespace {
    public static String removeWhitespace(String str) {
        return str.replaceAll("\\s+", "");
    }

    public static void main(String[] args) {
        System.out.println("Without whitespace: " + removeWhitespace(" A  I  E T "));
    }
}
