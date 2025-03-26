// 자료구조 6064 과제1 60241996 김민준
import java.util.Scanner;

public class DigitCheck {
    public static int countNum (int num) {
        if (num < 10) return 1;
        return 1 + countNum(num / 10);
    }
    public static int digitNum (int num) {
        if (num < 10) return num;
        return (num % 10) + digitNum(num / 10);
    }
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);
        System.out.print("숫자(정수)를 입력하시오: ");
        int number = sc.nextInt();

        System.out.println(number + "의 자릿수: " + countNum(number));

        System.out.println(number + "의 각 자릿수 합: " + digitNum(number));

        sc.close();
    }
}
