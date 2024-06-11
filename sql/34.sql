
create user 'tenco1'@'%' identified by '1q2w3e4r5t!';

create user 'tenco1'@'localhost' identified by '1q2w3e4r5t!';

-- 사용자 계정 권환확인
show grants for 'tenco1'@'%';
show grants for 'tenco1'@'localhost';

-- 작업별 권한을 할당
-- grant select, insert,update, delete on mydb2.* to 'tenco1'@'%';
grant select ,update, delete on mydb2.* to 'tenco1'@'%';

-- root 권한으로 새로운 사용자 생성 및 권한 할당
