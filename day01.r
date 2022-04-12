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



### 이외 연산자
# : 순서대로 순자를 생성하는 연산자 ex_ 1:10 -> X
#   X는 (1,2,3,4,5,6,7,8,9,10)
# %in% : 데이터들(벡터) 내에 값이 있는지 확인
# %*% : 매트릭 곱하게 (행렬)

# **print() , paste() - 여러 자료 붙여서 출력하기
# (주의) 자료형이 다른 것은 붙이지 못함


array(c(1,2,3,4,5,6),dim=c(3,2,2))
