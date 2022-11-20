import { NestFactory } from '@nestjs/core';
import { initOracleClient } from 'oracledb';

import { AppModule } from './app.module';

async function bootstrap() {
  initOracleClient({ libDir: `C:\\Program Files\\Oracle\\instantclient_21_7` });
  const app = await NestFactory.create(AppModule);
  await app.listen(3001);
}
bootstrap();
