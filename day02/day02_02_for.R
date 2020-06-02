# day02_02_for.R

## while 반복분: 조건이 참일 동안 반복
count <- 1
while (count < 7) {
  print(count)
  count = count + 1
}

## for 반복문: 반복 횟수만큼 반복
range <- 1:4
for (i in range) {
  print(i)
}


# 실습하기
# food_list를 반복해서 감자탕일 경우에만 '정말 맛있겠다'를 출력
food_list <- c('햄버거', '피자', '감자탕', '김치찌개')
food_list

# ex)
# 햄버거
# 피자
# 감자탕
# 정말 맛있겠다.
# 김치찌개

for (i in food_list) {
  print(i)
  if(i == '감자탕') {
    print('정말 맛있겠다.')
  }
}





















