import { Module } from '@nestjs/common';
import { TypeOrmModule } from '@nestjs/typeorm';

import { UsersModule } from './users/users.module';
import { RecordsModule } from './records/records.module';

@Module({
  imports: [
    UsersModule,
    RecordsModule,
    TypeOrmModule.forRoot({
      type: 'oracle',
      name: 'root_source',
      port: 1521,
      username: 'root',
      password: 'root',
      connectString: 'localhost/rent_pdb',
      toRetry: () => false,
    }),
    TypeOrmModule.forRoot({
      type: 'oracle',
      name: 'admin_source',
      port: 1521,
      username: 'admin',
      password: 'admin',
      connectString: 'localhost/rent_pdb',
      toRetry: () => false,
    }),
    TypeOrmModule.forRoot({
      type: 'oracle',
      name: 'client_source',
      port: 1521,
      username: 'client',
      password: 'client',
      connectString: 'localhost/rent_pdb',
      toRetry: () => false,
    }),
    TypeOrmModule.forRoot({
      type: 'oracle',
      name: 'landlord_source',
      port: 1521,
      username: 'root',
      password: 'root',
      connectString: 'localhost/rent_pdb',
      toRetry: () => false,
    }),
  ],
  controllers: [],
  providers: [],
})
export class AppModule {}
