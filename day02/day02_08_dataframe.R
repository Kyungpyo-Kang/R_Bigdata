# day02_08_dataframe.R
# 데이터 프레임: 엑셀의 자료구조와 동일
#               매트릭스와 같이 행과 열로
#               이루어진 형태이고,
#               데이터 유형이 섞일 수 있다.
#               (이기종의 데이터를 저장할 수 있다.)
# 가장 많이 사용되는 데이터 구조

# data.frame(벡터1, 벡터2, 벡터3)
name <- c('Korea','E class', 'info')
name
age <- c(20,25,30)
age
student <- c(TRUE, FALSE, FALSE)
student

no <- c(1001,1002,1003)
df1 <- data.frame(row.names = no, name, student, age)
df1

# 실습하기. df1에서 no가 1001인 데이터를 조회
df1['1001',]

# 실습하기. df1에서 age칼럼을 모두 조회하기
df1[,'age']

# 실습하기. df1에서 name, age칼럼의 1002번째 방 조회
df1['1002',c('name', 'age')]

## 컬럼명에 이름을 부여했을 경우에만 사용이 가능한 조회
### df1에서 name 컬럼명 조회하기
df1[,'name']
df1$name


# 조회에 조건을 부여하기
# df1에서 name이 Korea인 데이터만 조회하기
df1$name == 'Korea'
df1[df1$name == 'Korea',]


# 실습하기. df1에서 age가 20 초과하는 데이터의 전체 열을 조회하기
df1
df1$age>20
df1[df1$age>20,]

# 실습하기. df1에서 student가 FALSE인 데이터만 조회하기
df1$student==FALSE
df1[df1$student==FALSE,]









