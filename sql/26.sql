-- 사용자 생성하기 ( 비밀버노 함께 설정)

-- 사용자 계정 생성은 (원격지, 로컬 환경) 이 있다.

-- 원격지에서 접근하는 사용자 계정 생성
-- 루트 권한을 제외하고 비밀번호 설정에 대한 제약이 있을 수 있다.
create user 'tenco1'@'%'identified by '1q2w3e4r5t!';

create user 'tenco4'@'%'identified by '1q2w3e4r5t!';
show processlist;

grant select, update on mydb2.* to'tenco4'@'%'; 