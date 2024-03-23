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
/*==================================================*/
--실습7
select count(1) count_of_orders,
       count(distinct customer_id) count_of_customers
from food_orders
/*
SELECT  count(1) x2,
        count(distinct x1) x2
from y1
해설 : 1과 *은 전체를 선택하는 언어, y1에 모든 값을 세아려서 x2에 표시, distinct는 데이터 종류의 수를 표시
ex) x1의 데이터 수는 10개지만 종류는 7개인 경우 distinct를 사용하면 7로 표시
*/
/*==================================================*/
--실습8
select min(price) min_price,
       max(price) max_price
from food_orders
/*
그냥 최대최소
*/
/*==================================================*/
--실습9
select cuisine_type,
       sum(price) sum_of_price
from food_orders
group by cuisine_type
/*
group by : 원하는 그룹으로 묶어서 연산하고 정렬하고 싶을때 사용
*/
/*==================================================*/
--실습10
select cuisine_type,
       sum(price) sum_of_price
from food_orders
group by cuisine_type
order by gender, sum(price) desc
/*
order by : 원하는 데이터들을 기준으로 정렬, 역정렬의 경우 끝에 desc 추가
*/
/*==================================================*/
--실습11
SELECT  customer_id '고객',
        customers cus
from    food_orders
WHERE   cuisine_type = 'korean'
group by customer_id
order by customers
/*==================================================*/
--과제
select 	cuisine_type ,
		MIN(price) min_price,
		MAX(price) max_price
from food_orders
group by cuisine_type 
order by MIN(price) DESC 
/*==================================================*/
--실습12
select restaurant_name "원래 상점명",
       replace(restaurant_name, 'Blue', 'Pink') "바뀐 상점명"
from food_orders
where restaurant_name like '%Blue Ribbon%'
/*
REPLACE, SUBSTRING, CONCAT : 문자 포맷이 다를때, SQL로 가공
replace(소속컬럼, 현재값, 바꿀값)
*/
/*==================================================*/
--실습13
select addr "원래 주소",
       substr(addr, 1, 2) "시도"
from food_orders
where addr like '%서울특별시%'
/*
substr(소속컬럼, 시작위치, 글자수)
ex) substr(addr, 1, 2) : addr의 데이터들을 1번째 글자부터 2개만 추출해서 표시
*/
/*==================================================*/
--실습14
select restaurant_name "원래 이름",   
       addr "원래 주소",
       concat('[', substring(addr, 1, 2), '] ', restaurant_name) "바뀐 이름"
from food_orders
where addr like '%서울%'
/*
concat(x1, x2, x3, ...)
해설 : x1, x2, x3등 원하는 데이터를 한번에 표시
*/
/*==================================================*/
--실습15
select restaurant_name,
       cuisine_type "원래 음식 타입",
       if(cuisine_type='Korean', '한식', '기타') "음식 타입"
from food_orders
/*
IF, CASE 사용법
if(조건, 참일때 표시할 값, 거짓일때 표시할 값)
*/
/*==================================================*/
--실습16
select order_id,
       price,
       quantity,
       case when quantity=1 then price
            when quantity>=2 then price/quantity 
            else '기타' end "음식 단가"
from food_orders
/*
원하는 값일때 원하는 값으로 표시
*/
/*==================================================*/
--실습17
select restaurant_name,
       price/quantity "단가",
       cuisine_type,
       order_id,
       case when (price/quantity <5000) and cuisine_type='Korean' then '한식1'
            when (price/quantity between 5000 and 15000) and cuisine_type='Korean' then '한식2'
            when (price/quantity > 15000) and cuisine_type='Korean' then '한식3'
            when (price/quantity <5000) and cuisine_type in ('Japanese', 'Chinese', 'Thai', 'Vietnamese', 'Indian') then '아시아식1'
            when (price/quantity between 5000 and 15000) and cuisine_type in ('Japanese', 'Chinese', 'Thai', 'Vietnamese', 'Indian') then '아시아식2'
            when (price/quantity > 15000) and cuisine_type in ('Japanese', 'Chinese', 'Thai', 'Vietnamese', 'Indian') then '아시아식3'
            when (price/quantity <5000) and cuisine_type not in ('Korean', 'Japanese', 'Chinese', 'Thai', 'Vietnamese', 'Indian') then '기타1'
            when (price/quantity between 5000 and 15000) and cuisine_type not in ('Korean', 'Japanese', 'Chinese', 'Thai', 'Vietnamese', 'Indian') then '기타2'
            when (price/quantity > 15000) and cuisine_type not in ('Korean', 'Japanese', 'Chinese', 'Thai', 'Vietnamese', 'Indian') then '기타3' end "식당 그룹"
