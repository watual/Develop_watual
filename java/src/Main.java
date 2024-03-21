
import java.util.Scanner;

public class Main {
    public static void main(String[] args) throws Exception {

        double[] x1, y1, r1, x2, y2, r2, d1, r_sub, r_sum;
        Scanner sc = new Scanner(System.in);
        int[] ans;
        int count1;

        count1 = sc.nextInt();

        x1 = new double[count1];
        y1 = new double[count1];
        r1 = new double[count1];
        x2 = new double[count1];
        y2 = new double[count1];
        r2 = new double[count1];
        d1 = new double[count1];
        r_sub = new double[count1];
        r_sum = new double[count1];
        ans = new int[count1];
        


        for(int i=0;i<count1;i++){
            x1[i] = sc.nextDouble();
            y1[i] = sc.nextDouble();
            r1[i] = sc.nextDouble();
            x2[i] = sc.nextDouble();
            y2[i] = sc.nextDouble();
            r2[i] = sc.nextDouble();
            d1[i] = (Math.pow(x1[i]-x2[i],2)+Math.pow(y1[i]-y2[i],2)); //두 점 사이의 거리 제곱
            r_sub[i] = Math.pow( r1[i]-r2[i] , 2);
            r_sum[i] = Math.pow( r1[i]+r2[i] , 2);
            
            ans[i] = 0;
        }
        
        for(int i=0;i<count1;i++){

            if (r_sum[i]<d1[i] || d1[i]<r_sub[i] || ((d1[i]==0)&&(r_sub[i]>0))) {
                ans[i] = 0;
            }else if (r_sum[i] == d1[i] || (r_sub[i]==d1[i] && d1[i]>0)) {
                ans[i] = 1;
            }else if (r_sub[i]<d1[i] && d1[i]<r_sum[i]) {
                ans[i] = 2;
            }else if (d1[i]==0 && r_sub[i]==0 && r1[i]>0) {
                ans[i] = -1;
            }
            System.out.println(ans[i]);
        }
        
        sc.close();
    }
}