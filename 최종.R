v1<- c("빨강","파랑","초록")
v1
v2 <-c(70,80,65,40)
v2
plot(v2)
sum(v2)
mean(v2)
data("iris")
View(iris)
str(iris)
??print
#[2] 벡터 데이터 조회하기-
var3 <- c("새우깡","감자깡","고구마깡","맛동산","짱구")

#특정 데이터 호출 방법 : 벡터이름 [행번호]
var3[2]
var3[-2] # 특정 행만 빼고 조회하기
var3[2:4] # 범위 주고 조회하기
var3[-2:-4] # 범위 주고 조회하기
var3[-1]
###################혼자 해보기##################################
x <- c(1,2,3,4,5,6,7,8)
x
x1<-c("1","2","3","4","5");x1

x2<-factor(x1)
class(x2)
x<-1:5 ;x
x<-2:5 ;x
seq(1,5,2)
seq_along(c("a","b","c","d"))
seq_len(4)
seq_len(123)
x<-c(1,3,5,7)
names(x) <-c("noh","kim","park","baek");x
x<-c("a","b","c","d")
x[2]
x[4]
x[-3]
x[c(1,3)]
x[c(2,4)]
seq(1,10,3)
1:10
rep(1:414,5)
rep(1:3,each=3)
rep(1:3,2)
sequence(c(2,5,3))
sequence(c(4,13,2))

rm(list=ls())
ls()
x1 <- 5:10;x1
which(x1==3)
which(x1==8)
################################7월11일#############################

getwd()
dir()
Sys.setenv(JAVA_HOME="C:/Program Files/Java/jre1.8.0_251")
Sys.getenv("JAVA_HOME")
.libPaths()
#install.packages("패키지명")
print("출력하고 싶을 때")
??print
dim(iris)
str(iris)

x1<- c(1,2,3,4,5) ;x1
a<- factor(c("A","B","C","A","B"));a
factor(a)
str(a)
class(a)
#######################어려움##############################
rm(list=ls())
ls()
x<-c(1,2,3,4,5,6)
x<-matrix(x,2,3)
x[1,3]
matrix(x,nrow= 7, ncol=3,byrow = T)


c(1,2,3,4,5)
c("A","B","C","A","B")
factor(c("A","B","C","A","B"))
matrix(1:12,3,4)
array(1:12,c(2,3,2))
data.frame(product=c("A","B","C"),price =c(100,200,300))
list(x=c("A","B","C","A","B"),
     y=matrix(1:12,3,4),
     z=data.frame(product=c("A","B","C"),price=c(100,200,300)))
################################################################
array1 <-c(1,2,3)
array2 <-c(4,5,6)
array3 <-c(7,8,9)

mat1 <- rbind(array1, array2, array3) ; mat1
mat2 <- cbind(array1, array2, array3) ; mat2

#matrix : 긴 벡터를 잘라서 행렬로 변환
#*cbind : 여러개의 벡터를 좌우로 붙여서 행렬로 변환
#*rbind : 여러개의 벡터를 위 아래로 붙여서 행렬로 변환

######################69쪽##############################

list1 <- list(c(1,2,3),"hello") ;list1 ; str(list1)

####################70쪽##############################
ID <-c(1,2,3,4,5,6,7,8,9,10)
SEX <-c("F","M","F","M","M","F","F","F","M","F")
AGE <-c(50,40,28,50,27,23,56,47,20,38)
AREA <- c("서울","경기","제주","서울",
          "서울","서울","경기","서울","인천","경기")
aaa1<- data.frame(ID, SEX,AGE,AREA)

str(aaa1)
mean(aaa1$AGE)
sum(aaa1$AGE)

###################################################################
library(readxl)
dustdata <- read_excel("C:\\TEMP\\RStudy\\data\\dustdata.xlsx")
View(dustdata)

###################################82############################
excel_data_ex <-read_excel("C:\\TEMP\\RStudy\\data\\data_ex.xls")
View(excel_data_ex)

mean(excel_data_ex$AGE)
##################################83###############################
bbb1 <-read.table("C:\\TEMP\\RStudy\\data\\data_ex.txt", header = TRUE)
View(bbb1)

#################################################################
name <- c('john','jaehee','juliet','james')
sex <- c('f','f','f','m')
occup <- c('althele','doctor','ceo','analyst')
age <-c(40,35,43,29)
member <- data.frame(name, age, sex, occup) ; member
member[2,4]
member[1,]
member[,1]
member$name
member$sex
member[2,4]
member[1,3]
member[1,3] <-'m'
member[4,3] <-'m'
member
write.csv(member,file='C:\\TEMP\\RStudy\\member.csv') #엑셀로 저장함

ccc1 <- read.csv('C:\\TEMP\\RStudy\\member.csv', header = T)
ccc1
ccc2 <- read.csv('C:\\TEMP\\RStudy\\member.csv')
View(ccc2)

###########################################################

txt1<- read.table("C:/temp/rstudy/data/data_ex.txt",sep=",",header = T)
txt1



###############################################
ID <- c(1,2,3,4,5)
MID_EXAM<- c(10,25,100,75,30)
CLASS <- c('1반','2반','3반','1반','2반')
example_test <- data.frame(ID,MID_EXAM,CLASS)
example_test
str(example_test)

rm(list=ls())
ls()
##############################################

english<-c(90,80,60,70)
math <- c(50,60,100,20)
class <- c(1,1,2,2)
df_midterm <- data.frame(english,math,class) ;df_midterm
df_midterm$english_mean<-mean(df_midterm$english)
df_midterm$math_sum<-sum(df_midterm$math)
df_midterm

write.csv(df_midterm, file='C:\\TEMP\\RStudy\\df_midterm.csv')
xxx1 <-read.csv("C:/temp/rstudy/df_midterm.csv")
View(xxx1)
df_midterm[,2:3]
mean(df_midterm$english)

###############################################

install.packages("sqldf")
library(sqldf)

#tension =L 인 것만 가져오기
sqldf("select * from warpbreaks where tension ='L'")

m1 <- sqldf("select * from warpbreaks where tension ='L'")
m2 <- sqldf("select * from warpbreaks where breaks >=50")
m2
############################################################

c(1,2,3,4,5)
x1<- c("A","B","C","A","B")
x1<-factor(c("A","B","C","A","B"))
matrix(1:12,3,4)
array(1:12,c(2,3,2))
data.frame(product=c("A","B","C"),price =c(100,200,300))
list(x=c("A","B","C","A","B"),
     y=matrix(1:12,3,4),
     z=data.frame(product=c("A","B","C"),price=c(100,200,300)))



str(x1)
###############################################################

matrix(1:21,9,4)

###################################7월 13일#####################################
####3일차 정리
#sample n, 추출수
#runif o~1 상 난수
#rnorm n, 평균, 편차
###

#내장함수 알아보기

help(package = base) # 기본 패키지를 보겠다는 것
x1<- seq(1,10,by = 2)  ;x1
x2<- seq(1,10,3) ;x2

sample(10,2) #샘플 함수는 랜덤으로 숫자를 뽑는 것
sample(5,1)
sample(100,1)
aaaa1<-round(runif(1),4);aaaa1 #runif(x) :x개의 난수를 생성한다. 
x3<- round(runif(1),1);x3 # * 앞에다가()하면 바로출력됨 ; 할 필요 없다 
# runif 0과 1사이의 난수 발생 #,1 소수 첫 째자리 까지 ,2 소수 둘 째 자리 까지

rm(list= ls())
#############################################################################

x<-round(rnorm(60,50,5),2) ;x #p223, 60개 난수 생성 평균 표준편차
#고정시키고 싶으면 변수로 지정해야함
x1 <- round(x,0) ; x1 
plot(x1)

a1<-rnorm(50,80,10) ; a1
a1<-round(a1,2) ; a1
plot(a1)
######################################1교시###################################
v10 <- rep("a",times=5); v10
v11 <- rep(c("A","B"),times=3) ;v11
v12 <- rep(c("A","B"),each=3) ;v12
##############################################################
#변수, 타입, ex
#____________________________________________________
#연속변수 Numeric 키 몸무게
#범주변수 Factor 성별(1,2), 지역(1,2)
#####################################################################

#1. 변수 만들고 사용하는 방법 - 교재 242 페이지
###############################################################

x1 <- 1
x2 <- 2
x3 <- "홍길동"
x4 <- as.Date("2018-01-10")
x5 <- "R is very interesting~!"
class(x5)
###################################################################
x3 <- "전우치"
str(x4)
class(x4)
cv<- as.character(var1)
class(cv)

var1<- 1:4
var2 <- factor(var1) ;var2
str(var2)
class(var2)
var3<- c("a","b","c","b") ;var3
var4 <- factor(var3) ;var4
class(var4)

var1+2
var2+3 
var22 <- as.numeric(var2) ;var22
str(var22)
class(var22)
class(var2)
#팩터에는 연산이 되지 않는다.

######################################################################
x00 <- 1
x10 <- "hello"
x11<- data.frame(v1=c(1,2,3,4,5,6,7,8,9,10),v2=c("a","b","c","d","e","f","g"
                                                 ,"h","i","j")) ; x11
######################################################
summary(x11)
head(x11) # 위에서 6개
tail(x11) # 밑에서 6개
str(iris)
summary(iris)
######################################연습문제##########################
m2<-matrix(c(1:6),2,3, byrow = T) ;m2
rm(list = ls())

k1 <-c(5,40,50:52);k1
k2 <-c(30,4,6:8);k2
mr <-rbind(k1,k2) ; mr # = rbind = matrix (,nrow)
mc <-cbind(k1,k2) ;mc
vv1<- data.frame(mc,mc) ; vv1
d1 <- matrix(c(1:11),2,6); d1
getwd()
x12 <- matrix(1:12,ncol=2);x12
d1<-matrix(1:11,nrow=2) ; d1

########################################오후수업#############################

install.packages("dplyr")
library(dplyr)
x13 <- array(1:20,c(2,5,2));x13
x14 <-rbind(x13);x14
class(x13)
#################################리스트
x00 <- 1
x10 <- "hello"
x11<- data.frame(v1=c(1,2,3),v2=c("a","b","c")) ; x11
x12
x14 <- list(f1 = x00, #벡터
            f2 = x10, #문자
            f3 = x11, #데이터프레임
            f4 = x12, #매트릭스
            f5 = x13) #배열
x14
###########################################################

array1 <- c(1,2,3)
array2 <- c(4,5,6)
array3 <- c(7,8,9)

mat1 <- rbind(array1,array2,array3) ;mat1
mat2 <- cbind(array1,array2,array3) ;mat2

