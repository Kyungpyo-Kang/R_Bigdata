# day01_01_hello
# 한글이 깨진다면 해당 파일을 editplus 등의 
# 파일 에디터로 열기

# r에게 hello world라고 출력하라고 명령하기
# ctrl + enter: 현재 라인을 실행한 후에 
#               실행할 수 있는 다음 라인으로 이동
# alt + enter: 현재 라인을 실행한 후에 
#              현재 라인에서 대기

# 1. print() 함수를 이용하기
print("hello world!")

# 2. 값을 그대로 호출
"hello world!"





# r에게 출력을 하는데 모양(포맷)을 맞춰서 출력하라고 하기
# ex) 000원 결제해주세요.

sprintf("%d원 결제해주세요", 5000)


# 다음의 2가지가 어떻게 다를까요?
print(5000+5000)
print("5000"+"5000")

# 기본연산
## 사칙연산
1 + 1
2 - 2
3 * 3
4 / 4

7 / 3       # 기본 / 연산은 몫과 나머지를 함께 구한다.
      

7 %/% 3     # 몫만 구하기
7 %% 3      # 나머지만 구하기


# ex) 어떤 수가 짝수인지 구하는 방법은?
# 어떤 수를 2로 나눈 나머지(mod)를 구할 때
# 나머지가 0이면 짝수, 1이면 홀수
7 %% 2

## 비교 연산
### 무조건 결과 값이 참(TRUE), 거짓(FALSE)으로 응답
### 조건문, 반복문에서 많이 사용
10 == 10 # 같은가?
10 != 10 # 다른가?
10 > 10
10 >= 10


#실습하기
#7이 짝수인지를 r을 통해서 물어보세요

7 %% 2 == 0
(7 %% 2) == 0

# 변수 : 변하는 수(저장공간)
#        변한다는 의미는 프로그래밍에 따라서 변수의 값이
#        변경이 된다는 의미

# 변수는 영문 소문자로만 만들 것.

result <- 7 %% 2 # 가장 많이 사용한다.
result = 100 
50 -> result

result == 0

## 논리(참, 거짓) 연산자
# 역(반대) : !
!TRUE
!FALSE
# 또는(둘 중에 하나라도 참이면 참) : |
# ex) |(or) ||(or) 앞쪽의 조건만 검사한다.
TRUE | TRUE
TRUE | FALSE
FALSE | TRUE
FALSE | FALSE

# 그리고 and(둘 다 참이어야 참): &
TRUE & TRUE
TRUE & FALSE
FALSE  & TRUE
FALSE & FALSE













