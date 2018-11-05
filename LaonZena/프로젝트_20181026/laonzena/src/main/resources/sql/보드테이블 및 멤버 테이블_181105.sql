CREATE TABLE lz_tb_member (
    member_no number,
    member_id varchar2(50)  not null unique,
    member_pass varchar2(50) not null,
    member_email varchar2(50) not null,
    member_cell_phone varchar2(50) not null,
    member_address varchar2(50) not null,
    member_jumin_no varchar2(50) not null,
    member_name varchar2(50) not null,
    member_reg_date date not null,
    primary key (member_no)
);


create sequence lz_s_member_no increment by 1;

insert into lz_tb_member (
                        member_no,
                        member_id,
                        member_pass,
                        member_email,
                        member_cell_phone,
                        member_address,
                        member_jumin_no,
                        member_name,
                        member_reg_date
                ) values (
                        lz_s_member_no.nextval,
                        'admin',
                        'admin',
                        'admin@laonzena.com',
                        '01066707579',
                        '서울시 동대문구',
                        '910629-1111111',
                        '방진웅',
                        sysdate                     
                );
                
select *
from lz_tb_member;

-- board --

create table lz_tb_se_board(
    board_no number not null PRIMARY KEY,
    board_title varchar2(200) not null,
    board_reg_date date DEFAULT sysdate not null ,
    board_category number not null,
    board_product varchar2(200) null,
    board_view_cnt number not null,
    board_recom_cnt number not null,
    board_writer REFERENCES lz_tb_member(member_id)  
);