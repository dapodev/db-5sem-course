-- USERS --
create or replace procedure ADMIN.GET_USERS_PAGE(
    p_page_size number := 10,
    p_page_number number := 1
) is
    out       SYS_REFCURSOR;
    skip_rows number;
begin
    skip_rows := (p_page_number - 1) * p_page_size;

    open out for
        select *
        from V_USERS_PUBLIC_INFO
        offset skip_rows rows fetch next p_page_size rows only;

    DBMS_SQL.RETURN_RESULT(out);
end;

create or replace procedure ADMIN.GET_USER_BY_ID(p_id number) is
    out SYS_REFCURSOR;
begin
    open out for
        select *
        from V_USERS_FULL_INFO
        where ID = p_id;

    DBMS_SQL.RETURN_RESULT(out);
end;

select *
from ADMIN.USERS;

-- RECORD TYPES --

create or replace procedure ADMIN.GET_ALL_RECORD_TYPES is
    out SYS_REFCURSOR;
begin
    open out for
        select * from V_RECORD_TYPES;

    DBMS_SQL.RETURN_RESULT(out);
end;

drop procedure ADMIN.GET_USERS_PAGE;


