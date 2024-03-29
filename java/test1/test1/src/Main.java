import java.util.Scanner;

public class Main {
    public static final int board_width = 10;
    public static final int board_height = 10;
    public static void main(String[] args) {

        int i=0, i_out=0, i1=0;
        int[] board = {0,1,2,3,4,5,6,7,8,9};

        while(i1<10000){
            /* n의 자릿수는 [거리=높이] 값이 있으면 안된다.
            거리=높이 > n과 자릿수 차이=값의 차이
            
            한자리에 하나의 수만 뽑으면
             > 어차피 10 by 10에 10개라 [행열 중복 x조건]이 만족 
            그렇다면 0~9를 배열에 넣고 순서만 바꾸면서
            [자릿수 거리 차이=값 차이]이 아닌 조건만 충족한걸 찾는다!
            */
            //자릿수 교체
            

            //출력
            if(i_out>0){
                System.out.print(board[i]);
                i++;
                if( i > board_width-1 ){
                    i=0;
                    i_out=1;
                }
            }
            if(i1%10 == 0){
                System.out.println("$");
            }

            //반복 실행 특정인자 수정
            i1++;
            i_out=0;
        }
    }
}