apply(mat1,1,max) # 1은 행 중심 최대
apply(mat1,2,max) # 2는 열 중심 최대
apply(mat2,2,max)
apply(mat2,1,max)

colnames(mat1) <- c("A","B","C")
rownames(mat1)<- c("A","B","C")
mat1
####### ABC
#array1 123
#array2 456
#array3 789


#########################################정규식의 표현#####################
#grep 예제 1
#grep() : 주어진 조건만 골라내는 함수
#grep("찾을내용",data,옵션)
grep_ex <- c("a.txt","A.txt","ab.txt","123.txt","ba123.txt")
grep("^[a]",grep_ex) #a로 시작되는 위치출력
##[1] 1 3
grep("^[a]", grep_ex, value=TRUE) # a로시작되는 값 출력
##[1] "a.txt" "ab.txt"

grep("[0-9]" , grep_ex, value = TRUE) #[0-9]숫자가 포함한
##[1] "123.txt" "ba123.txt"
grep("^[0-9]" , grep_ex, value = TRUE) #[0-9]숫자로 시작되는
grep("^[^0-9]" , grep_ex, value = TRUE) #[0-9]숫자를 시작하는 애들 빼고
grep("^[^a]", grep_ex, value=TRUE)#[a]로 시작되는 애들 빼고 출력
ptn <-c("^[^a,A,0-9]")
grep(ptn,grep_ex,value=1)
############################nchar 예제 1-교제 89페이지
nchar_ex1 <- "매일 매일 기다려"
nchar(nchar_ex1)

nchar_ex2 <- c("a.txt","A.txt","ab.txt","123.txt","ba123.txt")
nchar(nchar_ex2)

#paste 예제-교제 90페이지
paste(1,2,3)
paste("a","b","c")
paste("a","b","c",sep='')#공백제외
paste("a","b","c",sep="-")
paste("010","2976","3929",sep="-")

####################################################################

#collapse ="|"정규식 표현에서 두개 이상의 조건을 동시에 지정 할 때

#substr 예제 - 교재 90페이지
substr('820715',3,6)#3번 째 부터6번째를 가져와라
#strsplit 예제 -교재 91페이지
tel <- "031)123-4567"
strsplit(tel, ")")

########################################################################
#3. stringr
########################################################
install.packages("stringr")
library("stringr")
txt4 <- c("aa.txt","ba.txt","ab.txt","123.txt","ca123.txt")
str_replace(txt4,"a","z")

txt5 <- "매일 매일 기다려"
str_replace(txt5,"매일","내일") #처음 발견하는 애만 바꿔줌
#replace 함수는 stringr깔아야지만 쓸 수 있다.
str_replace_all(txt5,"매일","지금") #다 바꿔줌



##################################논리값####################################
TRUE
FALSE
1<3
1<=3
1>3
1>=3 #이상 수치를 비교 할 때

1==3
1!=3#이상 문자를 비교 할 때

TRUE&TRUE # 두 가지 조건 모두 TRUE 일 때 TRUE, 곱하기 같은 거임
TRUE&FALSE
FALSE&FALSE

TRUE|TRUE # OR 두 가지 중 한 개라도 TRUE 일 때 TRUE
TRUE|FALSE
FALSE|FALSE

#################################7월 14일-1#################################
string<- ("abcd")
is.character(string)


int<- 20
x<- is.numeric(int)
x

boolean <- TRUE
is.logical(boolean)
is.na(x)

set.seed(1) # 난수 값을 고정시키는것
x1 <-runif(20)
x1 

y<-runif(100) ; y #0과 1시아에 난수 100개
n<-round(rnorm(100,75,8),0) ; n

getwd()
write.csv(n, file='C:\\TEMP\\RStudy\\number5.csv')
read.csv('C:\\TEMP\\RStudy\\number5.csv')
mean(n)
#################################################################
no1 <-3
no2 <-NA
no1
no2
no1+no2
no1>no2
sum(1,2,NA)
sum(1,2,NULL)
x<- NA
sum(1,2,x)
sum(1,2,x,na.rm=TRUE)  #na가 있으면 삭제함
x[is.na(x)] <- 6
x
sum(1,2,x)
##################################################################
#####벡터 데이터 조회하기####
var3<- c('멸치깡','맛깡','양파깡','맛짱','빙구')
class(var3)
var3[2]
var3[-2]
var3[2:4]
var3[-2:-4]


var5 <- c(1,3,5,7,9)
3%in%var5 #var5안에 3이 있는가?
4%in%var5 #var5안에 4가 있는가?
Fruit <- c("사과","단감","귤","파인애플","apple")
"감"%in%Fruit
"단감"%in%Fruit
"p"%in%Fruit
"apple"%in%Fruit

##############################################2교시##############

#for문 반복 힛수를 지정
#반복변수 in 횟수를 벡터에저장
for (variable in vector){}

rm(list=ls())

for(x in 1:3){print(x)}

#m<- 10:20 = for(m in 10:20{print(m)})  

for (xi in c("a","b","c")){print(xi)}

for (oi in c("a","b","k")){print(30)}

for(flower in iris$Sepal.Length){print(flower)}
dim(iris)

for(xii in iris$Sepal.Length){print(xii*0.5)}

i<- c(1:10)
for(n in i){print(n*10)+print(n)+print(n/10)}


i <- c(1:1000) 
for(n in i)if(n %% 2 !=0){print(n)}

i <- c(1:1000) 
for(n in i)if(n %% 2 !=0){next}else{print(n)}


i <- c(1:10)
for(n in i)if(n %% 2 !=0){next}else{print(n)}



k=1.0
if(k>=2.0){print("큰 값")}else{print("작은 값")}

##################################################
var1 <- c(1:5)
for(kk in var1){
  if(kk==2){next}
  if(kk==3){print("과장")}else
    if (kk ==4){print("부장")}else
      if (kk==5){print("이사")}
  else{print("사원")}}

##################################################

var10 <- c (10,5,8,7)
for (nu1 in var10){if(nu1>=7)
{print("7보다 크거나 같다")}else {print("7보다 작다")}}
################################오후수업######################
exam <- read.csv("C:/TEMP/RSTUDY/data/csv_exam.csv")
exam
head(exam)
tail(exam)
summary(exam)
max(exam$math)

###########################################################

mpg <- as.data.frame(ggplot2::mpg) ;mpg
head(mpg)
tail(mpg)
max(mpg$year)
summary(mpg)
######################################################
#install.packages("dplyr")
library(dplyr)
mpg$total <- (mpg$cty + mpg$hwy)/2 # 데이터에 변수 생성, 열 추가
mpg$total
View(mpg) 

mean(mpg$total) 

summary(mpg$total)
hist(mpg$total) #히스토그램 생성

mpg$test <- ifelse(mpg$total >= 20, "pass","fail") ;mpg$test

table(mpg$test) #연비 합격 불합격 숫자 각각 보여줌
library(ggplot2)
qplot(mpg$test)
qplot(mpg$total)
##########################################################
View(iris)
iris$con <- ifelse(iris$Sepal.Length >= 5.0, "넓다","좁다") ;iris$con
hist(iris$Sepal.Length)
table(iris$con)
#########################################################
View(mpg)
dim(mpg)
del_1<-mpg[,-c(4,6,8)]#4,6,8 열 삭제
View(del_1)
dim(del_1)
#########################################################
df <-data.frame(rbind(var1 = c(4,3,8),
                      var2 = c(2,6,1))) ;df
colnames(df) <- c(1,2,3)
df
df$var_sum <- (df$var1+df$var2) ;df$var_sum
#var_sum 변수 생성 후
#var1 과 var2의 합을 저장

#var_mean 파생변수 생성 후
#var1 과 var2의 평균을 저장

df$var_mean<-(df$var1+df$var2)/2 ;df$var_mean
df
View(df)
del_2<-df[,-c(1:2)];del_2;View(del_2)
del_2
write.csv(del_2,file='C:\\TEMP\\RStudy\\A.csv')

#################################################
mpg$grade <-ifelse(mpg$total >= 30,"A",
                   ifelse(mpg$total >=20, "B","C"))
mpg$grade
qplot(mpg$grade)

table(mpg$grade) #a,b,c 집계 
####################################################

i <- c(1:100) 
for(n in i)if((n %% 2!=0)&(n %% 3!=0)&
              (n %% 5!=0)&(n %% 7!=0)&(n %% 11!=0)&(n %% 13!=0)&(n %% 17!=0)&
              (n %% 19!=0)&(n %% 23!=0)&(n %% 29!=0)&(n %% 31!=0)){print(n)}
#####################################################


###########################7월15일###########################
#list

v<-c(1,2,3)
l<- list(1,2,3) ; l
v
1
v[1]
l[1]
l[[1]]
#####################################################
klist <- list(9,2,3) ; klist
klist + 100
unlist(klist)
unlist(klist)+100
klist[1]
klist[1]+10
klist[[1]]+10
klist[[2]]+10

names(klist)
LETTERS[1:8]
names(klist) <- LETTERS[1:3]
klist
klist[[3]]
klist[["3"]] # 이러면 안 됨
klist$B

x<-c(1,2,"3")
x
x1 <- x*3
x1
x1<-as.numeric(x) ;x1
x2<-x1*3 ; x2
####################################################
rm(list=ls())
gender <- c('m','w','w','m','m')
g1 <- as.factor(gender)
g1 <- factor(gender, levels=c("w","m")) #순서 바꿔주기
plot(g1)
str(iris)
###################################################2교시###
table(g1) #table 집계
#iris의 종을plot함수를 이용

class(iris$Species)
str(iris$Species)
plot(iris$Species)
plot(iris)
table(iris$Species)


######################56쪽 연습문제####################
getwd()
setwd("C:/TEMP/RSTUDY")

name <- c("Baek", "Geum", "Kim", "Choi", "Seo")
age <- c(26,28,26,25,25)
address <-c("양재","중앙","강남","이수","멀티캠퍼스")
mode(name)
mode(age)
is.character(name)
is.numeric(age)

data.frame(name,age,address)
women
str(women)
plot(women)
wo_data <- lm(weight~height,women)
abline(wo_data, col="blue") # 기울기 예측 해주는 것
x1<- c(1:100)
x1
mean(x1)

##################################################
#실습 1
sid <- c("A","B","C","D")
math <- c(90,80,70,60)
eng <- c(60,75,83,75)
subject <- c("컴퓨터","국어국문","소프트웨어","유아교육")
vvv1<-data.frame(sid,math,eng,subject)
vvv1


#실습 2
install.packages("stringr")
library("stringr")
vvv2<-str_replace(vvv1$math,"80","90")
vvv2

