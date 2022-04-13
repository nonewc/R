## R 사용 문법
# 변수 사용하기 (대입 연산은 "=" 대신에 "<-" or "->"를 사용함)
# - 하나의 값을 변수에 저장하기

x <- 5
x*x
10 -> y
y + y

# 2. 여러 개의 값을 변수에 저장(배열과 같은 자료 사용하기), 벡터

x <- c(5,6)     # 벡터변수, 여러 개의 값을 하나의 변수에 저장
print(x)

# 여러개의 값을 가진 변수의 일부 값을 참조시 인덱스를 사용
# R의 인덱스의 시작값은 1부터...

x[1]
x[2]

### 변수 이름 규칙
# - 변수 이름은 영문, 숫자, ".", "_" 을 사용
# - 하지만, "." 을 앞에 사용할 수 있음. 이 때 뒤에 숫자는 안됨.
# - 변수 앞에 숫자나 _ 사용 불가능
# - 변수명은 대소문자를 구분함.
# - 예약어 사용 불가능

## 데이터 타입
# numeric : 숫자(10.5, 55, 768 ... )
# integer : integer 타입 (숫자 L을 붙여서 표현) (1L, 55L, 100L)
# complex : 복소수형(i를 붙여서 구분)
# character : 문자 또는 문자열 자료
# logical : 논리자료 (TRUE / FALSE)
# 개발용 언어가 아니기 때문에 굳이 세세하게 분류 안했음

# 타입 보는 명령어(함수) : class()
class(10L)
class(10.7)
class(10i)
class("안녕")
class(TRUE)

## 형변환 : as.numeric() , as.integer() , as.complex()

x <- 1L
y <- 2

a <- as.numeric(x)
class(a)

b <- as.integer(y)
class(b)

### 연산자(산술)
# + , - , * , / , ^(제곱) , %%(나머지), %/%(정수나누기,몫)
a
b
a+b
a-b
a*b
a/b
a^b
a%%b
a%/%b


### <- , <<- , -> , ->>
# "<<-" 전역 선언, <- 대입처리

### 비교 연산자
# == , != , > , < , >= , <=
a == b
a != b
a > b
a < b
a >= b

### 논리 연산자
# & , && , | , || , ! (not)

10 == 10 && 10 == 10 ## FALSE
10 == 10 || 10 == 10 ## TRUE
!(10 == 10)          ## FALSE

### 이외 연산자
# : 순서대로 순자를 생성하는 연산자 ex_ 1:10 -> X
#   X는 (1,2,3,4,5,6,7,8,9,10)
# %in% : 데이터들(벡터) 내에 값이 있는지 확인
# %*% : 매트릭 곱하게 (행렬)

1:10 -> x
x
i <- 5
i %in% x        ## TRUE
0.6 %in% x      ## FALSE

# **print() , paste() - 여러 자료 붙여서 출력하기
# (주의) 자료형이 다른 것은 붙이지 못함

print(x)
paste(x,i)

#print('I','am','a','student')      # 에러
paste('I','am','a','student')

###내장 함수
# max(), min(), sqrt() - 루트 연산, abs() - 절대값
# ceiling() - 올림, floor() - 내림 -> ceiling(1.4), floor(1.4)

max(c(11,5,36,3,4,8,33))
min(c(11,5,36,3,4,8,33))
sqrt(4)
sqrt(2)
abs(-100)
ceiling(1.4)
floor(1.4)
round(1.456,2)

## 문자열
# 1. 한 줄 문자열
str <- "Hello R!!"
print(str)

# 2. 여러줄 문자열
str2 <- "안녕, 친구야!!
오늘도 좋은 하루가 되길 바래,
밖에 날씨는 어때?
졸리다.... "
print(str2)

# 출력 : [1] "안녕, 친구야!!\n오늘도 좋은 하루가 되길 바래,\n밖에 날씨는 어때?\n졸리다.... "
## Python은 여러줄 그대로 출력하지만 R은 (기본적으론) 한 줄로 출력

# 3. 동일하게 "\n" 표현되도록 출력... cat()

str3 <- "Hangeul ro ssemyun,
Andem. English ro sseoya hae,
mianhae Hangeul"

cat(str3)


# 4. 문자열 길이 : nchar(str)

nchar(str3)
nchar(str2)
nchar(str)

#  5. 문자열 내에 글자 확인 함수 : grepl()

str4 <- "Hello world!! Hi, R~"

