# day04_05_visual.R
# ggplot: R은 ggplot 이전과 이후로 나뉜다.
# 헤들리 위컴 교수가 개발

install.packages('ggplot2')
library(ggplot2)
library(dbplyr)
library(tidyverse)

#  내장데이터 이용하기
diamonds

# ggplot은 데이터와 미학적 요소로 나뉜다.
# - ggplot() : 데이터를 정의
# - aes(aesthetics)  : 화면에 그려지는 방식
ggplot(diamonds, aes(x = color)) + geom_bar()

ggplot(diamonds, aes(x = clarity, y = price)) + geom_bar(stat = 'identity')

# 그룹화해서 평균 가격을 만들어서 시각화하기
diamonds %>% group_by(clarity) %>%
  summarise(mean_price=mean(price)) %>%
  ggplot(aes(x = clarity, y = mean_price)) +
  geom_bar(stat = 'identity')


# 산점도를 이용하여 다이아몬드 크기에 따른 가격을 그려보기
diamonds %>%
  ggplot(aes(x = carat, y = price, color=clarity)) +
  geom_point() +
  geom_smooth()

# ggplot의 상속
# - ggplot()에서 정의한 내용은 전체에 상속된다.
# - 추가되는 레이어에서 정의 내용은 상속되지 않는다.

diamonds %>%
  ggplot(aes(x = carat, y = price)) +
  geom_point(aes(color=clarity)) +
  geom_smooth()




