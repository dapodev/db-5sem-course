create or replace view ADMIN.V_USERS_PUBLIC_INFO as
select ID, USERNAME, EMAIL, CELL_PHONE, ROLE
from ADMIN.USERS;

create or replace view ADMIN.V_USERS_FULL_INFO as
select ID, USERNAME, PASSWORD, EMAIL, CELL_PHONE, ROLE
from ADMIN.USERS;
create or replace view ADMIN.V_RECORD_TYPES as
select *
from ADMIN.RECORD_TYPES;

drop view ADMIN.V_USERS_PUBLIC_INFO;
drop view ADMIN.V_USERS_FULL_INFO;
drop view ADMIN.V_RECORD_TYPES;