import { Controller, Get, Param, Query } from '@nestjs/common';

import { GetUsersQueryDto } from 'users/dto/getUsersQuery.dto';
import { User } from 'typings/entities/user';

import { UsersService } from './users.service';

@Controller('users')
export class UsersController {
  constructor(private usersService: UsersService) {}

  @Get(':id')
  async getUserById(@Param('id') userId: string): Promise<User> {
    return this.usersService.getUserById(userId);
  }

  @Get()
  async getUsers(@Query() queryDto: GetUsersQueryDto): Promise<User[]> {
    return this.usersService.getUsersPage(queryDto);
  }
}
