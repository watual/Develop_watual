
## OSI 7 계층

데이터 통신의 과정을 7개의 계층으로 분류한 모델
통신 절차마다 영역을 나누어 개발, 오류 해결 등을 독립적으로 시행한다.

L1~L3를 네트워크 지원 계층, L4를 전송 계층, L5~L7을 사용자 지원 계층으로 분류한다.
#### Physical Layer / 물리 계층 / L1
- 비트 단위의 데이터를 전기적, 광학적 신호로 변환하여 전송하는 역할을 합니다.
- 규칙 : Hub, Repeater / 단위 : bit
#### Data Link Layer / 데이터 링크 계층 / L2
- 네트워크 노드(기기) 간의 데이터 전송을 담당하며, 오류 검출 및 제어, 주소 할당 등을 수행합니다.
- 규칙 : MAC 주소 / 단위 : Frame
- 단위(PDU) : 프레임(Frame)
- 주요 프로토콜 : [HDLC](https://itwiki.kr/w/HDLC), [X.25](https://itwiki.kr/w/X.25 "X.25"), [Ethernet](https://itwiki.kr/index.php?title=Ethernet&action=edit&redlink=1 "Ethernet (없는 문서)"), [TokenRing](https://itwiki.kr/index.php?title=TokenRing&action=edit&redlink=1 "TokenRing (없는 문서)"), [DFFI](https://itwiki.kr/index.php?title=DFFI&action=edit&redlink=1 "DFFI (없는 문서)"), [FrameRelay](https://itwiki.kr/index.php?title=FrameRelay&action=edit&redlink=1 "FrameRelay (없는 문서)") 등
- 주요 장비 : [브리지](https://itwiki.kr/w/%EB%B8%8C%EB%A6%AC%EC%A7%80 "브리지")(Bridge), [L2 Switch](https://itwiki.kr/index.php?title=L2_Switch&action=edit&redlink=1 "L2 Switch (없는 문서)") 등
- 논리링크제어계층, 매체접근제어계층이라는 두 개의 부계층으로 나뉜다.
#### Network Layer / 네트워크 계층 / L3
- 데이터를 목적지까지 전달하는 경로를 결정합니다.
- 규칙 : IP / 단위 : Packet
- [[IP주소]]를 이용해 서로 다른 네트워크 간의 데이터를 교환한다.
- 동작 : packet, routing, forwarding
#### Transport Layer / 전송 계층 / L4
- 데이터의 전송을 관리하며, 오류 검출 및 복구, 흐름 제어를 수행합니다.
- 규칙 : TCP, UDP / 단위 : Segment
#### Session Layer / 세션 계층 / L5
- 통신 세션을 설정, 유지, 종료하는 역할을 합니다. 세션의 연결 및 관리가 이루어집니다.
- 규칙 : OS / 단위 : Data
- 통신 방식 : 단순(TV), 반이중(무전기), 전이중(전화)
#### Presentation Layer / 표현 계층 / L6
- 데이터의 형식을 변환하고, 암호화 및 복호화를 수행하는 역할을 합니다.
- 규칙 : JPG, MPEG / 단위 : Data
- encoding, decoding, metadata
#### Application Layer / 응용 계층 / L7
- 사용자와 직접 연결되는 계층으로, 이메일, 웹 브라우징 등의 응용 프로그램이 이 계층에 속합니다.
- 규칙 : FTP, HTTP, SMTP, Telnet / 단위 : Data

#### TCP/IP
TCP/IP 는 실제로 사용되는 프로토콜의 집합체로 4계층의 TCP 와 3계층의 IP 를 합쳐 부른다.

#### Tip
송신 과정을 캡슐화 , 수신 과정을 디캡슐화 라고 한다.