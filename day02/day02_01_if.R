# day02_01_if.R

# 조건문
## 조건을 검사하여 참일 때와 거짓일 때 실행을
## 다르게 하는 방법


# if조건문

if(TRUE) {
  print("조건이 참이므로 실행한다.")
}

if(FALSE) {
  print('조건이 거짓이므로 실행이 되지 않는다.')
}

# x값에 따른 조건문 테스트
x <- 3
x < 2

# if-else 조건문
# 무조건 if 혹은 else가 실행이 된다.
if(x < 2) {
  print("x는 2보다 작습니다.")
} else { # if조건문이 거짓인 경우 실행
  print('x는 2보다 큽니다.')
}

# if-elseif-else 조건문
# x가 2와 같은 경우에만 조건을 추가하기
if(x < 2) {
  print("x는 2보다 작습니다.")
} else if(x == 2) {
  print("x는 2와 같습니다.")
  print("else if문은 무한으로 추가 가능합니다.")
} else if(x == 3) {
  print("x는 3과 같습니다.")
  print("else if문은 무한으로 추가 가능합니다.")
} else if(x == 4) {
  print("x는 4와 같습니다.")
  print("else if문은 무한으로 추가 가능합니다.")
} else { # if조건문이 거짓인 경우 실행
  print('x는 4보다 큽니다.')
}

# 실습하기
# x가 3의 배수이면 x 값의 제곱을 출력하고, 
# x가 3의 배수가 아니면 0을 출력하기.
x <- 3

if(x%%3 == 0) {
  temp <- x
  temp = temp*temp
  print(temp)
} else {
  print(0)
}

# ex) 짝수를 구해주세요.
#     2의 배수를 구해주세요.
#     홀수가 아닌 것을 구해주세요.
#     2로 나눈 나머지가 0인 것을 구해주세요

# 조금 특별한 조건문
# 삼항연산자와 비슷한 형태의 조건문
# ex) 삼항연산자=> 조건? 참:거짓
# ifelse(조건, 참 거짓)
x <- 4
ifelse(x%%3 ==0, x^2, 0)



# switch 조건문
# if문에 비해서 가독성이 좋음

x <- 'e'
switch (x,
  'a' = print('a class'),
  'b' = print('b class'),
  'e' = print('e class')
)
# index(id부분)에는 한글을 지양한다.
switch ('id',
  id = '홍길동',
  age = 105,
  job = '도사'
)


# 사용자로부터 입력을 받아
# 성적을 계산하는 프로그램 만들기

#score에 따른 성적 계산하기
# - 90점 이상이면 A
# - 80점 이상이면 B
# - 나머지는 C
grade <- ''
# - nmax = 1: 입력을 1개만 받기
score <- scan(nmax = 1)

if(score >= 90) {
  grade <- 'A'
} else if(score >= 80) {
  grade <- 'B'
} else {
  grade <- 'C'
}
sprintf("점수: %d", score)
sprintf("성적: %s", grade)
