grepl("H",str4)                         #TRUE
grepl("Hi",str4)                        #TRUE
grepl("Hello",str4)                     #TRUE
grepl("Hallow",str4)                    #FALSE
grepl("h",str4,ignore.case = TRUE)      #TRUE

# 6. 문자열의 결합 : paste()
str5 <- "Hello"
str6 <- "R~~~"

paste(str5,str6)

## escape 문자 : \\ (역슬래쉬), \n (줄바꿈), \r (커서를 맨 앞으로), 
#                \t (탭), \b (백스페이스, 커서를 하나뒤로)


## 조건문 : if
# if (조건) {
#   조건 실행문...  
# }

# if (조건) {
#   조건 실행문..
# }else{
#   else 조건 실행문...
# }

# if (조건) {
#   조건 실행문
# }else if (조건) {
#   조건 실행문
# }else{}

#}

# ** 중첩...

### x가 10일 경우, if문을 사용하여 2의 배수이면 "2의 배수" 출력
###                                6의 배수이면 "6의 배수" 출력

x <- 10

intext <- readline("입력하세요 : ")
print(intext)
class(intext)
num <- as.numeric(intext)
class(num)

if (num%%2 == 0){
    if (num%%6 == 0){
        print("6의 배수")
    } else {
        print("2의 배수")
    }
}

## 반복문 : while, for
## next 는 (continue) 와 같음
## break 는 반복문 종료

i <- 0
while (i < 6) {
    i <- i+1
    if (i == 3) {
        next
    }
    print(i)
}

# for 문도 비슷하게 사용 가능

dice <- c(1,2,3,4,5,6)

for (x in dice) {
    print(x)
}

for (x in 1:10) {
    print(x)
}

x <- 1
for (i in 2:10) {
    x <- x*i
    print(x)  
}

## 함수만들기(function 명령어 사용)
# 함수명 <- function(인자리스트){
#     함수 정의부
# }

# return() 함수 실행 결과를 리턴

# 팩토리얼 함수
facto <- function(x) {
    res <- 1
    for (i in 1:x){
        res <- res*i
    }
    return(res)
}

facto(5)
facto(6)
facto(10)

## 함수 중첩 예시 2

Nested_function <- function(x,y){
    a <- x + y
    return(a)
}

Nested_function(Nested_function(2,2),Nested_function(3,3))

## 함수 중첩 예시 2
Outer_func <- function(x) {
    Inner_func <- function(y) {
        a <- x + y
        return(a)
    }
    return(Inner_func)
}

output <- Outer_func(3) ## x 값, Inner_func return
output(5)               ## y 값

#### 숫자를 입력 받아 그 숫자를 역으로 출력하는 프로그램을 함수로


ivt <- function(x) {
res <- 0
while (TRUE){
    res <- res + x%%10
    x <- x %/% 10
    if (x == 0){
        break
    }
    res <- res*10
}
return(res)
}

inp_text <- readline("숫자 입력 : ")
num <- as.numeric(inp_text)
ivt(num)

### 두 수를 입력받아 그 평균을 구하는 함수

avg <- function() {

    res <- 0
    x <- readline("첫번째 수 : ")
    y <- readline("두번째 수 : ")
    x <- as.numeric(x)
    y <- as.numeric(y)
    res <- (x+y)/2

return(res)
}

avg()

### 재귀함수 : 재귀함수는 자신이 자신을 참조하여 동작하는 함수

tri_recursion <- function(k) {
    if (k>0) {
        result <- k + tri_recursion(k - 1)
        print(result)
    } else {
        result <- 0
        return(result)
    }   
}

tri_recursion(5)

fact_r <- function(x) {
    if (x>0) {
        result <- x * fact_r(x - 1)
    } else {
        result <- 1
        return(result)
    }
    return(result)
}

fact_r(5)

### 전역변수 설정하기
# 일반 변수 설정
txt <- "awesome"
my_function <- function() {
    txt <- "fantastic"
    paste("R is",txt)
}

my_function()
print(txt)

# 전역 변수 설정

my_function <- function() {
    txt <<- "fantastic"
    paste("R is",txt)
}

my_function()
print(txt)


### 벡터 : 같은 자료형의 연속된 리스트(배열)
# 문자 벡터
fruits <- c("banana","apple","orange")
fruits[2]

# 숫자 벡터
numbers1 <- c(1,2,3,4,5)
numbers1[5]

