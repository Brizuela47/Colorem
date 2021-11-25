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

Create procedure Autor_de_Libros
@Autor as varchar(40)
As
begin
Select Autor, Titulo from Libros WHERE Autor = @Autor
end

Exec Autor_de_Libros 'Jose Hernandez'
Exec Autor_de_Libros 'Franz Kafka'



Create procedure Cantidad_de_Libros
@Autor as varchar(40)
As
begin
Select count(Autor) from Libros WHERE Autor = @Autor
end

Exec Cantidad_de_Libros 'Jose Hernandez'
Exec Cantidad_de_Libros 'Franz Kafka'


Create procedure Cantidad_de_Libros_Editorial
@Cod_libro as int
As
begin
Select count(Editorial) from Libros WHERE Cod_libro = @Cod_libro
end

Exec Cantidad_de_Libros_Editorial 10
Exec Cantidad_de_Libros_Editorial 30



Create procedure Cantidad_de_Stock
@Cod_libro as int
As
begin
Select stock from Libros WHERE Cod_libro = @Cod_libro
end

Exec Cantidad_de_Stock 50
Exec Cantidad_de_Stock 60


Create procedure Incrementar_Precio
@Cod_libro as int
As
begin
Select Titulo, Autor, Precio = Precio + Precio / 10 from Libros WHERE Cod_libro = @Cod_libro
end

Exec Incrementar_Precio 10
Exec Incrementar_Precio 50 

Select * from Libros
