create table lz_tb_member (
    member_no           number              primary key,
    member_id           varchar2(50)        not null,
    member_pass         varchar2(50)        not null,
    member_name         varchar2(50)        not null,
    member_address      varchar2(100)       not null,
    member_cell_no      number              not null,
    member_grade        varchar2(50)        not null,
    member_email        varchar2(50)        not null,
    member_login_date   date                
);

create sequence s_member_no;

insert into tb_member (
                    member_no,
                    member_id,
                    member_pass,
                    member_name,
                    member_address,
                    member_cell_no,
                    member_grade
                ) values (
                    s_member_no.nextval,
                    'laonzena',
                    'laonzena',
                    'admin',
                    'admin',
                    123,
                    'admin'   
                );
                    

select *
from tb_member;

drop table tb_member;                   

commit;