# 연속된 숫자의 벡터 생성
numbers2 <- 1:10
numbers2

# 연속된 값의 표현은 정수단위로 증가합니다.
numbers3 <- 1.5:6.5
numbers3

# 연속된 값의 숫자 벡터 단위 증가시 사용되지 않는 경우
numbers4 <- 1.5:6.4
numbers4                # 5.5 까지만 출력

# 논리값 벡터
log_values <- c(TRUE,FALSE,TRUE,FALSE)
log_values

# 벡터 길이 알아오기 (요소 갯수 알아오기)
length(numbers4)

fruits <- c("banana","apple","orange")
length(fruits)

### 벡터의 문자열이나 숫자를 정렬하여 처리하는 함수 : sort()

fruits <- c("banana","apple","orange","mango","lemon")
numbers <- c(13, 3, 5, 7, 20, 2)

sort(fruits)    # Sort a string
sort(numbers)   # Sort numbers

## 벡터 함수의 사용 인덱스 참조1: c()
fruits <- c("banana","apple","orange","mango","lemon")
fruits[c(1,3,5)]    # 선택 참조

## 인덱스 참조 2
fruits <- c("banana","apple","orange","mango","lemon")
fruits[-1]      ## Python하고 다름, 제외하고 참조함 (선택 제외)
fruits[-3]      ## index 3 제외 (orange)
fruits[c(-1,-3)]

## 벡터의 반복 : rep()
# 요소의 반복
repeat_each <- rep(c(1,2,3), each = 3)
repeat_each     # 1 1 1 2 2 2 3 3 3

# 벡터의 반복
repeat_times <- rep(c(1,2,3), times = 3)
repeat_times

# 요소의 개별적 반복
repeat_indep <- rep(c(1,2,3), times = c(5,3,2))
repeat_indep

## - 순차적인 벡터 생성
# 1
number1 <- 1:10
number1
# 2  sequence, seq() 함수 : 인자 (from, to, by)
number2 <- seq(from = 0, to = 100, by = 20)
number2

for (i in seq(from = 0, to = 100, by = 20)) {
    print(i)
}



### Lists : list() 함수 사용, Python의 List와 비슷함
# 문자열 리스트
strlist <- list("사과", "바나나", "체리")
strlist

#숫자형 리스트
numlist <- list(10,20,30,40)
numlist

tlist <- list('사과',c(10,20,30),'바나나','체리')
tlist
tlist[2]

# 리스트내 값 참조
strlist <- list("사과", "바나나", "체리")
"사과" %in% strlist
 
# 리스트 내에 값 추가 : append()
strlist <- list("사과", "바나나", "체리")
strlist <- append(strlist,"메론", after = 2)
# after가 없으면 마지막에 추가
strlist <- append(strlist,"포도")

# 리스트 값 제거 : 
strlist <- strlist[-1]
strlist

# 리스트 범위로 값을 출력
strlist[2:5]

# 리스트 결합
list1 <- list("a","b","c")
list2 <- list(1, 2, 3)

list3 <- c(list1,list2)
list3

### Matrixes (행렬) - matrix() 를 사용, nrow, ncol 값으로 정렬 지정
## 행렬 생성 1
tmatrix <- matrix(c(1,2,3,4,5,6), nrow = 3, ncol = 2)
tmatrix

## 행렬 생성 2
t2matrix <- matrix(c("apple","banana","cherry","orange"), nrow=2, ncol=2)
t2matrix

## 행렬에 대한 접근 "[]"를 이용하여 접근
t2matrix[1,2]       # 1행 2열
t2matrix[2,]        # 2행 전체 출력
t2matrix[,2]        # 2열 전체 출력
t2matrix[,]

## 하나 이상의 행렬에 접근
t3matrix <- matrix(c("apple","banana","cherry","orange","grape","pineapple",
"pear","melon","fig"), nrow = 3, ncol = 3)

t3matrix[-3,]               # 3행 빼고 출력
t3matrix[c(1,2),]           # 1,2행만 출력

t3matrix[,c(1,3)]           # 1,3열만 출력
t3matrix[,-2]               # 2열만 출력

## 행렬에 값을 추가(컬럼 추가) : cbind()
newmatrix <- cbind(t3matrix,c("strawberry","blueberry","rasberry"))
newmatrix

## 행렬에 값을 추가(로우 추가) : rbind()
newmatrix <- rbind(t3matrix,c("strawberry","blueberry","rasberry"))
newmatrix

