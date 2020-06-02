# day02_11_useful.R
# 데이터 구조와 같이 자주 사용하는 함수들

vec1 <- c(1:3)
vec2 <- c(4:6)
vec3 <- c(1:4)

# 합치기 -union()
union(vec1, vec2)
union(vec1, vec3) # 중복된 결과를 제외하고 합쳐진다.

# 중복된 결과를 포함하여 합치려면?
c(vec1, vec3)

# 차집합 - setdiff()
# setdiff(데이터1, 데이터2)
# 데이터1에서 데이터2의 값을 제외한 결과가 출력된다.
setdiff(vec3, vec1)

# 교집합 - intersect()
intersect(vec1, vec3)

# paste() : 붙이기
# paste(data1, data2, data..., 구분자) : 붙이기
# 컨트롤 + v
paste('a','b')
paste('a','b', sep = ',')
paste('a','b', sep = '')
paste0('a','b')


# 실습하기.
# x변수의 각 자리에 x1, x2, x3, x4, x5가
# 조회될 수 있도록 paste를 이용하기.
rep('x', 5)
x <- c(rep('x', 5))
paste0(x, c(1:5))

# 벡터연산

a <- 1:6
a*5
a

# merge(): 기준에 따라 데이터를 결합하는 함수
# - database의 join문과 결과 같다.
# - inner join: 교집합
# - left(right) outer join: 기준에 따라서 반대쪽의 값이 없어도
#                           합쳐지는 형태
# - full outer join: 합집합


name <- c('김유신','강감찬','이순신','홍길동')
cnt <- c(100,50,80,20)

df_buy_1 <- data.frame(name, cnt)
df_buy_1

name2 <- c('김유신','김소월','이순신','맹자','공자')
owner <- c(TRUE, FALSE, FALSE, FALSE, TRUE)
df_buy_2 <- data.frame(name= name2, owner)
df_buy_2


# 두 데이터를 기준값에 따라서 교집합으로 구하기
merge(df_buy_1, df_buy_2, by = 'name')

# left(right) 조건의 데이터는 모두 보이게 조회
##left
merge(df_buy_1, df_buy_2, all.x = TRUE)

## right
merge(df_buy_1, df_buy_2, all.y = TRUE)

# full 조건은 모든 데이터를 다 보여준다.
merge(df_buy_1, df_buy_2, all = TRUE, by = 'name')



# 문자만들기
letters
a <- letters[1:3]
a
LETTERS


# 평균과 중앙값
# - 데이터에 따라서 평균을 사용할 지와
#   중앙값을 사용할 지는 다르다.
a <- 1:50
mean(a)   # 평균
median(a) # 중앙값


# 데이터를 위, 아래의 6개만 조회하기
m <- c(1:1000)
# 상위 6개
head(m)
# 하위 6개
tail(m)


# 데이터의 길이 확인
# length(데이터)
length(m)

# 랜덤값 생성하기
# 로또번호 
a <- sample(45, 6)   # 45까지 중에서 6개를 추출하기

# sort(): 정렬하기
# 오름차순: 값이 올라가는 형태로 정렬
sort(a)

# 내림차순: 값이 내려가는 형태로 정렬
sort(a, decreasing = TRUE)

# R에서 데이터를 시각화 하는 방법
a <- 1:10
b <- c(5:50)

hist(a)
hist(b)

plot(a)
plot(b)












