# day03_01_file.R

## fruits 변수에 백터를 만들기.
## ex) apple, mango, banan, orange, Apple, pineapple
fruits <- c('apple', 'mango', 'banana', 'orange', 'Apple', 'pineapple')
fruits

## 특정 조건 검색
### grep(찾을 조건, 대상)

# fruits 벡터에 apple이라는 문자가 포함된 데이터가 
# 존재하는지 검색
grep('apple', fruits)

# 대소문자를 구분하지 않도록 옵션 지정하기
grep('apple', fruits, ignore.case = T)

# 실습하기
# fruits에서 a가 포함되는 데이터만 검색하기
grep('a', fruits)

# 실습하기
# a가 포함되는 데이터의 위치가 아닌 데이터를 조회해라.
fruits[grep('a', fruits)]


# grep을 이용해서 특정 조건을 만족하는 값 찾기
## 시작과 끝값을 이용해서 검색하기
# 시작값
grep('^a',fruits)
grep('^A',fruits)
grep('^a',fruits, ignore.case = T)

# 끝값
## e로 끝나는 값
grep('e$',fruits)
fruits[grep('e$',fruits)]


# 실습하기
# fruits에 숫자1개, 논리형 1개를 임의로 추가

fruits <- c(fruits, 111, 123, TRUE)
fruits


# fruits에서 숫자로 변환될 수 있는 데이터만 조회

grep('\\d', fruits)
fruits[grep('\\d', fruits)]

# fruits에서 문자만 조회
grep('\\D', fruits)
fruits[grep('\\D', fruits)]


# 임의의 텍스트 수를 지정하여 찾기
fruits
# 7글자 이상인 데이터만 조회
grep('.......',fruits)
fruits[grep('.......',fruits)]
# a로 시작 전 2글자 이상
grep('..a', fruits)
fruits[grep('..a', fruits)]

# 파일(데이터) 불러오기
# 2가지를 꼭 기억할 것.

## 절대적: 기준점 없이 대상의 위치가 고정된 상태로 설명
## 상대적: 대상의 위치를 어떤 기준점으로부터 설명

# 1. 절대적 경로를 이용한 데이터 불러오기
# 비정형 데이터 읽기
readLines('C:/dev/eclass.txt')

# 2. 상대적 경로를 이용한 데이터 불러오기
# 현재 R의 경로 확인하기
getwd()
# setwd(경로)
readLines('eclass.txt')
readLines('korea/eclass.txt')

# 네트워크 상의 데이터 읽어오기
## 네트워크의 데이터는 무조건 변수에 저장하기!!
txt1 <- readLines('https://raw.githubusercontent.com/luxdolorosa/data_set/master/etc/movie_review_01.txt')


txt1
# 실습하기
# txt1의 데이터 중 40글자 이상인 데이터만 보여라
# hint: 40글자

#txt <- ''
#range <- 1:40
#for (i in range) {
#  txt <- paste0('.',txt)
#}
txt <- strrep('.', 40)
rep('.', 40)
txt1[grep(txt,txt1)]
txt1


# txt1 데이터 중에서 20글자이면서
# 영화라는 단어가 출현하는 데이터만 조회
# 방법1
temp <- txt1[grep(strrep('.',20),txt1)]
temp[grep('영화', temp)]
# 방법2
a <- grep(strrep('.',20),txt1)
b <- grep('영화', txt1)
txt1[intersect(a,b)]





