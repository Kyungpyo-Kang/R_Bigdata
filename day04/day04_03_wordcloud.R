# day04_03_wordcloud.R

install.packages('tidyverse')
library(tidyverse)
# https://raw.githubusercontent.com/luxdolorosa/data_set/master/etc/moon_UTF8.txt
# 1. 한글 분석을 위한 데이터 불러오기

url <- 'https://raw.githubusercontent.com/luxdolorosa/data_set/master/etc/moon_UTF8.txt'
moon_txt <- readLines(url, encoding = 'UTF-8')
moon_txt


# 한글 형태소 분석을 위한 형태소 분석기 설치
# java가 없으면 오류난다.
install.packages('KoNLP')

# CRAN에서 제외된 패키지 설치하기
install.packages('devtools')
install.packages('https://cran.r-project.org/src/contrib/Archive/KoNLP/KoNLP_0.80.1.tar.gz'
                 , repos = NULL, type = 'source')
devtools::install_github('haven-jeon/KoNLP')
library(KoNLP)
# 형태소 분석: 어떤 어절을 분석하는 것으로
# 동사, 명사, 형용사 등등인지 품사를 붙이는 단계
SimplePos09('안녕하세요')

moon_ko <- moon_txt %>% SimplePos09()
moon_ko

library(reshape2)
# melt : 정형스럽게 변환
moon_ko %>% melt %>% head(10)
m_df <- moon_ko %>% melt %>% as_tibble() %>% head(10)
# melt를 이용해서 원 데이의 출현 빈도의 숫자를 세고 
# tibble을 이용하여 dataframe의 형태로 변경한 것
m_df
m_df1 <- moon_ko %>% melt %>% as_tibble()
# 명사의 출현 빈도를 구하기 위해 
# 필요한 데이터 분류하기
m_df1 <- m_df1[,c('L1','value')]
m_df1

#  정규식을 이용하여 한글이면서 /N으로 끝나는 글자만
tmp_txt <- c('사실/N','test/N','알/P')
library(stringr)

tmp_txt %>% str_match('([가-힣]+)/N')

# 연설문 데이터를 정규식으로 분류하기

m_df1$value %>% str_match('([가-힣]+)/N')


m_df1 <- m_df1 %>% 
          mutate(noun=str_match(value, '([가-힣]+)/N')[,2]) %>%
          na.omit()

# 세, 번처럼 1글자는 대부분 의미가 없으므로
# 글자 길이를 세어서 2개 이상만 가져오기
m_df1$noun %>% str_length()


m_df2 <- m_df1 %>% 
  mutate(noun_length=str_length(noun)) %>%
  filter(noun_length >= 2) %>%
  count(noun, sort = T)


m_df2
# 워드 클라우드 그리기
install.packages('wordcloud2')
library(wordcloud2)


m_df2 %>% wordcloud2()

# 단어가 너무 많이 나오므로
# 단어 출현의 빈도가 2 이상인 것으로만 그려보기
m_df2 %>% filter(n >= 2) %>% wordcloud2()


# 글자의 회전 반경 정하기
m_df2 %>% 
  filter(n >= 2) %>% 
  wordcloud2(minRotation = 0, maxRotation = 0)

# 숙제
# my_crawling.csv를 이용하여
# 워드 클라우드 그리기



