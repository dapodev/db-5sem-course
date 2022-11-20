-- TABLESPACES
create tablespace TS_RENT datafile '/home/oracle/rent_pdb/tbs/main.dbf'
    size 20 m autoextend on next 30 m extent management local;

-- USERS
create user admin identified by admin default tablespace TS_RENT;
create user client identified by client default tablespace TS_RENT;

-- ROLES
create role RL_ADMIN;
grant CREATE SESSION to rl_admin;

create role RL_CLIENT;
grant create session to RL_CLIENT;
-- revoke execute on ADMIN.GET_USERS_PAGE from RL_CLIENT;

-- GRANTS
grant RL_ADMIN to ADMIN;
grant RL_CLIENT to CLIENT;

-- QUOTAS ON TABLESPACES
alter user ADMIN quota unlimited on TS_RENT;
alter user ROOT quota unlimited on TS_RENT;

-- DROPS
drop role RL_ADMIN;
drop role rl_user;

drop user admin;
drop user user;