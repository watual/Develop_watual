
# TCP/IP / TCP/IP Update

**TCP/IP** 는 TCP 프로토콜과 IP 프로토콜을 아울러 지칭하는 용어이다. **TCP** 프로토콜은 **신뢰성 있고 무결성을 보장하는 연결을 통해 데이터를 안전하게 전달해주는 전송 프로토콜**이고, **IP** 프로토콜은 **패킷들을 가장 효율적인 방법으로 최종 목적지로 전송하기 위해 필요한 프로토콜**이다.

이전엔 TCP/IP 4계층이였다가 1계층이 데이터 링크 계층에서 물리 계층과 데이터 링크 계층 2개로 나뉘며 5계층이 되었다. 이를 TCP/IP Update 라고 칭한다.

#### Physical Layer / 물리 계층 / L1
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
#### Application Layer / 응용 계층 / L5
- 통신 세션을 설정, 유지, 종료하는 역할을 합니다. 세션의 연결 및 관리가 이루어집니다.
- 규칙 : OS / 단위 : Data
- 통신 방식 : 단순(TV), 반이중(무전기), 전이중(전화)