import { Injectable } from '@nestjs/common';
import { InjectDataSource } from '@nestjs/typeorm';
import { DataSource } from 'typeorm';

import { PROCEDURES } from 'common/db/constants/procedures';
import { generateProcedureExecutionSql } from 'common/db/utils/procedures';
import { extractUsefulResult } from 'common/db/utils/result';
import { RecordType } from 'typings/entities/recordType';

@Injectable()
export class RecordsService {
  constructor(
    @InjectDataSource('root_source') private adminDataSource: DataSource,
  ) {}

  async getAllRecords(): Promise<RecordType[]> {
    const sql = generateProcedureExecutionSql(PROCEDURES.getAllRecordTypes);
    const params = [];

    const resultSet = await this.adminDataSource.query(sql, params);

    const recordTypes = extractUsefulResult<RecordType[]>(resultSet);

    return recordTypes;
  }
}
