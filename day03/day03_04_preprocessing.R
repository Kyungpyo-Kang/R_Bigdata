# day03_04_preprocessing.R
## 데이터 전처리

install.packages('dplyr')
library(dplyr)

# dplyr이란?
# r에서 데이터 전처리(분석) 등을 하기 위한
# 기본적으로 필요한 패키지들을 모아둔 패키지


# 함수
# filter(): 행 추출
# select(): 열 추출
# mutate(): 열 추가
# group_by(): 그룹(집단)핑 기능
# subset(): 데이터 부분 선택

df_web <- read.csv('C:/R_1400_kpk/resource/source/전국도서관표준데이터.csv', header=T)
head(df_web)

df_lib_g <- subset(df_web, select = c('시도명', '시군구명', '도서관유형'))

# 구분한 데이터의 칼럼명을 영문으로 수정
colnames(df_lib_g ) <- c('sido', 'sigungu', 'type')
df_lib_g
head(df_lib_g)

# 그룹으로 분리하기
## sido로 그룹화하기
## group_by(데이터, 그룹key1, 그룹key2)
group_by(df_lib_g, sido)
count(group_by(df_lib_g, sido))

# 실습하기. df_lib_g를 sido, sigungu별 count하기

count(group_by(df_lib_g, sido, sigungu))

# 데이터 정렬하기
cnt <- count(group_by(df_lib_g, sido, sigungu))
cnt
order(cnt$n)
cnt[c(order(cnt$n)),]   #오름차순
cnt[c(order(-cnt$n)),]   #내림차순


lib_cnt <- cnt[c(order(-cnt$n)),]

# 데이터 저장하기
# write.csv(데이터, 경로)
write.csv(lib_cnt, 'C:/R_1400_kpk/resource/source/lib_cnt.csv')

