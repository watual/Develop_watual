/*==================================================*/
--실습1
SELECT restaurant_name as "음식점", addr as 
from food_orders

/*
SELECT : 데이터를 가져오는 기본 명령어, 데이터를 조회하는 모든 Query 에 사용됨
from : 데이터를 가져올 테이블을 특정하는 문법
{
    SELECT x1 as "x2"
    from y1
    해설 : y1테이블에서 x1이라는 컬럼을 x2라는 별명을 붙여 호출, 별명의 경우 영문명이면 "" 안붙여도 괜찮음
}
*/

/*==================================================*/
--실습2
SELECT 	order_id as ord_no,
		price as "가격", 
		quantity as "수량"
from food_orders
/*==================================================*/
--실습3
SELECT 	*
from customers 
WHERE gender = 'male'
/*
WHERE : 원하는 데이터 값을 가진 자료만 보고 싶을때 사용
데이터를 사용할때는 ''를 사용
*/
/*==================================================*/
--실습4
SELECT 	*
from customers 
WHERE gender<>'male'
/*
비교 연산자 : = , > , < , >= , <= , <>
between x1 and x2 : x1과 x2 사이의 값들
in (x1, x2, x3) : x1, x2, x3 에 해당하는 값
like 'x1%' : x1 문자로 시작하는 값 호출 
like '%x1%' : x1 문자가 포함된 값 호출
like '%x1' : x1 문자로 끝나는 값 호출
*/
/*==================================================*/
--실습5
SELECT *
from customers
WHERE age >= 21
and gender = 'male'
/*
논리연산자
AND : age>20 and gender='female'
OR  : age>20 or gender='female'
NOT : not gender='female'
*/
/*==================================================*/
--과제
SELECT 	restaurant_name as "식당명", customer_id as "고객번호"
from  food_orders fo 
WHERE cuisine_type = 'korean'
AND food_preparation_time BETWEEN 20 and 30
/*==================================================*/
--실습6
select food_preparation_time,
       delivery_time,
       food_preparation_time + delivery_time as total_time
from food_orders
/*
SUM, AVG, COUNT, MIN, MAX 사용가능
select x1+x2 as x : x1값 + x2값을 x라는 열에 표시, 마찬가지로 /,*,- 가능
SELECT sum(x1) x2 : x1값들을 모두 더해 x2라는 별명을 주고 표시
*/