// 3c.Q8. Write a Java Program for Verifying if a string contains only numeric characters using user defined function isNumeric()

public class IsNumeric {
    public static boolean isNumeric(String str) {
        return str.matches("\\d+");
    }

    public static void main(String[] args) {
        System.out.println("Is numeric: " + isNumeric("123456"));
    }
}