vvv1[2,2] <- 90
vvv1
#실습 3-1
SUM_1<-(vvv1$math+vvv1$eng)
SUM_1
#실습 3-2 
vvv1$AVG_1<-(vvv1$math+vvv1$eng)/2 ;vvv1

#실습 3-3
vvv1$con_1 <- ifelse(vvv1$AVG_1>=85,"우수",
                     ifelse(vvv1$AVG_1>=75,"보통","노력"))

#실습 3-4
vvv3<-vvv1[,-2:-3] ; vvv3

write.csv(vvv3,file='C:\\TEMP\\RStudy\\백승우.csv')
qplot(vvv3$con_1)

##############################오후수업#################
rm(list=ls())
vec1 <-rep("R",5);vec1
vec2 <-seq(1,10,3);vec2
vec3 <-rep(vec2,3);vec3
vec4 <- c(vec2,vec3);vec4
seq(25,-15,-5)
vec5 <- vec4[seq(1,16,2)] ;vec5
########################################################

sum1 <- 0
for(i in 1:10){sum1 <- sum1 +i
print(sum1)}

name <- "Baek"
for(i in 1:5){print(name)}
###########################################################
xxx <- c(2,3,4,2)
switch(xxx[2],"1"= print("one"),
       "2" = print("two"),
       "3" = print("three"),
       print("NOT") )
if(xxx[2]==3){print(3)}
######################################################
sex = c(1,2,1,3,2,1)
score = c(5,4,3,4,2,6)
outlier <- data.frame(sex,score) ; outlier
table(outlier$sex)
table(outlier$score)
outlier$sex<-ifelse(outlier$sex%in%3,NA,outlier$sex)
outlier

outlier$score<-ifelse(outlier$score>=5,"NA",outlier$score)
outlier
########################################################

i<-c(1:10)
for(n in i){print(n*10) 
  print(n)}
#####################################

tt<-c("001",002,003,004) ; tt

###############################7월 16일########################

name <- "scott"
sal <- 3000
L1 <- list(name,sal) ; L1
names(L1) <-c('name','sal') ; L1

###############################1번#######################
result3 <-L1[['sal']]*2 ;result3
###############################2번########################
L2_1 <- c(100,200,300)
L2 <- list("scott",L2_1) ;L2
L2[[2]][2] <-400 ;L2
###############################3번########################

L3 <- list(c(3,5,7) ,c("A","B","C")) ;L3

L3[[2]][1] <- "APPLE" ; L3

########################################4번##############

L4<- list(alpha = 0:4, beta = sqrt(1:5)) ;L4 
#첫 번째 원소는 alpha를 다 의미

L4$alpha <-L4[['alpha']]+10 # = L4$alpha+10 저장의 기능은 없다
L4
##############################5번###############
L5<-list(math = list(95,90),writing = list(90,85),
         reading = list(85,80)) ; L5
average<-unlist(L5) 
average
class(average)
mean(average)
#unlist 리스트 형태를 벡터 형식으로 
#변환 unlist(리스트 이름)
#########################################오늘 진도####
#install.packages("readxl")
library(readxl)
#read.table(위치,sep,col.names,Encoding="UTF-8")

##################################################
rm(list=ls())
###############power reactor reports######외부데이터 수집####
#07/17/2020
#writer : sw Baek
url_1<-"https://www.nrc.gov/reading-rm/doc-collections/event-status/reactor-status/2020/2020PowerStatus.txt"


tr_2 <- read.table(url_1,sep = '|',stringsAsFactors = F, header = T) # factor 방지
tr_2
str(tr_2)
head(tr_2)
tail(tr_2)
summary(tr_2)
str(tr_2)
qplot(tr_2$V3)
search() # 패키지 설치 목록
ls() # 변수들의 목록
dim(tr_2)
class(tr_2)
##########################################################
library(readr)
seocho_streettree <- read_csv("C:/TEMP/RStudy/data/seocho_streettree.csv", 
                              locale = locale(encoding = "CP949"))
View(seocho_streettree)
summary(seocho_streettree)
str(seocho_streettree)
qplot(seocho_streettree$가로수수량)

ga_2<-seocho_streettree[,1:7]
View(ga_2)

write.csv(ga_2,file="C:/TEMP/RStudy/data/ga_2.csv")
#####################################################

install.packages("dplyr")
library(dplyr)
library(readxl)
exdata1 <-read_excel("C:/TEMP/RStudy/data/sample1.xlsx")
exdata1 <- rename(exdata1,Y17_AMT = AMT17,Y16_AMT = AMT16)
exdata1
View(exdata1)
exdata1$AMT <- exdata1$Y17_AMT + exdata1$Y16_AMT
exdata1$AMT
exdata1$CNT <- exdata1$Y17_CNT + exdata1$Y16_CNT
exdata1$CNT
View(exdata1)
exdata1$AGE50_YN<- ifelse(exdata1$AGE >= 50 ,'Y','N')
View(exdata1)

exdata1$AGE_GR10 <- ifelse(exdata1$AGE >= 50, 'Am.50++',
                           ifelse(exdata1$AGE >= 40, 'A2.4049',
                                  ifelse(exdata1$AGE >=30 , 'A3.3039',
                                         ifelse(exdata1$AGE>=20 , 'A4.2029','A5.0019'))))
View(exdata1)
qplot(exdata1$AGE_GR10)
plot(exdata1$AGE_GR10)
exdata1

check <-exdata1%>%select(AMT, Y17_AMT, H = 3)
check
####################################################
midwest1 <- as.data.frame(ggplot2::midwest) ;midwest1
class(midwest1)
View(midwest1)
midwest1 <- rename(midwest1, total = poptotal, asian = popasian)
View(midwest1)
midwest1$전체인구대비아시아인구백분율 <- midwest1$asian/midwest1$total
View(midwest1)
hist(midwest1$전체인구대비아시아인구백분율)
AA <-mean(midwest1$전체인구대비아시아인구백분율) ; AA
midwest1$AM <- ifelse(midwest1$전체인구대비아시아인구백분율 >= AA,'large','small')
View(midwest1)
table(midwest1$AM)
qplot(midwest1$AM)

setwd("C:\\TEMP\\RStudy")
getwd()
#########################join함수##############################
install.packages("plyr")
library("plyr")
x = data.frame(id = c(1,2,3,4,5), height = c(160,171,173,162,165)) ;x
y = data.frame(id = c(5,4,1,3,2), weight = c(55,73,60,57,80))  ;y
z = join(x,y, by='id') ;z

##########################################7월 17일############

library(dplyr)
install.packages(c("bindr","bindrcpp","Rcpp","rlang","plogr"))
install.packages("dplyr", dependecies =Y)

#%>% (컨트롤 쉬프트 m)
library(readxl)
exdata1 <-read_excel("C:\\TEMP\\RStudy\\data\\Sample1.xlsx") ;exdata1
View(exdata1)

exdata1%>%select(ID)

exdata1%>%select(ID,AREA,Y17_CNT)

exdata2<-read.csv("C:\\TEMP\\RStudy\\data\\아파트_실거래가.csv",stringsAsFactors = F)
View(exdata2)
exdata3 <- rename(exdata2, addr = 시군구, apt_name = 단지명, 
                  size =전용면적, amt = 거래금액)
View(exdata3)
str(exdata3$amt)
as.numeric(exdata3$amt)
str(exdata3$amt)


exdata3 %>% select(addr, size) %>%  head(3)
exdata3 %>% head(3)
exdata3 %>% select(-addr)

class(exdata3$size)
exdata3 %>% filter(size >= 84)
exdata3 %>% filter(번지 ==371 & size>= 100)

exdata3 %>% filter(번지 ==464| size >= 100)

class(exdata3$amt)

exdata3 %>%  filter(amt >= 90000)

exdata3 %>% arrange(size)

library(desc)
install.packages("psych")
library(psych)


#################################################################
x = data.frame(id = c(1,2,3,4,5), height = c(160,171,173,162,165)) ;x
y = data.frame(id = c(5,4,1,3,2), weight = c(55,73,60,57,80))  ;y
left<-join(x,y, by='id')
left
library(plyr)


x=data.frame(id = c(1,3,4,5,6), height = c(160,171,173,162,165))
y=data.frame(id = c(5,4,1,3,7), weight = c(55,73,60,57,80))
inner <-join(x,y,by='id', type= 'inner')#type = 'inner' 값이 있는 것만 조인
inner
full1 <-join(x,y,by='id', type= 'full')#type = 'inner' 값이 있는 것만 조인
full1



x = data.frame(id = c(1,2,3,4,6), height = c(160,171,173,162,180)) ;x
y = data.frame(id = c(5,4,1,3,2), weight = c(55,73,60,57,80))  ;y
full <- join(x,y,by='id',type='full') ;full #type = 'full' : 모든항목 조인
#############################################################

x = data.frame(key1 = c(1,1,2,2,3), 
               key2 = c('a','b','c','d','e'),
               val1 = c(10,20,30,40,50)) ; x
y= data.frame(key1 = c(3,2,2,1,1), 
              key2 = c('e','d','c','b','a'),
              val2 = c(500,400,300,200,100));y
join(x,y,by= c('key1','key2'))

##################################################################
sex = c(1,2,1,3,2,1)
score = c(5,4,3,4,2,6)
outlier <- data.frame(sex,score) ; outlier

table(outlier$sex)
table(outlier$score)
outlier$sex_1<-ifelse(outlier$sex%in%3,NA,outlier$sex)
outlier

outlier$score_1<-ifelse(outlier$score>=5,NA,outlier$score)
outlier
outlier_rm <- na.omit(outlier)
outlier_rm

####################################################################
library(dplyr)
outlier_rm
outlier_rm %>% group_by(sex) %>% summarise(man_score=mean(score))
outlier
outlier_rm %>% group_by(sex)

table(outlier_rm$score)
data("mtcars")


rm(list=ls())

sex = c(1,2,1,3,2,1)
score = c(5,4,3,4,2,6)
outlier <- data.frame(sex,score) ; outlier
outlier$sex_1<-ifelse(outlier$sex%in%3,NA,outlier$sex)
outlier$score_1<-ifelse(outlier$score>=5,NA,outlier$score)
outlier
outlier_rm <- na.omit(outlier) ; outlier_rm
outlier_rm %>% group_by(sex) %>% summarise(score_aa = mean(sex))

###################################################################

sat <- c(60,70,55,90,70)
mean(sat)
median(sat)
max(sat)
min(sat)
range(sat)
sd(sat)
quantile(sat)
var(sat)

