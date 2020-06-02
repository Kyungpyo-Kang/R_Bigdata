# day04_04_visual.R
## - 데이터 시각화 예제

cars

# 기초통계
min(cars$speed)
max(cars$speed)
mean(cars$speed) # 평균
median(cars$speed) # 중앙값
summary(cars)

# 사분 범위 : 자료를 4등분한 위치에 있는 값
quantile(cars$speed)

# 시각화로 데이터 보기
# 산포도 : 데이터가 어떻게 분포가 되어있는지
# plot(x좌표, y좌표)
plot(1,1)

# 실습하기. plot을 이용하여
# cars 데이터에서 speed에 따른 dist(제동거리)
# 를 도표로 그리기
plot(cars$speed, cars$dist)

# x축과 y축의 이름(label) 부여하기
plot(cars$speed, cars$dist, xlab = 'Speed', ylab = 'Distance')

# 데이터를 표시하는 방법 변경
plot(cars$speed, cars$dist, type = 'p') # point
plot(cars$speed, cars$dist, type = 'l') # line
plot(cars$speed, cars$dist, type = 'b') # both

# bar plot() : 막대 그래프
# - 표현 값에 비례하여 높이와 길이를 가지는 그래프
# - 값의 비교를 위해서 쓰임

mtcars$gear
table(mtcars$gear)
barplot(table(mtcars$gear))

# 실습하기. pipe를 이용한 문법으로 작성

mtcars$gear %>% table() %>% barplot()



# 실습하기.
# 핫도그 데이터를 가져오기
url <- 'https://raw.githubusercontent.com/luxdolorosa/data_set/master/hot_dog/hot-dog-contest-winners.csv'
hotdogs <- read.csv(url)
hotdogs
str(hotdogs)


# 실습하기. 
# 핫도그 데이터를 이용하여
# 막대그래프 그려주기.
# 비교값은 먹은 갯수. Dogs.eaten
hotdogs$Dogs.eaten %>% barplot()


# 실습하기. 
# 년도별, 먹은 갯수를 산포도를 이용하여 그리기
plot(hotdogs$Year, hotdogs$Dogs.eaten)

# 실습하기. 국가 별 우승 횟수를 
# barplot을 이용하여 그리기
hotdogs$Country %>% 
  table() %>% 
  barplot(col=rainbow(4))

# histogram(): 빈도 수 시각화
# 구간 별로 보고싶을 때
c(1,1,2) %>%
hist()
c(1,2,3,4,10) %>% hist()

cars$speed %>% hist()

# pie: 원 그래프. 전체에 대한 각 부분의 비율
# - data_set에서 banana 데이터를 불러오기\
url <- 'https://raw.githubusercontent.com/luxdolorosa/data_set/master/banana/banana.csv'
banana <- read.csv(url, header = F)
colnames(banana) <- c('Country', 'Banana')
banana

pie(x = banana$Banana, labels = banana$Country)


# 핫도그 데이터 중 우승국가 데이터로 pie 그리기
hotdogs$Country %>% table() %>% pie()
















