// 3c.Q7. Write a Java Program for Shortening a string to a specified length and adds an ellipsis using user defined function truncate()

public class Truncate {
    public static String truncate(String str, int length) {
        return str.length() <= length ? str : str.substring(0, length) + "...";
    }

    public static void main(String[] args) {
        System.out.println(truncate("Artificial Intelligence Engineering", 10));
    }
}