## 행렬값 제거 : 음수 인덱스 표시
r1matrix <- newmatrix[-c(1,2),-c(3,4)]
r1matrix

## 행렬값 확인
"apple" %in% r1matrix
"apple" %in% newmatrix

## 행렬의 row와 column 알아오기 : dim() 함수
dim(t2matrix)
dim(t3matrix)
dim(tmatrix)
dim(newmatrix)
dim(newmatrix)[1]       # row
dim(newmatrix)[2]       # col

## 행렬의 길이
lmatrix <- matrix(c("apple","banana","cherry","orange"), nrow=2,ncol=2)
length(lmatrix)

## 행렬에 반복문을 사용하여 rows와 column 값으로 행렬값을 불러와 보세요

t4matrix <- matrix(c("apple","banana","cherry","orange"), nrow=2, ncol=2)
t4matrix

for (i in 1:dim(t4matrix)[1]){              # 1:nrow(t4matrix)
    for(j in 1:dim(t4matrix)[2]){           # 1:ncol(t4matrix)
        print(paste(i,"행",j,"열 값:",t4matrix[i,j]))
    }
}

## 행렬 합치기
Matrix1 <- matrix(c("apple","banana","cherry","grape"), nrow = 2, ncol = 2)
Matrix2 <- matrix(c("orange","mango","pineapple","watermelon"), nrow=2, ncol=2)

# row로 더하기 : rbind()
matrix_combined <- rbind(Matrix1,Matrix2)
matrix_combined

# column으로 더하기 : cbind()
matrix_combined <- cbind(Matrix1,Matrix2)
matrix_combined



### Arrays 배열
tarray <- c(1:24)
tarray
class(tarray)       # integer

multiarray <- array(tarray,dim=c(4,3,3))
multiarray
## * dim(4,3,3) : 4는 rows, 3은 columns, 3은 (생성할)행렬의 갯수
## dim(nrow,ncol,갯수)


# Arrays 값 접근
multiarray[2,2,2]       # Array[row, col, matrixNo]

## c() 함수를 이용한 접근
t2array <- c(1:24)
## 첫번째 행렬의 첫번째 row에 접근
tmultiarray <- array(t2array,dim=c(4,3,2))
tmultiarray[c(1),,1]

## 첫번째 행렬의 첫번째 column에 접근
tmultiarray <- array(t2array,dim=c(4,3,2))
tmultiarray[,c(1),1]

## 존재여부
3 %in% tmultiarray

## row와 column, matrixNo 확인
dim(tmultiarray)

## Array 길이
length(tmultiarray)

## 반복문 사용
for (x in tmultiarray) {
    print(x)
}

### Data Frames (data.frame())
## 데이터 프레임은 데이터를 테이블 형태로 표현하는 자료형입니다.
## 데이터 프레임 안의 데이터 타입은 서로 달라도 됩니다.
## 첫번째 컬럼은 문자(character), 두번째는 numeric, 세번째는 logical로 생성해봅니다.
## 양식상 = 를 사용가능 ( tag = value )

Data_Frame <- data.frame(
    Training = c("Strength","Stamina","Other"),
    Pulse = c(100,150,120),
    Duration = c(60,30,45)
)

Data_Frame

## summary() : 데이터 프레임 값을 요약해서 보여줌
summary(Data_Frame) ## 데이터 프레임의 값을 요약해서 출력

## 데이터 프레임 값 접근
Data_Frame[1]           # 1 열값
Data_Frame['Training']  # Training 태그 값
Data_Frame$Training     # Training 태그 값

## row 추가 : rbind()
New_Row_DF <- rbind(Data_Frame,c("Speed",110,110))
New_Row_DF

## column 추가 : cbind() // 태그 = 밸류 로 추가
New_Col_DF <- cbind(Data_Frame,Step=c(1000,6000,2000))
New_Col_DF

## row와 column 제거
Data_Frame_New <- Data_Frame[-c(1),-c(1)]
Data_Frame_New

## ncol(), nrow()
ncol(Data_Frame)
nrow(Data_Frame)

## 요소의 갯수(길이)
length(Data_Frame)

## 데이터프레임 결합 cbind, rbind

## 결합 : rbind()
Data_Frame1 <- data.frame (
    Training = c("Strength","Stamina","Other"),
    Pulse = c(100,150,120),
    Duration = c(60,30,45)
)

