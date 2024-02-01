use banco5

Select getdate(); --- Consulta 1

Select datepart(month,getdate()); --- Consulta 2, retorna el numero del mes actual

--- Consulta 3, Usando la función datepart realice una consulta que devuelva día actual

Select datepart(day,getdate());


--- Consulta 4, retorna el nombre del mes actual

Select datename(month,getdate()); 


--- Consulta 5, Usando la función dada realice una consulta que devuelva el día actual

Select datename(day,getdate()); 


---- Consulta 6, DAY(fecha): retorna el día de la fecha especificada.

Select day(getdate());

---- Consulta 7, MONTH (fecha): retorna el mes de la fecha especificada. 

Select month(getdate());


---- Consulta 8, Usando la función dada realiza una consulta donde se visualice el nombre y la fecha de nacimiento de los que cumplen en el mes 02, 7 y 11



Select nombre, datepart(month,fecha_nac) as Mes_de_Cumple
from cliente
where datepart(month,fecha_nac) = 2 or datepart(month,fecha_nac) = 7 or datepart(month,fecha_nac) = 11



--- Consulta 9 YEAR(fecha): retorna el año de la fecha especificada

Select year(getdate());



--- Consulta 10 Usando la función dada realice una consulta que devuelva todos los datos de los préstamos realizados en el 2012


Select *
from prestamo
where datepart(year,fecha) = '2012'


---- Consulta 11 Convertir de un decimal a un dato entero

SELECT 9.5 AS Original, CONVERT(int, 9.5) AS int


---- Consulta 12 Convertir de Fecha a String y de string a Numérico

Select Convert(Int, Convert(Varchar(25), getdate(), 112)) 

---- Consulta 13, Convertir el número del cliente a tipo de dato cadena de 4 caracteres. Osea de un tipo de dato Numérico a String.

Select convert(char(4), idcliente) as id_char_4_caracteres
from cliente

---- Consulta 14, Seleccionar el promedio de todos los préstamos y que la salida salga con tres cifras significativas

Select avg(round(monto,3)) as promedio_monto_prestamo, idcliente, nombre
from prestamo
group by idcliente, nombre

---- Consulta 15, Calcula el número de registros devueltos por una consulta. Su sintaxis es la siguiente: Count(expr)

Select count(idsucursal) as Total
from sucursal


---- Consulta 16, Selecciona la cuenta con el menor saldo, la columna del resultado debe llamarse ElMin

Select min(saldo) as ElMin
from cuenta


---- Consulta 17, Selecciona el mayor monto de préstamo donde el nombre de cliente sea igual a Jorge y la columna del resultado debe decir ElMax.

Select max(monto) as ElMax, nombre, idcliente
from prestamo
where nombre = 'Jorge'
group by nombre, idcliente




Select * from cliente

Select * from prestamo

Select * from SUCURSAL

Select * from cuenta