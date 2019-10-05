# nand2tetris
"밑바닥부터 만드는 컴퓨팅 시스템" 책에서 제공하는 과제의 풀이를 올려두는 공간입니다.  
* 원제: "The Elements of Computing Systems" by _Noam Nisan_ and _Shimon Schocken_  
* 정오표: https://docs.google.com/document/d/1VE1mJlddADycAT-jBJc4nNID1w_wiKCrmreaF1Z9sb4/edit  
* 공식 웹사이트: https://www.nand2tetris.org/

# Done
* 1장 불 논리
  - NAND 게이트만으로 다른 기본 논리 게이트들을 구현하기 (NOT, AND, OR/XOR, MUX, DMUX)
  - 다입력/멀티비트로 확장하기
* 2장 불 연산
  - 1장에서 구현한 논리 게이트들로부터 ALU (산술 논리 연산 장치) 완성하기
    + 반가산기
    + 전가산기
    + 가산기
    + 증분기
    + 산술 논리 연산 장치
    
# In-progress
* 3장 순차 논리
  - 플립플롭으로 1비트 레지스터 (비트) 구현하기
  - 1비트 레지스터로 16비트 레지스터 구현하기
  - 16비트 레지스터로 8-레지스터 메모리 (RAM8) 구현하기
  - 8-레지스터 메모리로 64-레지스터 메모리 (RAM64) 구현하기
  - 같은 방식으로 512, 4K, 16K-레지스터 메모리 (RAM512, 4K, 16K) 구현하기

# To-Do
* 4장 기계어
* 5장 컴퓨터 아키텍처
* 6장 어셈블러
* 7장 가상머신 I: 스택 산술
* 8장 가상머신 II: 프로그램 제어
* 9장 고수준 언어
* 10장 컴파일러 I: 구문 분석
* 11장 컴파일러 II: 코드 생성
* 12장 운영체제
