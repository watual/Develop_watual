
## Java

제어자(modifier)
- 접근 제어자 : public, protected, (default) , private
- static, final, abstract, native, transient, synchronized, volatile, strictfp

비교 연산자
 - && : 좌측값이 true면 우측값 반환, 좌측값이 false면 좌측값 반환
 - || : 좌측값이 true면 좌측값 반환, 좌측값이 false면 좌측값 반환

/r, /r/n, /n 출력 차이 발생, 원리 이해하기

#### 배열
- int\[ \] arry_x= new int\[length\];
- ArrayList\<type\> arry_x = new ArrayList\<type\>\[length\];

#### 입출력 시간 줄이기
- Java를 사용하고 있다면, `Scanner`와 `System.out.println` 대신 `BufferedReader`와 `BufferedWriter`를 사용할 수 있다. `BufferedWriter.flush`는 맨 마지막에 한 번만 하면 된다.
	- 입력은 readLine();이라는 메서드를 활용하는데, 여기서 반드시 주의해야할 점 2가지가 있다.
	
	- 첫번째는 readLine()시 리턴값을 String으로 고정되기에 String이 아닌 다른타입으로 입력을 받을려면 형변환을 꼭 해주어야한다는 점이다.
	
	- 두번째는 예외처리를 꼭 해주어야한다는 점이다. readLine을 할때마다 try & catch를 활용하여 예외처리를 해주어도 되지만 대개 throws IOException을 통하여 작업한다.
	
	- main 클래스 옆에 throws IOException를 작성한다.
	- \_public static void main(String\[\] args) throws IOException {}_
	
	- close() 함수는 내부적으로 flush()함수를 자동 호출한다.
	- flush() 는 버퍼의 데이터를 즉시 강제로 출력시킨다.
	
	- ex)
	- ```
```
BufferedReader br = new BufferedReader(new InputStreamReader(System.in));
BufferedWriter bw = new BufferedWriter(new OutputStreamWriter(System.out));
StringTokenizer st;
int n = Integer.parseInt(br.readLine());
for (int i = 0; i < n; i++) {
	st = new StringTokenizer(br.readLine());
	bw.write(Integer.parseInt(st.nextToken())+Integer.parseInt(st.nextToken())+"\n");
	//bw.flush();
}
bw.close();
```
