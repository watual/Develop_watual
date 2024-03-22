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