# day04_06_database.R
# database란 체계적으로 데이터를 관리할 수 있는 
# 프로그램(어플리케이션)
# 파일로 데이터를 관리하면 날짜별, 데이터별로
# 관리가 힘들기 때문에 데이터가 많은 경우에는
# 데이터 베이스를 통해서 관리한다.
# 데이터베이스에는 oracle, mssql, mysql 등이 있다.


install.packages('RMySQL')
library(RMySQL)

# 데이터 베이스 접속
# 짐에서는 mariadb 설치 이후에 host를 127.0.0.1
conn <- dbConnect(MySQL(), 
                  host='192.168.6.254', 
                  dbname='mydb',
                  user='root',
                  pass='1234')
conn

# 테이블에서 데이터가 존재하는지 검색
q <- 'SELECT * FROM train'
dbGetQuery(conn, q)

y <- c(1995, 1996, 1997)
t <- c(8000,9000,10000)
df1 <- data.frame(y, t)
df1
colnames(df1) <- c('_year', '_total')
df1

# 데이터베이스 데이터 입력
dbWriteTable(conn, 'train', df1, row.names=F, append=T)


# 데이터베이스로부터 데이터를 얻어와서 시각화하기
read_train <- dbGetQuery(conn, q)
read_train

barplot(read_train$`_total`, names.arg = read_train$`_year`)
table(read_train)