Data_Frame2 <- data.frame (
    Training = c("Stamina","Stamina","Strength"),
    Pulse = c(140,150,160),
    Duration = c(30, 30, 20)
)

New_Data_Frame <- rbind(Data_Frame1, Data_Frame2)
New_Data_Frame

## 결합 : cbind()
Data_Frame3 <- data.frame (
    Training = c("Strength","Stamina","Other"),
    Pulse = c(100,150,120),
    Duration = c(60,30,45)
)

Data_Frame4 <- data.frame (
    Steps = c(3000,6000,2000),
    Calories = c(300,400,300)
)

New_Data_Frame1 <- cbind(Data_Frame3,Data_Frame4)
New_Data_Frame1





### Factors (factor()) : 범주형 자료일 때 사용
## : 정해진 범위 내에서 카테고리별로 분석을 하기 위해서 사용되는 데이터 자료형
## 예) 성별 : 남성,여성 // 음악 : 록, 팝, 클래식, 재즈 // 운동 : 스테미나, 근력

# factor 생성
music_genre <- factor(c("Jazz","Rock","Classic","Classic","Pop","Jazz","Rock","Jazz"))
music_genre

# levels() : 카테고리 출력
levels(music_genre)

# length() : 요소의 갯수
length(music_genre)

# 요소에 접근
music_genre[3]

# 요소의 변경
music_genre[3] <- 'Pop'
music_genre[3]

## factor는 정해진 범주 내에서 카테고리별로 분석을 위해서 사용하기 떄문에
## 사전에 정의되어 있지 않은 값으로 변경시 에러가 발생함.

music_genre[3] <- 'RnB'         #요인의 수준(factor level)이 올바르지 않아 NA가 생성되었습니다.

music_genre <- factor(c("Jazz","Rock","Classic","Classic","Pop",
"Jazz","Rock","Jazz"),levels=c('Classic','Jazz','Pop','Rock','Opera'))

music_genre[3] <- 'Opera'

music_genre[3]


### 순열과 조합
## 순열(nPr) : 서로 다른 것들이 있는 경우 그중에서 몇개를 뽑아서 줄을 세우는 경우의 수
##             여기서 줄을 세운다는 표현은 순서를 고려한다는 의미

## 팩토리얼 구하는 코드
fact <- function(n) {
    x <- 1
    for (i in 1:n) {
        x <- x*i
    }
    return (x)
}

########################################################################################
x <- c(1,2,3,4,5)
count <- 0
for (i in 1:5){
    x2 <- x[x != i] # i에 저장된 값 빼고, x2 저장
    for (j in 1:4) {
        print(c(i,x2[j]))
        count <- count + 1
    }
}
print(count)        # 20
# (1,2) (1,3) (1,4) (1,5)
# (2,1) (2,3) (2,4) (2,5)
# (3,1) (3,2) (3,4) (3,5)
# (4,1) (4,2) (4,3) (4,5)
# (5,1) (5,2) (5,3) (5,4)

## 공식을 이용한 경우 nPr = n!/(n-r)!

perm <- function(n,r) {

    if (n >= r) {
        result <- fact(n)/fact(n-r)
    } else {
        print("r은 n보다 작거나 같아야 합니다.")
        result <- -1
    }
    return (result)

}

perm(5,2)


## 조합 (nCr) 은 순서를 고려하지 않는다... (1,2) == (2,1)
## 순서를 고려하지 않기 때문에 같은 값이 있다면, 이것은 하나의 값으로 처리됨.

# nPr/r! = nCr, 이유는 순서의 쌍이 같은 값으로 구성되기 때문

# 1, 2, 3 세 숫자의 순열은 3! = 6 이다..
# (1,2,3), (1,3,2), (2,1,3), (2,3,1), (3,1,2) , (3,2,1) 

# 하지만 조합은 1개만 존재한다. 왜? 모두 1,2,3이 포함되어 있으니까...

## 조합을 계산하는 코드
x <- c(1,2,3,4,5)
count <- 0

for(i in 1:4){
    for(j in (i+1):5){
        print(c(i,j))
        count <- count+1
    }
}

print(count)

## 공식을 이용한 경우

comb <- function(n,r){
    result <- perm(n,r)/fact(r)         # fact(n)/fact(n-r)/fact(r)
    return (result)
}

comb(45,6)

### 순열, 조합, 상트페티드부르크의 역설...
