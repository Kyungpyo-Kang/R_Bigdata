# day01_02_type
# 데이터 타입

# 데이터에는 타입이라는 것이 존재한다.
# 문자, 숫자(정수, 실수), 논리
# 정수: 정확히 나누어 떨어지는 수
# 실수: 정확한 숫자

# 1. 문자형: "따옴표로 묶여있는 형태"
txt <- "we can do it!"
txt
# 2. 숫자형
num <- 20000
num
# 3. date1이라는 변수에 2020-04-04 값을 넣어주세요
date1 <- '2020-04-04'
date1

# 자료형 확인하기
# class(), typeof()

class(txt)
class(num)
typeof(num)
class(date1)

# r에 포함된 기본 함수로 date1을 날짜로 변경해보기
class(as.Date(date1))
typeof(as.Date(date1))

date2 <- '2020-04-04'
date3 <- '2020-04-30'

# 날짜형태로 변경 이후에 연산해보기
as.Date(date2) - as.Date(date3)

# 대한민국 정부 표준 날짜표기법
'2020. 04. 04.'
# 미국 표준 날짜표기법
'04/04/2020'



















