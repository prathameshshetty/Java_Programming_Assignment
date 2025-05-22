// 3b.Q4. Write a Java Program for Checking if a string reads the same backward as forward (ignoring case and punctuation) using user defined function isPalindrome()

public class IsPalindrome {
    public static boolean isPalindrome(String str) {
        String clean = str.replaceAll("[^a-zA-Z]", "").toLowerCase();
        return clean.equals(new StringBuilder(clean).reverse().toString());
    }

    public static void main(String[] args) {
        System.out.println("Is palindrome: " + isPalindrome("Madam, I'm Adam"));
    }
}