install.packages("psych")
library(mnormt)
install.packages("mnormt")
rm(list=ls())
###################################################################
library(dplyr)
exam <- read.csv("C:/TEMP/RStudy/data/csv_exam.csv");exam
exam %>%  filter(class == 1)
exam %>%  filter(class != 1)
exam %>%  filter(class != 3)
exam %>%  filter(math > 50)
exam %>%  filter(english >= 80 & math>= 80)
exam %>%  filter(english>= 90 | math>=90)
exam %>%  filter(class ==1|class ==3 | class ==5)
exam %>%  filter(class %in% c(1,3,5))

class1 <- exam %>%  filter(class==1) ; class1
class2 <- exam %>%  filter(class==2) ; class2


mean(class1$math)

exam %>%  select(-math)
exam_mod1 <-exam %>%  filter(class==1) %>% select(english)
exam_mod1
exam
exam %>%  filter(class==1) %>% select(english) %>% head(3)#기본이6개 
exam %>%  arrange(desc(science))
exam %>%  arrange(desc(math))
exam %>%  arrange(class,desc(math))

exam %>% mutate(total = math + english + science) %>%  head

exam<-exam %>%  mutate(total = math + english + science, 
                       mean = (math + english + science)/3,
                       CON = ifelse(mean >= 65 , '합격','과락'))
View(exam)
exam %>% filter(CON=='합격')
exam %>%  arrange(desc(total))
detach("package:plyr", unload=TRUE) 
exam_mod3<-exam %>% summarise(mean_math = mean(math))
exam_mod2<-exam %>% group_by(class) %>% summarise(mean_math =mean(math))

exam_mod3

exam$math
exam %>% distinct(math)

exam %>% sample_n(1)


#################################7월20일################

x <- c("1","2","3","4") ;x
x<-as.numeric(x);x
y <- c(100,200,300,400)
z <- data.frame(id=x,value=y,stringsAsFactors = F)
z
str(z)
z$tot<-(z$id*z$value)
z

#re_name1 <- c("lab","la2")
#read.csv("C:/TEMP/RStudy/data/no_header.csv",header = F, colnames = re_name1)

library(dplyr)
x_before <- c("1","2","3","4")

###########################################################
library(readxl)
rrr<-read.csv("C:/TEMP/RStudy/data/13._역별_주소_및_전화번호.csv", header= T) ; rrr
###########################################################
install.packages("ggplot2")
library(ggplot2)
mpg<-as.data.frame(ggplot2::mpg)
mpg1<-mpg %>% group_by(manufacturer) %>% filter(class=='suv') %>% 
  mutate(tot = (cty+hwy)/2) %>% 
  summarise(mean_tot = mean(tot)) %>% 
  arrange(desc(mean_tot)) %>% head(5) ;mpg1
View(mpg1)
mpg %>%  filter(class== "compact") %>% group_by(manufacturer)%>% 
  summarise(count= n())%>% arrange(desc(count))


###########################################################


#left_join() 왼쪽이 맞으면 한 줄로 다 잡아줌 

library(dplyr)
exam <- read.csv("C:/TEMP/RStudy/data/csv_exam.csv"); exam
exam %>% filter(class ==1)
exam %>% filter(class ==2)
exam %>% filter(class !=1)
exam %>% filter(class !=3)
exam %>% filter(class ==1 | class ==3)
exam %>% filter(math >= 50)
exam %>% filter(english >=80)
exam_1<-exam %>% filter(class == 1 & math >= 50)
write.csv(exam_1,file="C:/TEMP/RStudy/data/exam_1.csv",row.names=F)
read.csv("C:/TEMP/RStudy/data/exam_1.csv")

############################################################

exam %>% filter(class%in%c(1,3,5))

class1 <- exam %>% filter(class ==1) ;class1
class2 <- exam %>% filter(class ==2) ;class2

mean(class1$math)
sd(class1$math)
mean(class2$math)
sd(class2$math)


exam %>% select(math)
exam %>% select(english)
exam %>% select(class,math,english)
exam %>% select(-math)
exam %>% filter(class==1) %>% select(english)
exam %>% filter(class==1) %>% select(math,science)

exam %>% arrange(math)
exam %>% arrange(desc(math))
exam %>% arrange(class,math)

exam<-exam %>% mutate(total = math+english+science)
exam<-exam %>% mutate(mean = (math+english+science)/3)
exam<-exam %>% mutate(test = ifelse(science>=60,"pass","fail"))
exam

exam %>% summarise(mean_math =mean(math))
exam %>% group_by(class) %>% summarise(mean_math = mean(math),
                                       sum_math = sum(math),
                                       median_math=median(math),
                                       n=n())

mpg %>% group_by(manufacturer, drv) %>% summarise(mean_cty=mean(cty)) %>% head(10)

####################################################################

mpg <- as.data.frame(ggplot2::mpg)
#q1
mpg_1<-mpg %>% select(class,cty);mpg_1
mpg_1<-mpg_1 %>% filter(class%in%c('suv','compact')) ;mpg_1
mpg_1 %>% group_by(class) %>% summarise(mean_cty = mean(cty)) %>% arrange(mean_cty)


##############################################################

mpg %>% filter(manufacturer =="audi") %>% arrange(desc(hwy)) %>% head(5)


############################################################
#q1
View(mpg)
mpg_2<-mpg %>% mutate(합산연비 = cty+hwy) ;View(mpg_2)
mpg_2<-mpg_2 %>% mutate(평균연비 = (합산연비)/2)
mpg_3<-mpg_2 %>% group_by(model) %>% arrange(desc(평균연비)) %>% head(3)
View(mpg_3)

mpg<-mpg %>% mutate(합산연비 = cty+hwy) %>% mutate(평균연비 = (합산연비)/2) %>% group_by(model) %>% arrange(desc(평균연비)) %>% head(3)
View(mpg)

################################################################

test1<- data.frame(id=c(1,2,3,4,5),midterm=c(60,80,70,90,85))
test2<- data.frame(id=c(1,2,3,4,5),finalterm=c(70,83,65,95,80))

test1
test2
total44 <- join(test1,test2,by="id") ;total44
total <-left_join(test1,test2,by="id");total

name <-data.frame(class= c(1,2,3,4,5),
                  teacher = c('kim','lee','park','choi','jung'))
name

exam_new <- left_join(exam,name,by="class")
exam_new

group_a <- data.frame(id= c(1,2,3,4,5),
                      test = c(60,80,70,90,85))
group_b <- data.frame(id= c(6,7,8,9,10),
                      test = c(70,83,65,95,80))
group_all <-bind_rows(group_a,group_b)
group_all
###############################################################
rm(list=ls())

Sys.time()
Sys.Date()
class(Sys.Date())
as.Date("2023-12-31")
strptime

D<-as.Date("2023-12-3")
D
format(D,format="%m/%d/%y")

today <- Sys.Date()
today
format(today,format="%y/%m/%d")
format(today,format="%y/%m/%d %A")
format(today,format="%y/%m/%d %a")

d_1 <-as.Date("2023-12-31")
d_1
weekdays(d_1)

d_1 + 1
d_1 + 7
d_1 + 1:7


start <- as.Date("2023-01-01")
end <- as.Date("2025-01-31")
seq(from = start, by =1, length.out = 7)
seq(from = start, by ="7 days",length.out = 7)
d_2<-seq(from = start, by =10, length.out = 52)
format(d_2,format="%y/%m/%d %a")

#########################정규식 표현###############################

Data <-c("abGame","GAME","abgame","gAME","Tetris1","game","tetris5","1ase")
grep("game",Data)
grep("game",Data, value = TRUE) #몇 번째 있는지 주어진 조건 추출
grep("^g+",Data, value= TRUE)
grep("\\d$" ,Data,value = TRUE)
grep("\\d" ,Data,value = TRUE)

a<-c("새우깡","감자깡","양파나라","빙구")
grep("깡$",a, value=T)
grep("^[^ab]",Data,value=T)

grep("[[:digit:]]",Data,value=T)
grep("^[^[:upper:]]",Data,value=T)

x <-"abcd efgh"
nchar(x)

y<-"xyz"
paste(x,y)
substr(x,6,8) # x 변수에서 6번째 부터 8번째까지 
strsplit(x, split="c") 

jumin<-"901225-1234567"
ifelse(substr(jumin,8,8) == 1|3,"남","여")


tel<-"02)352-1252"
strsplit(tel,split = ")|-")
#####################################################

mpg<-as.data.frame(ggplot2::mpg)
View(mpg)
mpg5<-mpg %>% filter(displ >=5 ) %>% mutate(mean_5 = mean(hwy)) ; View(mpg5)
mpg4<-mpg %>% filter(displ <=4 ) %>% mutate(mean_4 = mean(hwy)) ;View(mpg4)


mpg6<-mpg %>% filter(manufacturer%in%c("toyota","audi")) %>% group_by(manufacturer) %>% summarise(mean_cty=mean(cty)) ;View(mpg6)
mpg9 <- mpg %>% filter(manufacturer%in%c("chevrolet","ford","honda")) %>% mutate(chefohon_hwy=mean(hwy));mpg9
View(mpg9)



#########################7월21일################################
#사용자 정의 함수

myfunc_1 <- function(a){b<-a*3
return(b)}

myfunc_1(3)

myfunc_2 <-function(x){b<-x*3
return(b)}

myfunc_3 <- function(a,b){c<-a*b
return(c)}

myfunc_3(5,7)

class(myfunc_3)

ex1<-function(x){if(x%%2==0){x^2}
  else{return(0)}
}

ex1(4)

ex2<-function(y){if(y>=5){"5보다큰수"}
  else{return(0)}}

ex2(9)  

fruits_f <- function(x){if(x=="라떼"){print("Very Good")} 
  else if(x == "아메리카노"){print("Good")} 
  else if(x == "모카"){print("So SO")} 
  else{print("메뉴에 없어요")}
}
fruits_f('라떼')

################################################################


web_url <-"https://www.nrc.gov/reading-rm/doc-collections/event-status/reactor-status/PowerReactorStatusForLast365Days.txt"
web_url
library("dplyr")

power <-read.table(web_url,header = T, sep = "|")
power
head(power)
str(power)
qplot(power$Power)

power$con <-ifelse(power$Power<100,"낮음","높음")
View(power)
qplot(power$con)

power.factor<-as.factor(power$con)
class(power.factor)

power.factor1 <- factor(power.factor, levels=c("높음","낮음")) #순서 바꿔주기
qplot(power.factor1)

report<-as.Date(power$ReportDt, format="%m/%d/%Y")
str(report)
rm(list=ls())
######################################################

df <- data.frame(sex =c("M","F",NA,"M","F"),
                 score = c(5,4,3,4,NA)
)
df
is.na(df) # df의 어느위치에 결측치가 있느냐
table(is.na(df))# False True 각각 몇 개 있는지
table(is.na(df$sex))
mean(df$sex)

