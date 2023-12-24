USE [db_sistema_hotelbs]
GO
CREATE USER [usr_Sistema] FOR LOGIN [usr_Sistema]
GO
USE [db_sistema_hotelbs]
GO
ALTER ROLE [db_owner] ADD MEMBER [usr_Sistema]
GO
