# day02_05_vector.R
# 벡터: 같은 자료형을 가진 스칼라값들을
#       순서를 가지고 일렬로 나열한 구조
# ※자바에서의 배열

# c(): combine 합치다의 약자로 인자값을 모두 합치는 함수
a <- c(1,2,3,4)
a

b <- c(TRUE, TRUE, FALSE)
b

class(a)
class(b)

# 여러가지 자료형이 섞인다면
# 더 큰 자료형으로 통일된다.
# 보통의 경우 문자형으로 변환된다.

c <- c(1, '2', TRUE)
c
class(c)


# 벡터에서 데이터를 1개 꺼내면 
# 자료구조는 스칼라가 된다.
# vector의 조회
# 벡터는 index(방의 순번)으로 조회가 가능하다.
c[1]
c[2]
c[3]

# 벡터에 이름 지정하기
# ※주의: 이름은 모두 문자로 지정된다.
#        숫자로 지정해도 index와 겹치기 때문에
#        무조건 문자로 지정된다.
c
names(c) <- c('a','b','c')
c

# 벡터에 이름을 지정한다면
# 이름으로도 조회가 가능하다.
# 이름은 숫자를 입력하더라도 문자형으로 저장된다.

c['a']
c['b']
c['c']

# 실습하기.
# 1. 다음과 같이 출력이 되도록 벡터를 작성

drink <- c("콜라", "사이다", "오렌지쥬스", "에너지드링크")
  
# ex) "콜라" "사이다" "오렌지쥬스" "에너지드링크"
drink  
# 2. 오렌지 쥬스, 에너지 드링크만 조회
# hint: 스칼라? 벡터?
# drink[자료구조]
drink[c(3,4)]  
  
  
# 벡터를 만드는 방법으로 :(슬라이싱)을 이용한 방법
# 슬라이싱의 경우는 숫자형의 순차적인 증가
# 형태에서 많이 사용된다.
1:4


# 함수를 이용하여 벡터를 만드는 방법
# seq(시작값, 끝값, 증가치)
seq(1, 50, by = 5)

# 역순으로도 가능
8.5:4.5


# 벡터 연산?
a <- 1:6
a

# a의 각 자릿수에 5씩 더하기

# 아래의 예제는 프로그래밍의 연산
for (w in a) {
  print(w+5)
}

# R에서 사용되는 벡터연산
a+5

# a의 모든 방을 2로 나눈 나머지를 구하기
a%%2


# a에서 1,3,5번째 방을 조회
a[c(1,3,5)]

# a에서 1,3,5번째 방을 조회 (논리형을 이용하기)
c(TRUE, FALSE, TRUE, FALSE, TRUE, FALSE)
a[c(TRUE, FALSE, TRUE, FALSE, TRUE, FALSE)]


# 실습하기. a에서 짝수번째 방만 조회

a
a[a%%2 == 0]