from food_orders
/*==================================================*/
--실습18
SELECT 	addr, 
		CASE	WHEN if(SUBSTR(addr, 1, 2)='서울', delivery_time *1.1, delivery_time) > 30 then price*0.1
				WHEN if(SUBSTR(addr, 1, 2)='서울', delivery_time *1.1, delivery_time) > 25 then price*0.05
				else price end '수수료'
FROM food_orders
order by addr
/*==================================================*/
--실습19
/*
cast : 숫자 데이터를 문자라고 인식시키거나, 문자데이터를 숫자로 치환해 인식시킨다
ex)
cast(if(rating='Not given', '1', rating) as decimal) : 문자를 숫자로
concat(restaurant_name, '-', cast(order_id as char)) : 숫자를 문자로
*/
/*==================================================*/
--과제
SELECT 	order_id ,
		restaurant_name ,
        day_of_the_week ,
        delivery_time ,
        IF(
            day_of_the_week = 'weekday',
            /*weekday*/
            IF(
                delivery_time > 25 ,
                'Late' ,
                'On-time'
            ),
            /*weekend*/
            IF(
                delivery_time > 30 ,
                'Late' ,
                'On-time'
            )
        ) "지연여부"
FROM food_orders
/*==================================================*/
--실습20
rom 
(
select order_id, restaurant_name, food_preparation_time-25 over_time
from food_orders
) aselect order_id, restaurant_name, if(over_time>=0, over_time, 0) over_time
f
/*
Subquery(서브쿼리) : 원하는 자료를 sub로 만들어 활용하는 방법
해설 : 위의 예문에서 food_preparation_time 컬럼에서 - 25 한 값을 over_time 으로 새롭게 컬럼을 생성해 사용 
*/
/*==================================================*/
--실습21
select restaurant_name,
       price_per_plate*ratio_of_add "수수료"
from 
(
	select restaurant_name,
	       case when price_per_plate<5000 then 0.005
	            when price_per_plate between 5000 and 19999 then 0.01
	            when price_per_plate between 20000 and 29999 then 0.02
	            else 0.03 end ratio_of_add,
	       price_per_plate
	from 
		(
		select restaurant_name, avg(price/quantity) price_per_plate
		from food_orders
		group by 1
		) a
) b
/*==================================================*/
--실습22
select 	cuisine_type, 
		total_quantity,
		count_res,
       case when count_res>=5 and total_quantity>=30 then 0.005
            when count_res>=5 and total_quantity<30 then 0.008
            when count_res<5 and total_quantity>=30 then 0.01
            when count_res<5 and total_quantity<30 then 0.02 end ratio_of_add
from
(
select cuisine_type,
       sum(quantity) total_quantity,
       count(distinct restaurant_name) count_res
from food_orders
group by cuisine_type
) a
/*
group by 1 : SELECT의 첫 컬럼으로 묶는 것, 오라클에선 안되는 경우가 있음
위의 예문에서 group by cuisine_type 과 같음
*/
/*==================================================*/
--실습23
SELECT *
FROM food_orders inner join payments on food_orders.order_id=payments.order_id 
/*
Join 사용법
Join에는 Left Join 과 Inner Join 2가지가 있다
Left Join은 비교 컬럼에서 일치하는 값이 없어도 기존 컬럼의 데이터를 공백상태로 유지하는 것이고
Inner Join은 비교 컬럼이 있는 값들만 병합해 표시한다
*/
/*==================================================*/
--실습24
SELECT  f.order_id,
        f.customer_id,
        c.name,
        c.age
FROM food_orders f left join customers c on f.customer_id=c.customer_id
/*
join한 상태에서 각 컬럼의 데이터를 골라 사용하고 싶으면 이름을 정한뒤 지정한다
*/
/*==================================================*/
--과제 : 식당별로 음식 주문 평균과 연령 평균을 계산하고 그룹분류
SELECT  restaurant_name ,
		CASE 	WHEN avg_price>30000 THEN 'price_group4'
				WHEN avg_price>=10000 THEN 'price_group3'
				WHEN avg_price>=5000 THEN 'price_group2'
				ELSE 'price_group1' END price_group ,
		CASE 	WHEN avg_age>=50 THEN 'age_group4'
				WHEN avg_age>=40 THEN 'age_group3'
				WHEN avg_age>=30 THEN 'age_group2'
				ELSE 'age_group1' END age_group  
