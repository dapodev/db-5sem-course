select FILE_NAME from dba_data_files;

create pluggable database rent_pdb admin user rent_pdb_admin identified by root
    file_name_convert=('/u01/app/oracle/oradata/ORCL/', '/u01/app/oracle/oradata/ORCL/rent_pdb');

alter pluggable database rent_pdb open;
