/*2 a. Develop a java program for performing various string operations with different string
handling functions directed as follows
String Creation and Basic Operations, Length and Character Access, String Comparison, String
Searching, Substring Operations , String Modification, Whitespace Handling, String
Concatenation, String Splitting, StringBuilder Demo, String Formatting , Validate Email with
contains( ) and startsWith() and endsWith()*/

public class StringOperations {
    public static void main(String[] args) {
        // String Creation and Basic Operations
        String str1 = "Hello";
        String str2 = "World";
        System.out.println("String 1: " + str1);
        System.out.println("String 2: " + str2);

        // Length and Character Access
        System.out.println("Length of str1: " + str1.length());
        System.out.println("Char at index 1 in str1: " + str1.charAt(1));

        // String Comparison
        String str3 = "hello";
        System.out.println("str1 equals str3? " + str1.equals(str3));
        System.out.println("str1 equalsIgnoreCase str3? " + str1.equalsIgnoreCase(str3));

        // String Searching
        System.out.println("Index of 'l' in str1: " + str1.indexOf('l'));
        System.out.println("Last index of 'l': " + str1.lastIndexOf('l'));

        // Substring Operations
        System.out.println("Substring from index 1 to 4: " + str1.substring(1, 4));

        // String Modification
        String str4 = "  Java Programming  ";
        System.out.println("Original: '" + str4 + "'");
        System.out.println("Trimmed: '" + str4.trim() + "'");
        System.out.println("Replaced 'a' with 'x': " + str4.replace('a', 'x'));

        // Whitespace Handling
        System.out.println("To upper case: " + str4.toUpperCase());
        System.out.println("To lower case: " + str4.toLowerCase());

        // String Concatenation
        String combined = str1.concat(" ").concat(str2);
        System.out.println("Concatenated: " + combined);

        // String Splitting
        String data = "Red,Green,Blue";
        String[] colors = data.split(",");
        System.out.println("Splitted colors:");
        for (String color : colors) {
            System.out.println(color);
        }

        // StringBuilder Demo
        StringBuilder sb = new StringBuilder("AIET");
        sb.append(" is a college");
        System.out.println("StringBuilder: " + sb.toString());

        // String Formatting
        int marks = 90;
        String name = "Alice";
        System.out.printf("%s scored %d marks.%n", name, marks);

        // Validate Email with contains(), startsWith(), endsWith()
        String email = "student@aiet.edu.in";
        System.out.println("Contains '@'? " + email.contains("@"));
        System.out.println("Starts with 'student'? " + email.startsWith("student"));
        System.out.println("Ends with '.edu.in'? " + email.endsWith(".edu.in"));
    }
}
