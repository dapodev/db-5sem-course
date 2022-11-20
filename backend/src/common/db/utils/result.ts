export const extractUsefulResult = <T>(resultSet: unknown[]): T =>
  resultSet.at(0) as T