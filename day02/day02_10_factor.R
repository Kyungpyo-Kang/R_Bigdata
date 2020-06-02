# day02_10_factor.R

# factor(범주): 요인(카테고리)이 몇 개로 되어있는지를
#                구분하는 데이터 구조
                
                
# 팩터는 문자처럼 보이지만 숫자형이다.
# 팩터는 수준(level)이라고 알려진 사전에 정의된 값만
# 저장(수정)이 가능하다.
# 팩터는 순위를 가질 수도 있고, 순위가 없을 수도 있다.

c('male', 'female', 'male', 'female')
gender <- factor(c('male', 'female', 'male', 'female'))
gender
class(gender)

# level 갯수 세기
nlevels(gender)

# level 조회하기
levels(gender)

## 요인에 순서가 필요한 데이터의 경우
dust <- factor(c('low','medium','high'))
dust

# 순서를 지정하여 factor 생성하기
dust <- factor(c('low','medium','high'), levels = c('low','medium','high'), ordered = TRUE)
dust

max(dust)
min(dust)


# factor에는 사전에 정의된 값만 저장(수정)이 가능하다.
# gender의 5번째 방에 female을 추가
gender[5] <- 'female'
gender
# gender의 6번째 방에 mele(오타)을 추가
# gender[6] <- 'mele' 오류가 난다.