library(dplyr)
df_2<-df %>% filter(!is.na(score)) #NA 값이 아닌 것을 뽑아내라 
df_2
mean(df_2$score)

df_<- df %>% filter(!is.na(sex))
df_$sex ;df_2
df_new = data.frame(df_$sex,df_2$score)
df_new
na.omit(df)


##################################7월22일###############


rnorm(4)
rnorm(4,mean = 3, sd =3)
rnorm(4,3,3)
d<-rnorm(30,80,10)
y <- rnorm(200)
hist(d)

plot(density(d))

sample(1:10,5) # 단순 임의 추출
sample(1:10,5,replace=TRUE) # 중복허용
sample(1:10,5,replace=TRUE,prob=c(1,9,10))
#1~10 사이 다섯개 추출 중복 허용 / 1~10으로 준 경우
#가중치가 높은 숫자가 뽑힘

sample(1:10,5,replace = TRUE, prob=c(10,100,3,4,5,6,7,8,9,10))

install.packages("doBy")
library(doBy)
x <- iris$Sepal.Length
x
x_dataframe <-data.frame(x)
head(x_dataframe)

sampleBy(~1,frac = 0.3,data = x_dataframe,systematic = TRUE)
#1부터 3칸씩 띄어서 데이터를 갖고 오는 것
#계통추출 : 모집단의 임의 위치에서 시작해서 

x<-1:5
mean(x)
var(x)
sd(x)
fivenum(1:100)
summary(1:100)
summary(iris)
x <- factor(c("A","B","C","D","D","C","A","A","A"))
table(x)
which.max(table(x))#빈도가 가장 높은 범주
which.min(table(x))#빈도가 가장 낮은 범주

height <- c(164,166,168,170,172,174,176)
mean(height)
median(height)
sd(height)
var(height)

#######################################################

child1 <- c(5,11,1)
child2 <- c(4,7,3)
Toy <- cbind(child1, child2)
rownames(Toy) <-c("car","truck","doll")
Toy
chisq.test(Toy) # p값이 0.05보다 크면 차이가 유의미 하지 않다
fisher.test(Toy)

shapiro.test(rnorm(100,5,3))


xcv <- c(1,1,100000,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1)
xcv_2 <- c(5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5)

xcv_3 <-cbind(xcv,xcv_2)
xcv_3
chisq.test((xcv_3))

######################################################

install.packages("foreign",dependencies = T)
library(foreign)
library(dplyr)
library(ggplot2)
library(readxl)

raw_welfare <- read.spss(file="C:\\TEMP\\RStudy\\data\\Koweps_hpc10_2015_beta1.sav"
                         ,to.data.frame = T)
welfare<-raw_welfare
View(raw_welfare)


head(welfare)
tail(welfare)
View(welfare)


welfare <- rename(welfare,sex=h10_g3,
                  birth = h10_g4,
                  marriage = h10_g10,
                  religion = h10_g11,
                  income = p1002_8aq1,
                  code_job = h10_eco9,
                  code_region = h10_reg7)
View(welfare)

class(welfare$sex)
table(welfare$sex)

welfare$sex <- ifelse(welfare$sex ==1,"male","female")
welfare$sex
qplot(welfare$sex)
welfare$income <- ifelse(welfare$income %in% c(0,999),NA,welfare$income)
table(is.na(welfare$income))




sex_income <- welfare %>% filter(!is.na(income)) %>% group_by(sex)%>% summarise(mean_income =mean(income))

sex_income

ggplot(data = sex_income, aes(x=sex, y=mean_income))+geom_col()

age_income <- welfare %>% filter(!is.na(income)) %>% arrange(birth) %>% group_by(birth) %>% summarise(mean_income = mean(income))
table(age_income)

View(age_income)
library(ggplot2)
age_income$age <- (2020-age_income$birth)
ggplot(data = age_income, aes(x=age, y=mean_income))+geom_col()
head(age_income)


welfare$age <- 2020-welfare$birth+1
View(welfare$age)
View(welfare)
table(welfare$age)
welfare<-welfare %>% mutate(age_con =ifelse(age<30 ,"young",ifelse(age <=59,"middle","old")))
View(welfare)
table(welfare$age_con)
qplot(welfare$age)

##################################7월22일###############


rnorm(4)
rnorm(4,mean = 3, sd =3)
rnorm(4,3,3)
d<-rnorm(30,80,10)
y <- rnorm(200)
hist(d)

plot(density(d))

sample(1:10,5) # 단순 임의 추출
sample(1:10,5,replace=TRUE) # 중복허용
sample(1:10,5,replace=TRUE,prob=c(1,9,10))
#1~10 사이 다섯개 추출 중복 허용 / 1~10으로 준 경우
#가중치가 높은 숫자가 뽑힘

sample(1:10,5,replace = TRUE, prob=c(10,100,3,4,5,6,7,8,9,10))

install.packages("doBy")
library(doBy)
x <- iris$Sepal.Length
x
x_dataframe <-data.frame(x)
head(x_dataframe)

sampleBy(~1,frac = 0.3,data = x_dataframe,systematic = TRUE)
#1부터 3칸씩 띄어서 데이터를 갖고 오는 것
#계통추출 : 모집단의 임의 위치에서 시작해서 

x<-1:5
mean(x)
var(x)
sd(x)
fivenum(1:100)
summary(1:100)
summary(iris)
x <- factor(c("A","B","C","D","D","C","A","A","A"))
table(x)
which.max(table(x))#빈도가 가장 높은 범주
which.min(table(x))#빈도가 가장 낮은 범주

height <- c(164,166,168,170,172,174,176)
mean(height)
median(height)
sd(height)
var(height)

#######################################################

child1 <- c(5,11,1)
child2 <- c(4,7,3)
Toy <- cbind(child1, child2)
rownames(Toy) <-c("car","truck","doll")
Toy
chisq.test(Toy) # p값이 0.05보다 크면 차이가 유의미 하지 않다
fisher.test(Toy)

shapiro.test(rnorm(100,5,3))


xcv <- c(1,1,100000,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1,1)
xcv_2 <- c(5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5,5)

xcv_3 <-cbind(xcv,xcv_2)
xcv_3
chisq.test((xcv_3))

######################################################

install.packages("foreign",dependencies = T)
library(foreign)
library(dplyr)
library(ggplot2)
library(readxl)

raw_welfare <- read.spss(file="C:\\TEMP\\RStudy\\data\\Koweps_hpc10_2015_beta1.sav"
                         ,to.data.frame = T)
welfare<-raw_welfare
View(raw_welfare)


head(welfare)
tail(welfare)
View(welfare)


welfare <- rename(welfare,sex=h10_g3,
                  birth = h10_g4,
                  marriage = h10_g10,
                  religion = h10_g11,
                  income = p1002_8aq1,
                  code_job = h10_eco9,
                  code_region = h10_reg7)
View(welfare)

class(welfare$sex)
table(welfare$sex)

welfare$sex <- ifelse(welfare$sex ==1,"male","female")
welfare$sex
qplot(welfare$sex)
welfare$income <- ifelse(welfare$income %in% c(0,999),NA,welfare$income)
table(is.na(welfare$income))



sex_income <- welfare %>% filter(!is.na(income)) %>% group_by(sex)%>% summarise(mean_income =mean(income))

sex_income

ggplot(data = sex_income, aes(x=sex, y=mean_income))+geom_col()

age_income <- welfare %>% filter(!is.na(income)) %>% arrange(birth) %>% group_by(birth) %>% summarise(mean_income = mean(income))
table(age_income)

View(age_income)

age_income$age <- (2020-age_income$birth)
ggplot(data = age_income, aes(x=age, y=mean_income))+geom_col()
head(age_income)


welfare$age <- 2020-welfare$birth+1
View(welfare$age)
View(welfare)
table(welfare$age)
welfare<-welfare %>% mutate(age_con =ifelse(age<30 ,"young",ifelse(age <=59,"middle","old")))
View(welfare)
table(welfare$age_con)
qplot(welfare$age)

######################################################

height <- c(175,177,179,181,183)
mean(height)
var(height)
sqrt(var(height)) #= sd(height)

#######################상관관계##########################
x <- c(5,1,4,9,16)
y <- c(1:5) ;y
mean(x)
mean(y)
cor(x,y) #  두 변수들 간의 밀접한 관련이 있다.

#독립 변수는 여러개 여도 되지만 종속변수는 하나여야만 함
#1. 분석을 위한 주제 선정
#2. 자료 수집
#3. 독립 / 종속 결정
#4. 자료 가공(셤 문제)
#5. 툴 선택( 셤 문제)
#6. 분석
#7. 해석

library(readxl)
exdata1 <-read_excel("C:/TEMP/RStudy/data/Sample1.xlsx")
exdata1

sex_area_cross <-xtabs(~SEX+AREA,exdata1)
#sex랑 area를 갖고 와서 tab 처리를 하는거임 

sex_area_cross 
chisq.test(sex_area_cross)#카이검정

cor.test(exdata1$AMT17,exdata1$Y17_CNT)#상관관계 분석

t.test(data=exdata1, AMT16 ~SEX, var.equal = T)
#서로간의평균이 얼마나차이가 나는지 보는게 T 검정

x1 <-c(70,72,62,64,71,76,0,65,74,72) # 인상 전
y1 <-c(70,74,65,68,72,74,61,66,76,75) # 인상 후

cor.test(x1,y1)

xy1 = data.frame(x1,y1)
t.test(x1,y1)


cor.test(exdata1$AMT17,exdata1$Y17_CNT)#상관관계 분석
t.test(exdata1$AMT17,exdata1$Y17_CNT)


######################################################

mpg <- as.data.frame(ggplot2::mpg) ;mpg
mpg_diff <- mpg %>% select(class,cty) %>% filter(class %in% c("compact","suv"))
View(mpg_diff)

t.test(data =mpg_diff, cty~class)

########################################################

fintech<-read.csv("C:/TEMP/RStudy/data/FINTECH.csv",stringsAsFactors = T )
View(fintech)
fintech<-fintech %>% mutate(fscore = X3.귀하는.어떤.회사의.금융.어플리케이션을.사용하시나요..중복.응답.가능.+X4..금융.어플리케이션.기능.중.가장.많이.이용하는.기능은.무엇인가요...중복.응답.가능.+X5..4번에서.이용한다고.답변한.기능을.모바일.어플리케이션을.통해.이용하는.이유가.무엇인가요...중복.응답.가능.)
View(fintech)
fintech<-fintech %>% mutate(마케팅동의여부=ifelse(fintech$X6.1..금전적인.대가.대신.귀하의.데이터를.분석.하여.알맞은.금융.상품을.추천.해줄.시.귀하의.데이터를.제공할.의향이.있습니까.=='예','O','X'))
View(fintech)
essence<-fintech %>% select(마케팅동의여부,fscore)
real_essence<-table(essence)
real_essence
qplot(real_essence)
plot(real_essence)
x =fintech$fscore
n<-length(x)
xbar<-mean(x)
s<-sd(x)
alpha = 0.05
weight <- abs(qt(df=n-1,alpha/2))

