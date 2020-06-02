# day03_03_file

read.table('https://raw.githubusercontent.com/luxdolorosa/data_set/master/etc/member_yes_sep2.txt', header = T, sep=',')

# read.csv는 read.table에서 sep=','와 header=T 옵션이
# 기본인 함수
read.csv('https://raw.githubusercontent.com/luxdolorosa/data_set/master/etc/member_yes_sep2.txt')




fruit1 <- read.csv('https://raw.githubusercontent.com/luxdolorosa/data_set/master/etc/fruits.csv', row.names = '순번')

fruit1

# 실습하기. fruit1에서 종류가 과일인 데이터만 조회해주세요
fruit1[, 4]       # 가능
fruit1[, '종류']  # 가능
fruit1$종류       # 불가능
fruit1$'종류'     # 한글을 쓰고 싶은 경우에 이렇게 사용

# 실습하기. fruit1에서 종류가 채소인 데이터만 조회해주세요


# 엑셀 데이터 불러오기
# - 엑셀은 xls, xlsx보다 csv로 전환해서
#   하는게 더 좋습니다.
install.packages('xlsx')
library(xlsx)  # jvm.~~

fruit3 <- read.xlsx('C:/R_1400_kpk/resource/source/fruits_etc.xlsx', sheetIndex = 1, encoding = 'UTF-8')
fruit3
# 실습하기. 결측치를 확인하시고,
#           결측치의 값을 3으로 변경해주세요
sum(is.na(fruit3))
is.na(fruit3)
fruit3[is.na(fruit3)] <- 3
fruit3
# 실습하기. 구분의 값이 3인 데이터의 가격 평균을 구해주세요
# 답: 19000
fruit3
fruit3[, '구분'] == 3
a <- fruit3[, '구분'] == 3

fruit3[a, ]
fruit3[a, '가격']
mean(fruit3[a, '가격'])

































