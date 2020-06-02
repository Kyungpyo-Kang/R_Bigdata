# day03_02_file.R
## 기본 R이 지원하지 않는 확장자를 가진 파일 읽어오기
## pdf, xls 등이 가능하다.
## doc, docx 등은 pdf나 xls로 변환 후에 사용해야 한다.

# 1. pdf 로드하기
install.packages('pdftools')
library('pdftools')
pdf1 <- pdf_text('C:/dev/movie_review_02.pdf')
pdf1

# 읽어온 데이터의 개행문자(줄바꿈) \n\r을 정제하기
pdf1
# strsplit(데이터, 조건) : 특정 조건으로 데이터를 자르는 것
txt_pdf <- strsplit(pdf1, '\r\n')


# 실습하기
# txt_pdf에서 비정형 데이터 ~~~ 데이터만 조회하기.
txt_pdf
class(txt_pdf)
txt_pdf <- txt_pdf[[1]]
txt_pdf[2]


# 실습하기
# 3번째와 4번째 데이터를 합쳐서 6번째 방에 저장
txt_pdf
txt_pdf[6] <- paste0(txt_pdf[3], txt_pdf[4])

# 3번째와 4번째 데이터 삭제하기
txt_pdf[c(-3,-4)]
txt_pdf <- txt_pdf[c(-3,-4)]
txt_pdf


# 데이터를 읽어들이면서 테이블 구조로 읽어들이기
# 데이터 자체가 테이블 구조로 되어있어야 함
# 정형이든 비정형이든 상관이 없음

mem1 <- read.table('https://raw.githubusercontent.com/luxdolorosa/data_set/master/etc/member_no_title.txt')

# 열 이름 부여
names(mem1) <- c('이름','성적','평균')
mem1

# 데이터 요약정보 확인
summary(mem1)

# 실습하기.
# mem1의 평균을 구하기
mem1[,'평균']
avg <- round(mean(mem1[,'평균']),2)
avg
# 실습하기
# mem1의 평균보다 높은 학생만 조회
temp <- mem1[,'평균'] > avg
mem1[temp,]

mem2 <- read.table('https://raw.githubusercontent.com/luxdolorosa/data_set/master/etc/member_yes_title.txt', header = T)
mem2

# 데이터에 noise(잡음)가 섞여있는 경우
mem3 <- read.table('https://raw.githubusercontent.com/luxdolorosa/data_set/master/etc/member_noise.txt', header = T, skip = 3)
mem3


# 특정한 구분자가 있는 데이터 읽기

mem4 <- read.table('https://raw.githubusercontent.com/luxdolorosa/data_set/master/etc/member_yes_sep1.txt', header = T, sep = ';')
mem4


mem5 <- read.table('https://raw.githubusercontent.com/luxdolorosa/data_set/master/etc/member_yes_sep2.txt', header = T, sep = ',')
mem5


# 조금 특별한 데이터를 읽는 방법
# Window os는 복사한 데이터를 clipboard라는
# 영역에 저장하고 있다.

read.table('clipboard', header = T, sep = ';')


read.table('clipboard', header = T)

read.csv('clipboard', sep = '\t', header = F)



mem4 <- read.table('https://raw.githubusercontent.com/luxdolorosa/data_set/master/etc/member_yes_NA.txt', header = T, sep = ',')

## 결측치 확인하기
mem4
is.na(mem4)
sum(is.na(mem4))
table(is.na(mem4))

summary(mem4)

# 결측치값 수정하기
mem4[is.na(mem4)] <- 0
mem4




