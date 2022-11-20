export const generateProcedureExecutionSql = (procedure: string): string =>
  `begin ${procedure}; end;`;
