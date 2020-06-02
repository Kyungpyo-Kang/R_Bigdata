# day03_05_crawling.R

install.packages('rvest')
library(rvest)

## - id는 #
## - class는 .

tour_rank <- read_html('https://en.wikipedia.org/wiki/World_Tourism_rankings')
tour_rank
tables <- html_nodes(tour_rank, '.wikitable')
# 세계국가 순위는 1번쨰 방에 저장되어있음
df <- html_table(tables[1])[[1]]
df

# 컬럼 정보 확인
str(df)

# rank, destination, 2018년도 자료만 따로 구성하기
df1 <- df[, c(1, 2, 3)]


# 컬럼명(열)의 이름이 너무 길어서 수정하기
colnames(df1) <- c('rank', 'des', 'tour')
head(df1)
str(df1)

# df1의 tour의 타입이 문자형이므로 수치형으로
# 변경하기

# million을 없애기
# million을 ''(공백)으로 변경하기.
# gsub(조건, 치환될 값, 데이터)

df1$tour
df1$tour <- gsub(' million', '', df1$tour)

df1

# 타입 확인하기
class(df1$tour)

# df1의 tour의 타입을 숫자형으로 변경하기.
df1$tour <- as.numeric(df1$tour)


# df1의 tour의 비율(ratio)을 추가하기
# 비율이란 전체 중에서 내가 차지하는 양
sum(df1$tour)
df1$tour / sum(df1$tour)
sum(df1$tour / sum(df1$tour)) # 전체 확인하기

temp <- round(df1$tour / sum(df1$tour), 2) *100
df1['ratio'] <- temp
df1

# barchar 그리기
barplot(df1$tour, names.arg = df1$des, col = 1:10)
barplot(df1$tour, names.arg = df1$des, col = rainbow(10))

# 비율을 나타낼 때에는 barplot의 형태보다는 
# 원형(pie) 형태가 더 좋은 형태이다.

pie(df1$tour)

# 실습하기.
# 색과 값의 이름을 지정하기

pie(df1$tour, col = rainbow(10), labels = df1$des)

# 라벨에 ratio를 같이 표기하기
ratio <- paste0(df1$des,'(',df1$ratio,'%',')')
pie(df1$tour, col = rainbow(10), labels = ratio)






















