# day04_01_crawling.R
## r을 활용하여 특정 사이트로부터
## 검색어 기반의 데이터를 모으기

install.packages('rvest')
install.packages('dplyr')
library(rvest)
library(dplyr)

# 1. 사이트 이동
# - url을 얻기
# - http://jtbc.joins.com/search/news?term=빅데이터
my_keyword = '빅데이터'
url <- 'http://jtbc.joins.com/search/news?term='
url <- paste0(url, my_keyword)
read_html(url)

# 긁어오고 싶은 페이지를 4개 정도 미리 수동으로 가져오기
# - http://jtbc.joins.com/search/news?page=1&term=
# - http://jtbc.joins.com/search/news?page=2&term=
# - http://jtbc.joins.com/search/news?page=3&term=
# - http://jtbc.joins.com/search/news?page=5&term=
my_url <- NULL
url_front <- 'http://jtbc.joins.com/search/news?page='
url_last <- paste0('&term=',my_keyword)
for(i in 1:5) {
  my_url[i] <- paste0(url_front,i,url_last)
}
my_url

# 2. 내가 할 작업이 무엇인지 정의하기
# - 해당 예제에서는 제목을 클릭해서
#   해당 기사(article)의 본문을 가져오기
# class = sch_replay_list news_list btm_line

my_links <- NULL

for(i in my_url) {
  a <- read_html(i)
  b <- html_node(a, '.sch_replay_list')
  c <- html_nodes(b, '.txt_ttl')
  my_links <- c(my_links, html_attr(c, 'href'))
}

# 아래를 실행하면 본문 주소가 50개 나와야 한다.
my_links

txts <- NULL
for(i in my_links) {
  a <- read_html(i)
  b <- html_node(a, '#articlebody')
  # b(기사의 본문)로부터 text만 긁어오기
  txts <- c(txts, html_text(b))
}

txts # 검색하면 본문 50개의 text 조회

write.csv(txts, 'C:/R_1400_kpk/workspace/workspace/day04/my_crawling.csv')



