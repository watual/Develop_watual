
CPU내부구조 , 주기억장치 , 보조기억장치
MMU , CU , CACHE Memory(L1) , Register , MAR , PC , IR , MBR , AC
DRAM , L2 , L3 CACHE Memory , SRAM , HDD , SSD , CPU
Intel 코어 i5-13600K 랩터레이크  5.10GHz 14코어
하버드 구조 , 폰노이만 구조
CU - Scheduling
Preemptive , Non-Preemptive Scheduling
Priority Scheduling , Round Robin , Multilevel-Queue
FCFS(First Come , First Serve) , Convoy Effect , SJF(Shorted Job First) , HRN(Highest Response-ratio Next)
시간 지역성 , 공간 지역성 , 캐시히트 , 캐시미스 , 캐시매핑
직접매핑 , 연관매핑 , 집한연관매핑
메모리 할당 , 연속할당 , 불연속할당
고정분할방식 , 가변분할방식 , 페이징 , 세그멘테이션 , 페이지드세그멘테이션
페이지교체 알고리즘 , 오프라인 알고리즘 , 시간기반 알고리즘 , 빈도기반 알고리즘
FIFO(First In First Out) , LRU(Least Recently Used) , NUR(Not Used Recently) , LFU(Leaste Frequently Used)
Waiting Queue , Job Queue , Ready Queue , Device Queuepu
TSS(Time-Sharing System)
long term scheduler , medium term scheduler , short term scheduler
job scheduler , cpu scheduler , device scheduler
Swapping(주-보조 교환) , swap out , swap in , swap device , backing store
Metadata , PCB(Process Control Block)
context switching , dispatcher
프로세스의 메모리 구조 , code(text) , data , heap , stack , 
BSS(Blcok Stated Symbol) , LIFO(Last In First Out) , GC(Garbage Collector) , PCB , process management
kernel , 인터프리터
쓰레드(thread) , 교착상태 , thread pool , Fork Join Thread Pool
IPC , LPC , 공유 메모리
동시성(Concurrency) , 병렬성(Parallelism)
[[File System]] , Database
database schema , metadata
DBS(Database System) , DBMS(Database Management System) , DB(Database) , System Catalog
계층 DBMS , 네트워크 DBMS , [[DB (Database)|관계 DBMS]] , 객체 지향 DBMS , 객체 관계 DBMS
DDL(Data Definition Language) , DML(Data Manipulation Language) , DCL(Data Control Language) , TCL(Transaction Control Language) , procedural language , non-procedural language
기작성 트랜잭션(canned transaction) , DBA(Database Administrator)
DBMS-relation(table), record, tuple(row), attribute(column), domain , 차수(degree) , cardinality
SQL , NoSQL
원자성(Atomicity) , 일관성(Consistency) , 독립성(Isolation) , 지속성(Durability)
Oracle , MySQL , PostgreSQL , MariaDB , SQLite
MongoDB , Redis , DynamoDB , HBase , Neo4j
bit, byte, ASCII , Unicode , UTF-8 , bitmap , vector , PCM(Pulse Code Modulation) , WAV(Waveform Audio File Format) , AIFF(Audio Interchange File Format) , AVI(Audio Video Interleave) , MP4(MPEG-4 Part 14) , MKV(Matroska)
선형/비선형 자료구조
Array , LinkedList , ArrayList(Vector) , Queue , Stack , Deque(Double Ended Queue) , Hash , Set
enqueue(), add(), dequeue(), poll(), push(), pop(), peek(), isEmpty() , collision 현상 , 

[[OSI 7#TCP/IP는 4계층 TCP와 3계층의 IP를 합쳐 부르는 용어다.|TCP/IP]] , [[OSI 7]]  , 계층 , 물리 계층(Physical Layer) , 데이터링크 계층(Data Link) , 네트워크 계층(Network) , 전송 계층(Transport) , 세션 계층(Session) , 표현 계층(Presentation) , 응용 계층(Application)
DNS(도메인 관리), DHCP(IP할당), NTP(시간 관리)


CRUD
공간 복잡도, 시간 복잡도
Big-O, Big-Ω, Big-θ, O(1), O(log n), O(n), O(n^2), O(2^n)