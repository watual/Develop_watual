import java.io.*;
import java.util.*;

public class Main {
    public static void main(String[] args) throws IOException {

        Scanner sc = new Scanner(System.in);

        int B = sc.nextInt();
        String N = sc.nextLine().trim(); // zzzzz
        int[] ju = new int[N.length()]; // {35, 35, 35, 35, 35}

        for (int i = 0; i < N.length(); i++) { // a+25 97+25 122>35부터 시작합니다~ A 65
            ju[i] = (int) N.charAt(i) - 87;
            // {10, 11, 12, 13, 14}
            // {a, b, c, d, e}
        }

        int cnt = 0;
        for (int i = 0; i < N.length(); i++) {
            cnt += (int) Math.pow(B, (N.length() - i - 1)) * ju[i];
        }
        System.out.print(cnt);
        sc.close();
    }
}