import { Controller, Get } from '@nestjs/common';

import { RecordType } from 'typings/entities/recordType';

import { RecordsService } from './records.service';

@Controller('records')
export class RecordsController {
  constructor(private recordsService: RecordsService) {}

  @Get('types')
  async getAllRecordTypes(): Promise<RecordType[]> {
    return this.recordsService.getAllRecords();
  }
}
