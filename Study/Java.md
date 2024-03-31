
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


#### 문자열 여러 개 출력
- String과 +를 이용해 연결할 수 있으나 이는 여러 개의 임시 String 객체를 생성하고 결국 갈비지 컬렉터로 들어가기 때문에 비효율적이다.
- StringBuilder를 이용해 중첩을 한다.
- Buffer를 이용해 출력물들을 담아 한번에 내보낸다.

#### 데이터의 끝, EOF처리
- EOF : End Of File , 더 이상 읽을 수 있는 데이터가 없음을 나타냄
- BufferedReader 의 경우 : 내장되어 있는 EOF처리 함수가 없기 때문에 (br.readLine() != null)을 통해 직접 검사해야 한다.
	- txt파일 등의 경우 끝 부분이 null이라 정상 구동한다지만, IDE의 경우 끝문이 \\n인 경우가 대부분이라 \\n도 처리해줘야 한다. (.isBlank() 등 사용)
- Scanner 의 경우 : hasNext() 메소드를 이용해 검사한다.

#### Buffer
- BufferedReader : close() 메소드를 명시하지 않아도 Garbage Collector에 의해 내부 객체들이 자동으로 정리되지만 자원이 정리되기 전에 지속적으로 BufferedReader가 사용되면 정상적으로 읽히지 않습니다. 따라서, 주기적으로 사용하는 경우 close() 메소드를 사용해야한다.
- write() 메소드는 String형으로 출력하기 때문에 자료형이 다르다면 수정해야한다.