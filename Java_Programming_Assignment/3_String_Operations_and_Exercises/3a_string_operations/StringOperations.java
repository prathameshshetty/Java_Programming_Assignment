/*3a. Develop a java program for performing various string operations with different string
handling functions directed as follows:
String Creation and Basic Operations, Length and Character Access, String Comparison, String
Searching, Substring Operations , String Modification, Whitespace Handling, String Concatenation,
String Splitting, StringBuilder Demo, String Formatting , Validate Email with contains( ) and
startsWith() and endsWith()*/

public class StringOperations {
    public static void main(String[] args) {
        String str1 = "Hello";
        String str2 = "World";

        System.out.println("String 1: " + str1);
        System.out.println("String 2: " + str2);

        System.out.println("Length of str1: " + str1.length());
        System.out.println("Character at index 2: " + str1.charAt(2));

        System.out.println("Equals (case-sensitive): " + str1.equals(str2));
        System.out.println("Equals (ignore case): " + str1.equalsIgnoreCase("HELLO"));

        System.out.println("Index of 'l': " + str1.indexOf('l'));
        System.out.println("Substring (1 to 4): " + str1.substring(1, 4));

        String modified = str1.replace('l', 'x');
        System.out.println("Modified: " + modified);

        String withSpaces = "  Java  ";
        System.out.println("Trimmed: " + withSpaces.trim());

        System.out.println("Concatenated: " + str1.concat(" ").concat(str2));

        String[] splitStr = "Red,Green,Blue".split(",");
        System.out.println("Split:");
        for (String color : splitStr)
            System.out.println(color);

        StringBuilder sb = new StringBuilder("AIET");
        sb.append(" Rocks!");
        System.out.println("StringBuilder: " + sb);

        System.out.printf("Formatted: %s scored %d marks.%n", "Alice", 90);

        String email = "student@aiet.edu.in";
        System.out.println("Contains '@': " + email.contains("@"));
        System.out.println("Starts with 'student': " + email.startsWith("student"));
        System.out.println("Ends with '.in': " + email.endsWith(".in"));
    }
}
