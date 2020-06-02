# day04_02_pipe.R
# - pipe 기법
# - 앞 단계의 실행 결과가 뒤로 전달되는 형태
# - 기름관이나 수도관 pipe를 생각하면 된다.
# library(dplyr)
# - 기본 문법
print(1)

# pipe로 사용하면
1 %>% print()

# 1,2,3을 모두 더해서 출력
print(sum(c(1,2,3)))

# - 변수를 사용한다면?
a <- c(1,2,3)
b <- sum(a)
print(b)

# pipe를 사용하면
c(1,2,3) %>% sum() %>% print()







