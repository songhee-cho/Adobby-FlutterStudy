### Lec 1.

Google이 가지고 있는 OS: Android OS, Chrome OS

Fuchsia OS를 개발하고자 함

- Why flutter?
    - Fuchsia OS: Zircon이라는 마이크로 커널을 기반으로 하고 있음
- kernel이란?
    - 하드웨어와 소프트웨어를 연결해주는 역할
        - micro kernel: Fuchsia OS - Zircon
        - monolithic kernel: Android OS - Linux
- Why is Google making Fuchsia?
    - 1) Zircon은 임베디드 응용프로그램에서 일반적으로 사용되는 소영 시스템용으로 설계된 little kernel의 파생물
    - 2) Zircon은 현대적 전화기와 고속의 프로세서를 갖춘 개인용 컴퓨터를 타겟으로 하고 있다
        - → Fuchsia OS를 모든 기기에서 보편적으로 사용하겠다
    - 3) 음성명령에 중점을 두고 개발됨
        - Android: 터치 디스플레이에 최적화되어 있음
        - Fuchsia: 어떤 환경에서도 즉각저긍로 음성 명령을 수행할 수 있게 설계됨
    - 4) 안드로이드의 파편화
        - 구글 *트레블* 프로젝트
            - 하지만, IOS에 비하면 업데이트 속도가 느림
        - 현재 Android의 경우에서는, 업데이트 시 주도권을 스마트폰 제조사가 쥐게 됨
    
- What is the flutter?
    - flutter: framework
    - Fuchsia의 사용자 인터페이스와 애플리케이션을 만들기 위해 사용
    - 크로스 플랫폼(안드로이드, IOS) 애플리케이션 개발
    - 인터페이스나 사용자 경험을 하나로 통일
    - Hummingbird: Flutter의 웹 프로젝트
- Fuchsia and Flutter
    - Dart
    

### Lec 2.

- SDK
    - Software Development Kit
    - 소스코드의 모음과 유틸리티
    - 구글이 제공
    

### Lec 3.

- Android studio, 에뮬레이터 설치
    - Virtual device로 Android 환경에서의 앱 구현 확인을 위해 필요
- Visual Studio Code(ide) 설치

### Lec 4.

### Lec 5.

- Flutter 상에서의 위젯
- Stateless widgets vs Stateful widgets
- Widget tree
- Widget
    - UI를 만들고 구성하는 모든 기본 단위 요소
    - 눈에 보이지 않는 요소들까지 위젯

### Lec 6.

실습

### Lec 7.

실습

### Lec 8.

실습
