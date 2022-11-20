-- USERS MOCK --
insert into ADMIN.USERS(username, password, email, role, cell_phone)
values ('admin', 'admin', 'admin@admin.admin', 'admin', '+375449201092');
insert into ADMIN.USERS(username, password, email, role, cell_phone)
values ('user1', 'admin', 'user1@user.user', 'user', '+375449201092');
insert into ADMIN.USERS(username, password, email, role, cell_phone)
values ('user2', 'admin', 'user2@user.user', 'user', '+375449201092');
insert into ADMIN.USERS(username, password, email, role, cell_phone)
values ('user3', 'admin', 'user3@user.user', 'user', '+375449201092');
insert into ADMIN.USERS(username, password, email, role, cell_phone)
values ('user4', 'admin', 'user4@user.user', 'user', '+375449201092');
commit;

-- RECORD TYPES MOCK --
insert into ADMIN.RECORD_TYPES(NAME, DESCRIPTION, SUB_TYPE_OF)
VALUES ('Бытовая техника', 'Техника для быта', null);
insert into ADMIN.RECORD_TYPES(NAME, DESCRIPTION, SUB_TYPE_OF)
VALUES ('Пылесосы', 'Техника для уборки', 1000);
insert into ADMIN.RECORD_TYPES(NAME, DESCRIPTION, SUB_TYPE_OF)
VALUES ('Пылесосы ХЗфирмы', 'Фирма топ', 1001);
insert into ADMIN.RECORD_TYPES(NAME, DESCRIPTION, SUB_TYPE_OF)
VALUES ('Компьютерная техника', 'Да просто компуктеры всякие', null);
commit;
