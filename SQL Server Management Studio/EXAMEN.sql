-- ================================================
-- Template generated from Template Explorer using:
-- Create Procedure (New Menu).SQL
--
-- Use the Specify Values for Template Parameters 
-- command (Ctrl-Shift-M) to fill in the parameter 
-- values below.
--
-- This block of comments will not be included in
-- the definition of the procedure.
-- ================================================
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE <Procedure_Name, sysname, ProcedureName> 
	-- Add the parameters for the stored procedure here
	<@Param1, sysname, @p1> <Datatype_For_Param1, , int> = <Default_Value_For_Param1, , 0>, 
	<@Param2, sysname, @p2> <Datatype_For_Param2, , int> = <Default_Value_For_Param2, , 0>
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
	SELECT <@Param1, sysname, @p1>, <@Param2, sysname, @p2>
END
GO
------------------------------------------------------------------
/*Ejercicio 1*/
Create proc Cargo
@cargo as varchar (20)
as
begin
Select * from Empleado where cargo=@cargo
end

EXEC Cargo 'logistica'
drop proc Porcent_logis

/*Ejercicio 2*/
Create proc SalariosYMayor
as
begin
Select sum(salario_hora), max(salario_hora) from Empleado
end

EXEC SalariosYMayor

/*Ejercicio 3*/
Create proc Porcent_logis
@Cargo as varchar(20)
as
begin
Select AVG(all @Cargo) from Empleado where cargo=@Cargo
end

EXEC Porcent_logis 'logistica'