import java.util.Scanner;

public class Main {
    public static void main(String[] args) {

        final int board_width = 10;
        final int board_height = board_width;

        int i=0, j=0, i_print=0, i1=0, i2=0, i3=0;
        int i_break=0;
        int[] board_ori = {0,1,2,3,4,5,6,7,8,9};
        int[] board = {0,1,2,3,4,5,6,7,8,9};

        while(i1< 10*9*8*7*6*5*4*3*2*1){
            /* n의 자릿수는 [거리=높이] 값이 있으면 안된다.
            거리=높이 > n과 자릿수 차이=값의 차이
            
            한자리에 하나의 수만 뽑으면
             > 어차피 10 by 10에 10개라 [행열 중복 x조건]이 만족 
            그렇다면 0~9를 배열에 넣고 순서만 바꾸면서
            [자릿수 거리 차이=값 차이]이 아닌 조건만 충족한걸 찾는다!
            0123456789 ori  --               
            0123456798 ori, n&n-1
            0123456879 ori, n-1&n-2
            0123456897 ori, n-1&n-2, n&n-1   
            0123456978 ori, n&n-2, 
            0123456987 ori, 
            0123457689 ori, n-2&n-3 
            0123457698 ori, n-2&n-3, n&n-1
            0123457869 ori, n-2&n-3, n-1&n-2
            0123457896 ori, n-2&n-3, n-1&n-2, n&n-1
            0123457968 ori, n-2&n-3, n-2&n
            0123457986 ori, n-2&n-3, n-2&n, n&n-1
            0123458679 
            0123458697
            0123458769
            0123458796
             
        
            [1][2]
            [2][1]
            [1][2][3]
            [1][3][2]
            [2][1][3]
            [2][3][1]
            [3][1][2]
            [3][2][1]
            [1][2][3][4]
            [1][2][4][3]
            [1][3][2][4]
            [1][3][4][2]...

            시간 복잡도 n!
            */
            //자릿수 교체
            if(i3>=i2){
                while(){

                }
                i2++;
                i3=0;
            }
            i3++;
            int i4 = 0;
            while(i4<i2){
                board[i2]

                i4++;
            }

            //조건 검사 : 자릿수 거리 차이[i1,i2차이]=값 차이[board[i1],board[i2]차이]
            //검사 횟수 : (n+1)*n/2 > 시간 복잡도 n^2
            while(i<board_width){
                while(i_break<1 && j<board_width){
                    if(i-j == board[i]-board[j]){
                        i_break=1;
                    }else {
                        i_print=1;
                    }
                    j++;
                }
                j=0;
                i_break=0;
                i++;
            }
            //출력
            while(i_print>0){
                System.out.print(board[i]);
                i++;
                if( i > board_width-1 ){
                    System.out.println("$");
                    i=0;
                    i_print=0;
                }
            }
            //반복 실행 특정인자 수정
            board = board_ori;
            i1++;
        }
    }
}
