export enum UserRole {
  user = 'user',
  landlord = 'landlord',
  admin = 'admin',
}

export interface User {
  ID: string;
  USERNAME: string;
  PASSWORD: string;
  CELL_PHONE: string;
  EMAIL: string;
  ROLE: UserRole;
}

export type UserPublicInfo = Omit<User, 'password'>;
