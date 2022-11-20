create public synonym V_USERS_PUBLIC_INFO for ADMIN.V_USERS_PUBLIC_INFO;
create public synonym V_USERS_FULL_INFO for ADMIN.V_USERS_FULL_INFO;
create public synonym V_RECORD_TYPES for ADMIN.RECORD_TYPES;

drop public synonym V_USERS_PUBLIC_INFO;
drop public synonym V_USERS_FULL_INFO;
drop public synonym V_RECORD_TYPES;

create public synonym GET_USERS_PAGE for ADMIN.GET_USERS_PAGE;
create public synonym GET_USER_BY_ID for ADMIN.GET_USER_BY_ID;
create public synonym GET_ALL_RECORD_TYPES for ADMIN.GET_ALL_RECORD_TYPES;

drop public synonym GET_USERS_PAGE;
drop public synonym GET_USER_BY_ID;
drop public synonym GET_ALL_RECORD_TYPES;

create public synonym USERS for ADMIN.USERS;
create public synonym RECORD_TYPES for ADMIN.RECORD_TYPES;

drop public synonym USERS;
drop public synonym RECORD_TYPES;