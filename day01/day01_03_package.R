# day01_03_package.R
# 날짜 관련 패키지 이용하기

# 설치하기
install.packages('lubridate')

# 사용하기
library('lubridate')

# 현재 날짜 함수
now()

# date 변수에 현재 날짜와 시간 저장하기
date <- now()
date

# 년도만 출력하기
year(date)

# 실습하기. 월만 출력해주세요. month(날짜)
month(date)
# 실습하기. 일만 출력해주세요. day(날짜)
day(date)
# 실습하기. 요일만 출력해주세요. wday(날짜)
# ex) 일:1, 토:7
wday(date)


# 루브리데이트를 이용하여 날짜를 만들기
# ex) 1루 만들기
days(1)
date - days(1)

# 실습하기. date에서 3일을 빼주세요.
#           (date의 3일 전을 조회해주세요.)
# - 단, + 연산으로 처리해주세요.
days(-3)
date + days(-3)


# 실습하기. date에서 2주 후 날짜를 출력해주세요
# weeks(2)
date
date + weeks(2)
date + days(14)


# 실습하기. date의 월을 2월로 변경해주세요
# 1) date의 월을 조회하기
# 2) 1번에서 조회된 곳에 <- 데이터 입력
month(date)
month(date) <- 2
date































