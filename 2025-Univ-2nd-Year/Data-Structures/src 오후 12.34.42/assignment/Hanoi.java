public class Hanoi {
    public static void main(String[] args) {
        System.out.println("원반이 3 개인 경우: ");
        hanoi(3, 'A', 'C', 'B');
        System.out.println("원반이 4 개인 경우: ");
        hanoi(4, 'A', 'C', 'B');
    }
    public static void hanoi(int n, char from, char to, char via) {
        if (n == 1) {
            System.out.println("Move Disk 1 from " + from + " to " + to);
        } else {
            hanoi(n -1, from, via, to);
            System.out.println("Move Disk " + n + " from " + from + " to " + to);
            hanoi(n - 1, via, to, from);
        }
    }
}