FROM
(
SELECT  f.restaurant_name AS restaurant_name ,
        avg(f.price) AS avg_price ,
        avg(c.age) AS avg_age
FROM    food_orders f INNER JOIN customers c ON f.customer_id=c.customer_id
GROUP BY f.restaurant_name
) a
ORDER BY restaurant_name
/*==================================================*/
/*
#Tip
#GROUP
1. 그룹 컬럼이 여러 개인 경우 SELECT 첫 번째 컬럼으로 먼저 크게 묶이고, 두번째 컬럼으로 작게 묶인다
2. 그룹으로 묶었을때 데이터가 숫자면 평균..?, 텍스트면....?

#집계함수를 사용하지 않고 int 데이터나 str 데이터를 group by 한다면?
    -그룹   	19	경기도 양평군 서종면 삼회리
    12 Chairs	20	경기도 광주시 실촌읍 만선리
    12 Chairs	19	경기도 양평군 서종면 삼회리

    -그룹   18  대구광역시 수성구 욱수동
    Amma	19	부산직할시 강서구 화전동
    Amma	18	대구광역시 수성구 욱수동

    -그룹       18  인천직할시 남동구 도림동
    Bareburger	18	경기도 인천시 중구 북성동1가
    Bareburger	18	인천직할시 남동구 도림동
    Bareburger	20	경기도 연천군 왕징면 고잔하리
    Bareburger	20	경기도 성남시 분당구 하산운동
    Bareburger	19	경기도 성남시 중원구 이매동
    Bareburger	16	경기도 화성시 송산면 고포리
    Bareburger	19	광주직할시 북구 생룡동

#값 대체하기
1. IF(x1 != null, x1, 대체값)
2. coalesce(x1, 대체값) : x1이 null 일때 대체값으로 대체
#비상식적인 데이터 처리
ex) 나이가 -4세, 결제일자가 40년대
1. 조건문으로 값을 범위 지정
#SQL로 Exel Pivot Table 구현하기
#Query
1. SQL에서 Query문을 작성 후 Enter로 띄워서 작성하면 개별적인 쿼리문이 된다
2. 띄워서 작성된 개별 쿼리문 중 실행시키고 싶은 쿼리문만 커서를 위치시켜 실행시킬 수 있다
*/
/*==================================================*/
--실습25 : male일때만 나타나는 데이터, female일때만 나타나는 데이터를 작성해 피벗으로 제작
select age,
       max(if(gender='male', order_count, 0)) male,
       max(if(gender='female', order_count, 0)) female
from 
(
select b.gender,
       case when age between 10 and 19 then 10
            when age between 20 and 29 then 20
            when age between 30 and 39 then 30
            when age between 40 and 49 then 40
            when age between 50 and 59 then 50 end age,
       count(1) order_count
from food_orders a inner join customers b on a.customer_id=b.customer_id
where b.age between 10 and 59
group by 1, 2
) t
group by 1
order by age
/*==================================================*/
--실습26
/*
Window Function - RANK, SUM
*/
select cuisine_type,
       restaurant_name,
       order_count,
       rn "순위"
from
(
select cuisine_type,
       restaurant_name,
       rank() over (partition by cuisine_type order by order_count desc) rn,
       order_count
from
(
select cuisine_type, restaurant_name, count(1) order_count
from food_orders
group by 1, 2
) a
) b
where rn<=3
order by 1, 4
/*
rank() over (partition by 분류 order by 랭킹기준 desc) 
sum() over (partition by 분류)
sum() over (partition by 분류 order by 순서) : 누적합
*/
/*==================================================*/
--과제
/*
음식 타입별, 연령별 주문건수 pivot view 만들기 (연령은 10~59세 사이)
SQL 기본구조 작성하기
Pivot view 를 만들기 위해 필요한 데이터 가공하기
Pivot view 문법에 맞추어 수정하기

음식타입에 10대, 20대, 30대 몇명인지 카운팅해서 병렬
*/
SELECT 	cuisine_type ,
		MAX(IF(age_sym='10대',cui_cnt,0)) 10대 ,
		MAX(IF(age_sym='20대',cui_cnt,0)) 20대 ,
		MAX(IF(age_sym='30대',cui_cnt,0)) 30대 ,
		MAX(IF(age_sym='40대',cui_cnt,0)) 40대 ,
		MAX(IF(age_sym='50대',cui_cnt,0)) 50대
FROM
(
SELECT 	cuisine_type ,
		CASE 	WHEN age >= 50 THEN '50대'
			 	WHEN age >= 40 THEN '40대'
			 	WHEN age >= 30 THEN '30대'
			 	WHEN age >= 20 THEN '20대'
			 	WHEN age >= 10 THEN '10대'
			 	ELSE 'Err' END age_sym,
		COUNT(cuisine_type) cui_cnt
FROM food_orders f INNER JOIN customers c ON f.customer_id = c.customer_id
WHERE age BETWEEN 10 and 59
GROUP BY cuisine_type, age_sym
) a
GROUP BY cuisine_type
