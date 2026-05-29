# 📚 BookNest - 온라인 주문 및 재고관리 시스템- 온라인 서점 규보문고 
<img width="745" height="340" alt="image" src="https://github.com/user-attachments/assets/65ef77fa-bd54-426e-be41-f99040e0b8ac" />

## 프로젝트 소개
기존 온라인 북스토어 웹사이트를 참고해서 도서 조회, 장바구니, 주문, 마이페이지 등의 기능을 제공하는 온라인 북스토어입니다.
이 프로젝트에서는 일반 회원가입 뿐만 아니라 네이버, 카카오톡 계정과 연동해서 회원가입, 결제를 진행할 수 있습니다. 
그리고 기존 웹사이트 구조를 유지하면서, 사용자 참여를 높이기 위한 **출석 포인트 시스템**을 추가하고, 적립된 포인트를 실제 **결제 할인**에 사용할 수 있도록 구현했습니다.

기존 사이트에 기능을 단순 추가하는 것이 아니라,  
**프론트엔드 UI, 백엔드 로직, 데이터베이스 연동까지 함께 고려하여 구현**한 점이 핵심입니다.

## 개발 정보
- **프로젝트명**: BookNest
- **형태**: 팀 프로젝트
- **개발 인원**: 5명
- **개발 환경**: Python, Flask, HTML, MySQL , OPENCV

<img width="517" height="115" alt="image" src="https://github.com/user-attachments/assets/2ff40ec9-8499-4767-923b-3ed34a6f6ed3" />


## 통신 및 기능 흐름도
<img width="586" height="400" alt="image" src="https://github.com/user-attachments/assets/fa1d5a74-b3ec-4e69-ba1d-6ac0dc847517" />


## 전자 회로도
<img width="793" height="424" alt="image" src="https://github.com/user-attachments/assets/1aa897c5-5e47-45c0-81fe-75f57651bf1a" />

## 순서도
https://app.diagrams.net/#G1pJ-QzU2wL8Nq2nZNt2QX4CS_DeTYeUAY#%7B%22pageId%22%3A%22oHe_NG4VEoslh1zr8APn%22%7D


## 담당 역할
저는 아래 기능들을 중심으로 구현 및 수정했습니다.

### 소프트웨어
- 출석체크 기능 구현
- 1일 1회 출석 시 100포인트 지급 로직 구현
- 7일 연속 출석 시 500포인트 추가 지급 기능 구현
- 출석 스탬프판 UI 구현
- 결제 페이지에서 보유 포인트 사용 기능 구현
- 장바구니 결제 흐름에서도 포인트 사용 가능하도록 연동
- 주문 취소 시 사용 포인트 복구 처리
- 출석/포인트 관련 데이터베이스 테이블 설계 및 수정

### 하드웨어
- 목재 구조물 제작 및 조립 보조
- 컨베이어 및 회전 구조물 설치 보조
- 시스템 구성을 위한 부품 배치 및 고정 작업 수행
- 센서/카메라/모터 장착 과정 보조
- 배선 정리 및 회로 연결 보조
- 하드웨어와 소프트웨어 통합 테스트 참여
---
## 하드웨어 제작 및 시스템 구성
프로젝트의 하드웨어 제작 과정에 참여했습니다.
<img width="366" height="660" alt="image" src="https://github.com/user-attachments/assets/498c390c-7727-40a9-bee7-283121918153" />

- 목재 재료를 이용해 시스템 본체 프레임을 제작
- 컨베이어 벨트 구조와 회전판 구조를 조립
- 모터와 구동부가 안정적으로 작동할 수 있도록 지지 구조 보강
- 상단부 전자부품 및 배선 연결 보조
- 센서 및 인식 장치가 동작할 수 있도록 장착 위치 조정
- 실제 동작 테스트를 통해 구조적 안정성과 구동 흐름을 점검


## 고객 서버에서 맡은 주요 기능

### 1. 출석체크 기능
<img width="1109" height="135" alt="image" src="https://github.com/user-attachments/assets/6417e6c4-3b9c-4208-942f-883cb9af612d" />

<img width="448" height="183" alt="image" src="https://github.com/user-attachments/assets/3c82c735-6b47-47c9-b627-f33a2d5fe24e" />

- 사용자는 하루에 1번 출석할 수 있습니다.
- 출석 시 100포인트가 자동으로 적립됩니다.
- 중복 출석을 방지하도록 처리했습니다.

### 2. 연속 출석 보너스
- 7일 연속 출석 시 추가로 500포인트를 지급합니다.
- 연속 출석이 끊기면 누적 상태가 초기화되며,
  다시 출석을 시작하면 보너스 예정일도 새로 계산되도록 구현했습니다.

### 3. 출석 스탬프판
<img width="921" height="940" alt="image" src="https://github.com/user-attachments/assets/13012d44-9cf1-4897-8c0b-c708808d2cf9" />

- 사용자가 현재까지의 출석 진행 상황을 한눈에 확인할 수 있도록 시각화했습니다.
- 다음 보너스 지급 예정일 및 진행 상태를 확인할 수 있도록 구성했습니다.

### 4. 포인트 결제 연동
<img width="335" height="157" alt="image" src="https://github.com/user-attachments/assets/610a6e18-5a01-4a41-948c-e93fe547b298" />

- 사용자가 보유한 포인트를 결제 페이지에서 직접 사용할 수 있습니다.
- 일부 포인트 사용 / 전액 사용 기능을 반영했습니다.
- 사용 포인트에 따라 최종 결제 금액이 자동 계산되도록 구현했습니다.

### 5. 주문 취소 시 포인트 복구
- 결제할 때 사용한 포인트가 있다면,
  주문 취소 시 해당 포인트가 다시 회원 포인트로 복구되도록 처리했습니다.