xl=xbar-weight*(s/sqrt(n)) ;xl
xu=xbar+weight*(s/sqrt(n)) ;xu
cor.test(fintech$fscore,fintech$마케팅동의여부)


#########################7월 24일#################
cc<-c(2,3,4,5,6)
var(cc)
sqrt(var(cc))

.libPaths()
getwd()
setwd()
install.packages("wordcloud")
rm(list = ls())
alert_1 <- readLines("C:\\TEMP/RStudy/data/oracle_alert_testdb.log")
alert_1

#grep("찾을 문자",데이터,value=T)
alert_2<-grep("^ORA",alert_1,value=T) ; alert_2
alert_2 <-substr(alert_2,1,8) ;alert_2
errorcount <- table(alert_2) ; errorcount
head(sort(errorcount,decreasing = T),10)

library(RColorBrewer)
palete<-brewer.pal(9,"Set1")
wordcloud(names(errorcount),
          freq = errorcount, 
          scale = c(0.5,0.5,0.5),
          rot.per = 0, 
          max.freq =3, 
          random.color =T, 
          colors = palete,
          family = "baedal")

install.packages("KoNLP")
install.packages("Sejong")
library(KoNLP)
install.packages("hash")
install.packages("KoNLP")

library(KoNLP)
install.packages("devtools")

library(devtools)

devtools::install_github("lchiffon/wordcloud2")

#KoNLP 패키지 설치

#install.packages("KoNLP")

#library(KoNLP)



#wordcloud2 패키지 설치

install.packages("wordcloud2")

library(wordcloud2)
#[출처] 멀티캠퍼스 빅데이터 프로그래밍 과정 7월(장기)|작성자 파란장미

Sys.getenv("JAVA_HOME")
#자바환경 설정하기
Sys.setenv(JAVA_HOME="C:\\Program Files\\Java\\jre1.8.0_251")
library(KoNLP)
install.packages("rJava")
library(rJava)
install.packages("tau")
library(tau)

####################################################

fruit<-readLines("C:/TEMP/RStudy/data/좋아하는과일2.txt")
fruit
##step3 중복되는 리뷰를 제거해야 할 경우
fruit <- unique(fruit)
fruit
fruit <- str_replace_all(fruit,"[^[:alpha:][:blank:]]","")
fruit

fruit1 <- extractNoun(fruit)
fruit1
fruit2 <- sapply(fruit1,unique)# 한 줄 안에 중복되는 것을 지워 준다.
fruit2

fruit1<-unlist(fruit2)
fruit1
fruit2 <- Filter(function(x){nchar(x)<=20 & nchar(x)>1},fruit1)
fruit2
fruit2 <- gsub("\\s","",fruit2)
fruit2 <- gsub(" ","",fruit2)
fruit2 <- gsub("\\^","",fruit2)
fruit2
fruit2 <- gsub("포도","청포도",fruit2)
fruit2 <- gsub("최고","",fruit2)


fruit2
fruit2 <- gsub("최고","",fruit2)
fruit2
fruit2 <- Filter(function(x){nchar(x)<=20 & nchar(x)>1},fruit1)
fruit2


wordcount<-table(fruit2)
head(sort(wordcount,decreasing = T),10)

txt <-readLines("C:/TEMP/RStudy/data/gsub.txt")
cnt_txt<-length(txt) ;cnt_txt
for( i in 1:cnt_txt){fruit2 <- gsub((txt[i]),"",fruit2)}
fruit2
fruit2 <- Filter(function(x){nchar(x)<=4 & nchar(x)>1},fruit2)
fruit2
wordcount<-table(fruit2)
wordcount

head(sort(wordcount,decreasing = T),10)
fruit2

palete <- brewer.pal(9,"Set3")
wordcloud(names(wordcount),freq=wordcount,scale = c(5,1),
          rot.per=0,min.freq=1,random.order=F,random.color=T,colors=palete)

wordcloud2(fruit2)

#################################################

korea <- readLines("C:/TEMP/RStudy/data/애국가(가사).txt") ; korea
korea <- extractNoun(korea) ;korea
korea<-unlist(korea)
add_words <- c("백두산","남산","철갑","가을","하늘","달")
buildDictionary(user_dic = data.frame(add_words,rep("ncn",length(add_words))),replace_usr_dic = T)

korea_table <- table(korea)
korea<-Filter(function(x){nchar(x)>=2},korea)
korea_table <- table(korea)
korea_table
sort(korea_table,decreasing= T)

wordcloud(names(korea_table),freq=korea_table,scale = c(5,1),
          rot.per=0,min.freq=1,random.order=F,random.color=T,colors=palete)
wordcloud2(korea_table)

wordcloud2(korea_table)
library(wordcloud2)

##############################################################

kakao <- readLines("C:/TEMP/RStudy/data/kakao.txt")
kakao <- extractNoun(kakao) ; kakao
kakao<-unlist(kakao)
kakao<-gsub("^\\s","",kakao) ;kakao
kakao<-gsub("^\\d","",kakao) ;kakao
kakao<-gsub("^\\W","",kakao) ;kakao
kakao<-Filter(function(x){nchar(x)<3 | nchar(x)>4},kakao)
kakao<-gsub("^[^:digit]","",kakao)
kakao
kakao <- Filter(function(x){nchar(x)>1},kakao)
kakao
kakao<-gsub("^","",kakao) ;kakao
kakao
kakao_table<-table(kakao)
kakao_table

wordcloud(names(kakao_table),freq=kakao_table,scale = c(5,1),
          rot.per=0,min.freq=1,random.order=F,random.color=T,colors=palete)





library(readxl)
exdata1 <- read_excel("C:/TEMP/RStudy/data/Sample1.xlsx")
exdata1

sex_area_cross<-xtabs(~SEX +AREA,data = exdata1)
sex_area_cross
sex_area_cross<-table(~SEX +AREA,data = exdata1)



#############################################################

txt <- readLines("C:/TEMP/RStudy/data/hiphop.txt")
txt

head(txt)
library(stringr)

txt <- str_replace_all(txt, "\\W"," ")
head(txt)
extractNoun("대한민국의 영토는 한반도와 그 부속도서로 한다")
nouns<-extractNoun(txt) ;nouns
nouns<-unlist(nouns)
table_hiphop <-table(nouns) ;table_hiphop

df_word <- as.data.frame(table_hiphop,stringsAsFactors = F)
df_word
df_word <- rename(df_word, Var1 = nouns, freq=Freq);df_word

df_word <- filter(df_word, nchar(freq) >= 2)
df_word %>% arrange(desc(freq))
library(wordcloud)
library(RColorBrewer)
palete<-brewer.pal(9,"Set1")

wordcloud(words =df_word$Var1,
          freq = df_word$freq,
          min.freq =2,
          max.words = 200,
          random.order = F,
          rot.per = .1,
          scale = c(4,0.3),
          colors = palete)
wordcloud2(df_word)


##############################################################

install.packages("foreign")
library(readxl)
library(foreign)
library(ggplot2)

raw_welfare <- read.spss(file = "C:/TEMP/RStudy/data/Koweps_hpc10_2015_beta1.sav" ,to.data.frame = T)
raw_welfare

welfare <- raw_welfare

head(welfare)
tail(welfare)

welfare <- rename(welfare, sex = h10_g3,
                  birth = h10_g4,
                  marriage = h10_g10,
                  religion = h10_g11,
                  income = p1002_8aq1,
                  code_job = h10_eco9,
                  code_region = h10_reg7)

welfare$sex
class(welfare$sex)
table(welfare$sex)

table(is.na(welfare$sex))

welfare$sex <- ifelse(welfare$sex ==1, "male","female")
welfare$sex
table(welfare$sex)
qplot(welfare$sex)

class(welfare$income)

summary(welfare$income)
qplot(welfare$income)

###############################################################

library(help=datasets)
getwd()
setwd("C:/TEMP/RStudy/3week")
getwd()


names(airquality)<-tolower(names(airquality))#대->소 변환
head(airquality)
str(airquality)
is.na(airquality)
air_narm<- na.omit(airquality)
air_narm
str(air_narm)

######### 해당 패키지 설치
install.packages("reshape2")
library(reshape2)
#기준열을 전체로 하면 에러나
#melt_test<-melt(air_narm) #기준열을 전체로 지정
#no id variables: using
head(air_narm)
## 월과 바람에 따른 오존값확인
#변형한 데이터를 melt_test2변활 할당

melt_test2 <- melt(air_narm,
                   id.var=c("month","wind"),
                   measure.vars="ozone")
melt_test2

head(melt_test2)
tail(melt_test2)

melt_test3 <-melt(air_narm,
                  id.var = c("month","day"),
                  measure.vars = "ozone")
melt_test3

#cast()세로로 긴 데이터 모양을 가로로 전환
#acast()벡터,행렬,배열 형태로 변환
#dcast()데이터 프레임 형태로 변환
#dcast(데이터 세트, 기준열~반환 열)

#####################7월27일#####################

rm(list=ls())

airquality
names(airquality)<-tolower(names(airquality))#대->소 변환
airquality
air_low<-na.omit(airquality)
head(air_low)
air_narm<-air_low
str(air_narm)
library(reshape2)


melt_test<-melt(air_narm,
                id.vars = c("month","wind"),
                measure.vars = "ozone")
melt_test

melt_sun <-melt(air_narm,
                id.vars = c("month","day"),
                measure.vars = "solar.r")
head(melt_sun)


#################################################


aq_melt <- melt(airquality, id.vars = c("month","day"),na.rm=TRUE)
aq_melt
aq_dcst <- dcast(aq_melt , month+day ~variable)
aq_dcst
acast(aq_melt, day~month~variable)
acast(aq_melt, month~variable,mean)
acast(aq_melt, day~variable,mean)
acast(aq_melt, day~month~variable)
rm(list=ls())
#################################################
library(readxl)
mid_exam <- read_xlsx("C:/TEMP/RStudy/data/middle_mid_exam.xlsx")
View(mid_exam)
names(mid_exam)<-tolower(names(mid_exam))#대->소 변환
mid_exam

mid_melt_m<-melt(mid_exam,
                 id.vars = c("id","class"),
                 measure.vars = "mathematics")
mid_melt_m
mid_melt_e<-melt(mid_exam,
                 id.vars = c("id","class"),
                 measure.vars = "english")
