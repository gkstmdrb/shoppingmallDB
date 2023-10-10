## 쇼핑몰 회원관리 <br>
![image](https://github.com/gkstmdrb/shoppingmallDB/assets/114748816/a0545b13-7d47-4cfe-9cf5-bfbe55211e06)
<br>
## [회원등록(클릭시 코드로 이동)](https://github.com/gkstmdrb/shoppingmallDB/blob/main/Shoppingmall/src/main/webapp/join.jsp)
![image](https://github.com/gkstmdrb/shoppingmallDB/assets/114748816/30764649-f5f2-471e-b5c0-72f0758b551a)<br>
회원등록 화면을 띄우고 회원정보를 입력하여 등록을 누르면 DB에 회원 정보가 등록되고, <br>
회원정보를 입력 후 취소를 누르면 초기화가 되며, <br>
조회를 누르면 현재 회원목록이 나온다. <br>

[회원목록조회/수정](https://github.com/gkstmdrb/shoppingmallDB/blob/main/Shoppingmall/src/main/webapp/member_list.jsp)
![image](https://github.com/gkstmdrb/shoppingmallDB/assets/114748816/0e37ceb8-45d7-468b-9a3f-9c1aeb26aa21)
<br><br><br>

## [회원정보조회](https://github.com/gkstmdrb/shoppingmallDB/blob/main/Shoppingmall/src/main/webapp/member_search_list.jsp)
![image](https://github.com/gkstmdrb/shoppingmallDB/assets/114748816/8cd87a0c-0133-4d89-b717-f5fe3f6f1639)
회원정보조회 화면을 띄운 후 회원 번호를 입력하고 조회를 누르면, <br>
DB에 등록되어 있는 회원 중 번호가 일치하는 회원을 찾아 조회 할 수 있다. <br><br>

![image](https://github.com/gkstmdrb/shoppingmallDB/assets/114748816/1d5271b0-f698-472e-8615-07710a6a9d50)
<br><br>

## [회원매출조회](https://github.com/gkstmdrb/shoppingmallDB/blob/main/Shoppingmall/src/main/webapp/member_search_list.jsp)
![image](https://github.com/gkstmdrb/shoppingmallDB/assets/114748816/ac0b0952-008d-406f-ad47-71444050a334) <br>
매출이 null 또는 0이 아닌 회원을 매출순으로 조회한다. <br><br>

![image](https://github.com/gkstmdrb/shoppingmallDB/assets/114748816/10f0319e-f84d-4028-af54-19498fee5358) <br>
매출이 null 또는 0이 아닌 회원을 매출 순으로 조회, <br><br>

![image](https://github.com/gkstmdrb/shoppingmallDB/assets/114748816/c68b3511-d97b-4fa9-9b63-cc5c8d87ccf4) <br>
서로 다른 두 테이블에서 정보를 가져오므로, <br><br>

![image](https://github.com/gkstmdrb/shoppingmallDB/assets/114748816/a4e071eb-da13-4402-b9f1-cb717b1ffcc2) <br>
내부조인 후 조건문 <br><br>

![image](https://github.com/gkstmdrb/shoppingmallDB/assets/114748816/26098433-5027-48bd-9c8f-d832fe09b2a7) <br>
컬럼들을 기준으로 결과 집합을 여러 그룹으로 나누고, <br>
각각의 그룹은 동일한 "mem.custno", "mem.custname", "mem.grade" 값들을 가지는 행들로 구성된다. <br>
"sum(mon.price)" 표현식은 각 그룹 내에서 "mon.price" 컬럼 값을 합산하여 그룹 내 총 매출액을 계산한다. <br>
이런식으로, "sum" 함수나 다른 집계 함수를 사용하여 그룹 내에서 원하는 계산을 수행할 수 있다.
