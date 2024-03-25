
## Register (Processor Register)/ 레지스터

CPU가 요청을 처리하는데 필요한 데이터를 일시적으로 저장하는 기억장치

프로세서에 위치한 고속 메모리로 극히 소량의 데이터나 처리 중인 중간 결과와도 

### 종류
레지스터는 [[Register#용도|용도]]와 [[Register#정보|저장되는 정보]]의 종류에 따라 나뉜다.
#### 용도
1. 전용 레지스터 (특수목적 레지스터)
2. 범용 레지스터
#### 정보
1. 데이터 레지스터
2. 주소 레지스터
3. 상태 레지스터

#### 기타
1. 부동소수점 레지스터
2. 상수 레지스터
3. 명령 레지스터
4. 색인 레지스터

#### CPU Register
1. IR(Instruction Register) / 명령어 레지스터 : 현재 실행 중인 명령어를 저장
2. PC (Program Counter) / 프로그램 카운터 : 다음 수행할 명령어의 주소를 저장
3. MAR (Memory Address Register) : 
4. MBR (Memory Buffer Register) : 메모리와 주고받을 데이터 & 명령어를 저장
5. AC (Accumulator) / 누산기 : 연산 결과를 임시 저장
6. flasg register
7. stack pointer
8. base register


#### 메모리 계층 구조
![[Pasted image 20240325151819.png]]