mid_melt_e
mid_acst_m <-acast(mid_melt_m, id~class)
mid_acst_m
mid_dcst_m <-dcast(mid_melt_m , id~class) ;mid_dcst_m


mid_dcst_m2 <-dcast(mid_dcst_m, id~class) ;mid_dcst_m2
mid_dcst_e <-dcast(mid_melt_e , id+class~variable)
#####################7월27일#####################

rm(list=ls())

airquality
names(airquality)<-tolower(names(airquality))#대->소 변환
airquality
air_low<-na.omit(airquality)
head(air_low)
air_narm<-air_low
str(air_narm)
library(reshape2)


melt_test<-melt(air_narm,
                id.vars = c("month","wind"),
                measure.vars = "ozone")
melt_test

melt_sun <-melt(air_narm,
                id.vars = c("month","day"),
                measure.vars = "solar.r")
head(melt_sun)


#################################################


aq_melt <- melt(airquality, id.vars = c("month","day"),na.rm=TRUE)
aq_melt
aq_dcst <- dcast(aq_melt , month+day ~variable)
aq_dcst
acast(aq_melt, day~month~variable)
acast(aq_melt, month~variable,mean)
acast(aq_melt, day~variable,mean)
acast(aq_melt, day~month~variable)
rm(list=ls())
#################################################
library(readxl)
mid_exam <- read_xlsx("C:/TEMP/RStudy/data/middle_mid_exam.xlsx")
View(mid_exam)
names(mid_exam)<-tolower(names(mid_exam))#대->소 변환
mid_exam

mid_melt_m<-melt(mid_exam,
                 id.vars = c("id","class"),
                 measure.vars = "mathematics")
mid_melt_e<-melt(mid_exam,
                 id.vars = c("id","class"),
                 measure.vars = "english")


mid_dcst_m <-dcast(mid_melt_m , id+class~variable)
mid_dcst_m2 <-dcast(mid_dcst_m , id~class)
mid_dcst_e <-dcast(mid_melt_e, id+class~variable)
mid_dcst_e2 <-dcast(mid_dcst_e , id~class)


####################################################

mid_exam %>%group_by(class) %>%  summarise(mean_eng =mean(english), sum_eng = sum(english))
mid_exam %>%group_by(class) %>%  summarise(mean_mat =mean(mathematics), sum_mat = sum(mathematics))

########################################################
mid_exam %>% filter(class == "class1") %>% filter(mathematics >=80)

########################################################

mid_exam %>% arrange(desc(mathematics), english) 

#####################################################

mid_exam %>%filter(mathematics >=80 & english >=85)


#if(!require(ggplot2)){install.packages("ggplot2")require(ggpolt2)}

head(mtcars)
car_cor <- cor(mtcars) ;car_cor
round(car_cor,2)

install.packages("corrplot")
library(corrplot)
dev.new()
corrplot(car_cor)
corrplot(car_cor,method = "pie")

#################################################
mpg<- data.frame(ggplot2::mpg)
mpg
mpg_diff <- mpg %>% select(fl,cty) %>% filter(fl%in%c("r","p"))
mpg_diff$fl<- ifelse(mpg_diff$fl == "r","regular","premium")
mpg_diff$fl
mpg_diff

table(mpg_diff$fl)

#################################################
# 문제0-1]#기존의 변수명을 출력하시오
ls()
# 문제0-2]#나열된 변수명을 모두 삭제
rm(list=ls())
# 문제1-1 R에 있는 airquality 데이터 세트 속성값을 출력하세요
airquality
# 문제1-2] 평균 오존농도(ozone)를 구하시오.(NA값을 지우세요)
airquality$ozone<-na.omit(airquality$ozone)
mean(airquality$ozone)
# 문제1-3] airquality 데이터셋의 항목명이 대소문자가 섞여있다. 이를 소문자로 통일하세요
# tolower 함수이용
# airquality의 값 출력
# Top 6
names(airquality)<-tolower(names(airquality))
head(airquality)
# 문제1-4] airquality 데이터 세트에서   melt 함수를 이용하여 
# "month"와 "day"를 기준으로 한 "wind" 값을 출력하여라.
# [대 소문자를 확인후.. 변수명 입력]
air_melt <- melt(airquality, id.vars = c("month","day"),
                 measure.vars = "wind")
air_melt
#####################################################
#  ggplot2에 있는 데이터 셋 mpg를  데이터프레임에 저장하세요. (변수명 mpg_diff )
# 문제 2-1]  mpg를 데이터 프레임으로 가져오세요.  13-2 #### p299 쉽R 통계분석
#-속성 출력
#-상위 6위
######

mpg_diff <- as.data.frame(ggplot2::mpg)
str(mpg_diff)
head(mpg_diff)

## -------------------------------------------------------------------- ##
# 문제 2-2] mpg_diff 의 class,  hwy 변수를 선택하여 
# class 변수가 "pickup"인 자동차와 "suv"를 추출하세요. (%in% or | )
# [추출한 자료는 mpg_diff10 변수로 저장]
# - 상위 6개 출력
mpg_diff10<-mpg_diff %>% select(class,hwy) %>% filter(class%in%c("pickup","suv"))
mpg_diff10
head(mpg_diff10)
# 문제 2-3]mpg_diff10  class의 빈도표 출력(table 함수 이용)
table(mpg_diff10$class)
qplot(mpg_diff10$class)

# 문제 2-4] t.test() 이용하여 t 검정 실시. 
# 앞에서 추출한 mpg_diff10 데이터를
# 이용하여 비교할 값인 hwy(연비) 변수와 
# 비교할 집단 class(자동차종류)를 지정(두 집단의 분산은 같은 조건임)
t.test(data =mpg_diff10, hwy~class, var.equal = T)
#class가 비교할 대상 뒤로 넣어줘야 함

# 문제 5]문제4의 분석값을 해석하세요.
#두 class 간의 평균 고속도로 연비가 차이가 있다.

#####################ggplot2######################
airquality

ggplot(airquality,aes(x=day, y= temp))+ geom_line(size= 1, color="red")+geom_point()

ggplot(mtcars, aes(x = cyl))+geom_bar(width=0.5)
ggplot(mtcars, aes(x= factor(cyl)))+geom_bar()
ggplot(mtcars, aes(x = factor(cyl)))+geom_bar(aes(fill = factor(gear)))
View(mtcars)

ggplot(mtcars, aes(x=factor(cyl)))+
  geom_bar(aes(fill=factor(gear)))+coord_polar()

ggplot(mtcars, aes(x = factor(cyl)))+geom_bar(aes(fill = factor(gear)))+coord_polar(theta = "y")

ggplot(airquality, aes(x = day, y=temp,group =day))+geom_boxplot()

a.economics<-as.data.frame(ggplot2::economics)
str(a.economics)

ggplot(economics, aes(x = date , y=unemploy))+geom_line()+geom_abline(intercept = 5129.4547 , slope = 0.3384 )+geom_hline(yintercept = mean(a.economics$unemploy))
lm(unemploy ~date, data = a.economics)


#######################7월28일#######################
rm(list=ls())
?mtcars
install.packages("ggplot2")
library(ggplot2)

lm(economics)

value <-c(2.5,3.2,5.7,4.6,5.8)
year <-c(2016:2020)

df_5<- data.frame(value,year)
df_5
ggplot(df_5, aes(x=value,y=year))+geom_line()+geom_abline(intercept = -1610.0 , slope = 0.8, col="red" ,size=5)

f_fit <- lm(value~year)
dev.new()       
abline(f_fit)

###################################################

value<-c(2.5,3.2,5.7,4.6,50,100)
year1 <- c(2016:2021)
vy<-data.frame(value, year1)

summary(value)

plot(year1, value, ylim= c(0,100))
f_fit<-lm(value ~year1)
abline(f_fit, col="red")
summary(f_fit)

##################################################

install.packages("foreign", dependencies = T)
library(foreign)

raw_welfare <- read.spss(file="C:/TEMP/RStudy/data/Koweps_hpc10_2015_beta1.sav",to.data.frame = T)

# 복사본 만들기
welfare <- raw_welfare

head(welfare)
tail(welfare)
View(welfare)
dim(welfare)
str(welfare)
summary(welfare)
# 변수값 수정
welfare <- rename(welfare,
                  sex = h10_g3,            # 성별
                  birth = h10_g4,          # 태어난 연도
                  marriage = h10_g10,      # 혼인 상태
                  religion = h10_g11,      # 종교
                  income = p1002_8aq1,     # 월급
                  code_job = h10_eco9,     # 직종 코드
                  code_region = h10_reg7)  # 지역 코드


#### 09-2 ####

class(welfare$sex)
table(welfare$sex)
# 이상치 확인
table(welfare$sex)

# 이상치 결측 처리
#welfare$sex <- ifelse(welfare$sex == 3, NA, welfare$sex)

# 결측치 확인
#table(is.na(welfare$sex))



# 성별 항목 이름 부여
welfare$sex <- ifelse(welfare$sex == 1, "male", "female")
table(welfare$sex)
qplot(welfare$sex)

###################################################

#범주형 데이터 : 사전에 정해진 특정 유형으로 분류 되는 데이터
#명목형 : 분류된 데이터 사이의 비교가 불가능한 경우
#ex) 성별, 좌파/우파
#순서형 : 분류된 데이터 사이 순서 배열이 가능한 경우
#ex) 대/중/소 ,수/우/미/양/가
#연속형 데이터 : 정량적으로 표현된 데이터
#등간 척도 : 온도, 시간
#비율 척도 : 키,몸무게,영어점수,관찰 빈도
# 연속형은 t.test 사용 범주형은 chisq.test사용

######################################################

install.packages("rvest") # html로 생성된 웹페이지를 r로 불러오는 패키지
install.packages("stringr")

library(rvest)
library(stringr)


######################################## 반도
main_url = "https://movie.naver.com/movie/bi/mi/pointWriteFormList.nhn?code=185917&type=after&onlyActualPointYn=Y&onlySpoilerPointYn=N&order=newest&page="
#################################
reply_list = character()
star_list = numeric()
date_list = character()


for(page_url in 1:10){
  
  url = paste(main_url, page_url, sep="")
  
  content = read_html(url)
  
  node_1 = html_nodes(content, ".score_reple p")
  node_2 = html_nodes(content, ".score_result .star_score em")
  node_3 = html_nodes(content, ".score_reple em:nth-child(2)")
  
  reply = html_text(node_1)
  star = html_text(node_2)
  date = html_text(node_3)
  date = as.Date(gsub("\\.","-",date))      # 날.을 -로 바꾸기
  
  reply_list = append(reply_list, reply)
  star_list = append(star_list, star)
  date_list = append(date_list, date)
  
}

