create table lz_tb_member (
    member_id varchar2(50) PRIMARY KEY,
    member_pass varchar2(50),
    member_email varchar2(50),
    member_cell_phone varchar2(50),
    member_address varchar2(50),
    member_sex char,
    member_name varchar2(50)
);

insert into lz_tb_member 
    (member_id,
    member_pass,
    member_email,
    member_cell_phone,
    member_address,
    member_sex,
    member_name) values (
    'test',
    '1234',
    'nsk7640@naver.com',
    '010-1234-5678',
    '인천',
    '1',
    '홍길동'
    );

insert into lz_tb_se_board(
    board_no,
    board_title,
    board_content,
    board_product_name,
    board_product_price,
    board_product_img_url,
    board_writer
) values (
    1,
    '첫 글이요',
    '첫 내용이에요',
    '핫바',
    1200,
    '???',
    'test'
);
commit;

select * from lz_tb_se_board;


create table lz_tb_se_board(
    board_no number PRIMARY kEY,
    board_title varchar2(50),
    board_content varchar2(200),
    board_reg_date date default sysdate,
    board_product_name varchar2(50),
    board_product_price number,
    board_product_img_url varchar2(100),
    board_category char(10) default 'review',
    board_writer REFERENCES lz_tb_member(member_id)
);
delete from lz_tb_se_board where board_no=1;
drop table lz_tb_se_board;
drop table lz_tb_member;
drop table lz_tb_se_attach;
drop table lz_se_comment;


create table lz_tb_se_attach(
    attach_no number PRIMARY KEY,
    board_no REFERENCES lz_tb_se_board(board_no),
    attach_ori_name varchar2(255),
    attach_ser_name varchar2(255),
    attach_ser_path varchar2(255)
);




create table lz_se_comment(
    comment_no number PRIMARY KEY,
    board_no REFERENCES lz_tb_se_board(board_no),
    comment_content varchar2(50),
    comment_reg_date date default sysdate,
    comment_writer REFERENCES lz_tb_member(member_id)
);