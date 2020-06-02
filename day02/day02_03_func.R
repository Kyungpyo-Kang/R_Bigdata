# day02_03_func.R
## 함수란? sum(), mean()처럼 자주 사용되는 작업을
## 사전에 미리 만들어두어서 사용하기 편리하게 
## 묶어둔 명령어 모음

# sum()은 내장함수로, 전달받은 값을 모두 더해준다.

# sum()이라는 내장함수가 존재하지 않는다면?
# 사용자 정의 함수를 만들어줘야 한다.
addNum <- function(num) {
  total <- 0
  for (i in num) {
    total = total + i
  }
  return(total)
}

addNum(c(1,2))


# 사용자 정의 함수 만들기2
## 실습

fruit_func <- function(fruit) {
  rate = ''
  if(fruit == '바나나') {
    rate = 'Very Good'
  } else if(fruit == '사과') {
    rate = 'Good'
  } else {
    rate = 'Soso...'
  }
  return(rate)
}

# 아래의 호출이 가능하도록 함수를 완성시키기
fruit_func('바나나')  # Very Good
fruit_func('사과')  # Good
fruit_func('배')  # Soso...
fruit_func('감')  # Soso...