df = data.frame(reply_list, star_list, date_list)  # 위에 for문 필드명을 아래 colnames 함수를 이용해서 한글로 바꿔준다.
colnames(df) = c("댓글","평점","날짜")  #

setwd("c:/TEMP/RStudy/data")                   # 저장할 경로 설정
write.csv(df, "Peinsula.csv" , sep ="," , row.names = FALSE)
write.csv(df, "bamshell_1.csv")
################################7월 30일######################

rm(list=ls())
install.packages("readxl")
library(readxl)

ddd <-read_excel("C:/TEMP/RStudy/data/취합1.xlsx")
View(ddd)
cor.test(ddd$`1인당 부가가치증감율`,ddd$`주가 상승률`)


getwd()
dataset<-read.csv("c:/TEMP/RStudy/data/dataset.csv",header=T)
str(dataset)

print(dataset)
View(dataset)

dataset$age
dataset$resident

length(dataset$age)


x<- dataset$gender ;x
y <- dataset$price ;y

plot(x,y)

plot(dataset$price)
dataset["gender"]
dataset["price"]

dataset[c("job","price")]

x <- dataset$price 
x[1:30]
price2 <- na.omit(dataset$price)
sum(price2)
length(price2)
data
dataset$price3
dataset$price3 = ifelse(!is.na(x),x,round(mean(x,na.rm= TRUE),2))
dataset$price3
#################################################################

#범주형 변수의 극단치 확인
table(dataset$gender)
pie(table(dataset$gender))
install.packages("ggplot2")


dataset <- subset(dataset, gender ==1 | gender==2) ; dataset
length(dataset$gender)
pie(table(dataset$gender) , col = c('red','blue'))

dataset<- read.csv("C:/TEMP/RStudy/data/dataset.csv", header = T)

length(dataset$price)
max(dataset$price, na.rm= T)
range(dataset$price, na.rm= T)
plot(dataset$price)
summary(dataset$price)


dataset2 <- subset(dataset, price >= 2 & price <= 8)
dataset2
length(dataset2)
dataset2$price
stem(dataset2$price)

summary(dataset2$age)
length(dataset2$age)
dataset2 <- subset(dataset2, age >= 20 & age <= 69)
length(dataset2$age)
boxplot(dataset2$age)

dataset2$resident2[dataset2$resident==1]<-'1.서울특별시'
dataset2$resident2[dataset2$resident==2]<-'2.인천광역시'
dataset2$resident2[dataset2$resident==3]<-'3.대전광역시'
dataset2$resident2[dataset2$resident==4]<-'4.대구광역시'
dataset2$resident2[dataset2$resident==5]<-'5.시구군'
dataset2$resident2

head(dataset2)


dataset2[c("resident","resident2")]

dataset2$job2[dataset2$job == 1] <- '공무원'
dataset2$job2[dataset2$job == 2] <- '회사원'
dataset2$job2[dataset2$job == 3] <- '개인사업'

dataset2[c("job2","job")]


dataset2$age2[dataset2$age <= 30] <- "청년층"
dataset2$age2[dataset2$age > 30] <- "중년층"
dataset2$age2[dataset2$age > 55] <- "장년층"

dataset2[c("age","age2")]
table(dataset2$age2)

survey <- dataset2$survey
csurvey <- 6-survey
csurvey
head(csurvey)
table(csurvey)

dataset2$survey <- csurvey 
head(dataset2)

#############################################################

ddd <-read_excel("C:/TEMP/RStudy/data/취합1.xlsx")
ddd

y = ddd$`주가 상승률`
x = ddd$`1인당 부가가치증감율`
df <- data.frame(x,y)
df

result.ddd <- lm(formula = y~x,data =df)
result.ddd
plot(df)
abline(result.ddd,col= 'red')

summary(result.ddd)

#######################7월31일################################

mpg <- as.data.frame(ggplot2::mpg)
mpg

names(airquality)<- tolower(names(airquality))
str(mpg)
ggplot(data =mpg, aes(x = displ, y =hwy))+geom_line() + xlim(3,6)
ggplot(data =mpg, aes(x = displ, y =hwy))+geom_point() + ylim(10,30) + xlim(3,6)

###########################################################

library(dplyr)
df_mpg <- mpg %>% group_by(drv) %>% summarise(mean_hwy = mean(hwy))
df_mpg

ggplot(data = df_mpg, aes(x = drv, y = mean_hwy))+geom_col()
ggplot(data =mpg, aes(x = drv)) + geom_bar()       

ggplot(data = df_mpg, aes(x = reorder(drv, -mean_hwy), y = mean_hwy))+geom_col()       

#순서를 바꾸고 싶을 때 reorder

ggplot(data = mpg, aes(x = drv))+geom_bar()
ggplot(data = mpg, aes(x=hwy))+ geom_bar()
##########################################################
install.packages("ggplot2")
library(ggplot2)
mpg_q1<-mpg %>% select(cty,hwy)
mpg_q1
ggplot(data =mpg_q1, aes(x = cty, y=hwy)) + geom_point()


q2 <- as.data.frame(ggplot2::midwest)
q2 %>% select(poptotal, popasian)
ggplot(data =q2, aes(x = poptotal, y=popasian),options(scipen = 99)) + geom_point()+ ylim(0,10000)+xlim(0,500000)

ggplot(data =df_mpg,aes(x =reorder(drv, mean_hwy),y= mean_hwy))+geom_col()

#상자그래프
ggplot(data = mpg, aes( x= drv, y= hwy))+ geom_boxplot()

install.packages("lattice")
library(lattice)


names(airquality) <-tolower(names(airquality))

str(airquality)
xyplot(ozone~wind,data = airquality,col="orange")
ggsave("orange_lattice.png")


xyplot(ozone~wind |factor(month), data =airquality)

xyplot(ozone + solar.r ~wind |factor(month), 
       data= airquality, 
       col = c("red","blue"),layout=c(5,1)) #1행 5열


###########################################################

xx <- c(10:20)
yy <- xx^2
plot(xx,yy,type="h",col="blue")
dev.new()
par(mfrow=c(2,4))
types=c("p","l","o","b","c","s","S","h")

for(i in 1:8){plot(xx,yy,type = types[i],col = "blue")}

#######################################################

url_1 <-"https://www.nrc.gov/reading-rm/doc-collections/event-status/reactor-status/PowerReactorStatusForLast365Days.txt"

power_1 <-read.table(url_1, header = T, sep = "|", stringsAsFactors = F,nrows = 97, skip=3)
# 100줄만 보고 팩터화 방지
str(power_1)

####################################################

ggplot(data = economics, aes(x = date, y = unemploy))+geom_line()

################################################
ggplot(data = economics, aes(x= date, y =psavert))+geom_line()
getwd()
setwd("C:/TEMP/RStudy/4week")
getwd()
ggplot()
ggsave("time_psavert.png")

ggplot(data = mpg, aes(x =drv, y = hwy))+geom_boxplot()

class_mpg <- mpg %>% filter(class %in% c("compact","subcompact","suv"))
library(dplyr)
ggplot(data = class_mpg,aes(x=class, y = cty))+geom_boxplot()
rm(list=ls())
################################8월1일##############
## again
value1<- c(2.5, 3.2, 5.7, 4.6, 5.8,50)   #50 add
year1 <- c(2016:2021)
df_6 <- data.frame(value1,year1)
fit_2 <- lm(value1 ~ year1)  #value1(y축)
plot(year1,value1)
abline(fit_2, col="blue")
summary(fit_2)

####################
#10장 googleVis p234

install.packages("googleVis")
library(googleVis)
library(ggplot2)

str(economics)

# 날짜별(date) 개인 저축률의 변화(pasvert) 값을 구한 후 motion 변수에 할당
motion <- gvisMotionChart(economics, idvar="psavert", timevar = "date")
plot(motion)                         # motion 변수의 값으로 그래프 그리기

str(CityPopularity)
head(CityPopularity)

# 게이지의 측정 데이터(labelvar)는 도시명, 값(numvar)은 인구수, 눈금은 0~1000으로 옵션 지정
gauge <- gvisGauge(CityPopularity, labelvar="City", numvar="Popularity", options=list(min=0, max=1000))
plot(gauge)                          # gauge 변수 값으로 그래프 그리기


#눈금은 0~1000으로 옵션 지정

####3




# 10장 ggmap
# Google Map Platform 출시로 인해 ggmap 패키지 변경됨

install.packages("devtools")
library(devtools)
install_github("dkahle/ggmap")
library(ggmap)
install.packages("ggmap")
install.packages("dkahle")



# http://developers.google.com/maps/terms
# 1. 상기 주소에서 구글 계정 인증 필요
# 2. 프로젝트 신규로 생성하기
# 3. Google Maps Platform API Key 활용하기

# 프로젝트 설정 이후 API Key 확인하기
# https://console.cloud.google.com/

#googleAPIkey = "API 키 입력하기"
googleAPIkey1 <- 
  "AIzaSyBDWRx1UZjT1i4nVReN0blTNkQU_Q4C8Aw"

# seoul의 위치 정보를 가져온 후 gg_seoul 변수에 할당
register_google(googleAPIkey1)
gg_seoul <- get_googlemap("seoul", maptype = "roadmap")
ggmap(gg_seoul)                           # gg_seoul의 위치 값에 따른 구글 지도 호출



#구글 지도 위에 산점도 그리기
library(dplyr)
library(ggplot2)

# 한글 검색을 위해 utf8로 변환한 후 위도와 경도 데이터를 geo_code 변수에 할당
geo_code <- enc2utf8("양재동58번지") %>% geocode()
geo_data <- as.numeric(geo_code)   # 리스트를 숫자로 변환하여 geo_data 변수에 할당

# 대전역의 위치정보를 가져온 후 구글 지도 호출
get_googlemap(center=geo_data, maptype="roadmap", zoom=15) %>% ggmap()+
  # geo_code에 있는 경도(lon)와 위도(lat) 값으로 산점도 그리기
  geom_point(data=geo_code, aes(x=geo_code$lon, y=geo_code$lat))




#### 비율 
#
#
# 과제로 크기를 15로 해서 역삼역의 위치를 가져오시오
#
################################################
as.data.frame(women)
gauge <- gvisGauge(women, labelvar="height", numvar="weight", options=list(min=0, max=1000))
plot(gauge)


오늘회식 <- c("신수민"= "전", 
             "백승우" = "지리", 
             "최하은" = "순대곱창", 
             "김선홍" = "짱개", 
             "이인재" = "파전", 
             "고근희" = "곱창구이",
             "금민섭" = "황도",  
             "김승민" = "보쌈(이백)")


sample(오늘회식,1)

