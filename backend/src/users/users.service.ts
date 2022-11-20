import { BadRequestException, Injectable } from '@nestjs/common';
import { InjectDataSource } from '@nestjs/typeorm';
import { DataSource } from 'typeorm';

import { PROCEDURES } from 'common/db/constants/procedures';
import { generateProcedureExecutionSql } from 'common/db/utils/procedures';
import { GetUsersQueryDto } from 'users/dto/getUsersQuery.dto';
import { User, UserPublicInfo } from 'typings/entities/user';
import { extractUsefulResult } from 'common/db/utils/result';

@Injectable()
export class UsersService {
  constructor(
    @InjectDataSource('admin_source') private adminDataSource: DataSource,
  ) {}

  async getUsersPage(queryDto: GetUsersQueryDto): Promise<UserPublicInfo[]> {
    const sql = generateProcedureExecutionSql(PROCEDURES.getUsersPage);

    const { size, page } = queryDto;

    const params = [size, page];

    const resultSet = await this.adminDataSource.query(sql, params);

    return extractUsefulResult<UserPublicInfo[]>(resultSet);
  }

  async getUserById(userId: string | number): Promise<User> {
    const sql = generateProcedureExecutionSql(PROCEDURES.getUserById);

    const params = [userId];

    const resultSet = await this.adminDataSource.query(sql, params);

    const users = extractUsefulResult<User[]>(resultSet);

    const [foundUser] = users;

    if (!foundUser) {
      throw new BadRequestException(
        `Unable to find user by it's ID: ${userId}`,
      );
    }

    return foundUser;
  }
}
