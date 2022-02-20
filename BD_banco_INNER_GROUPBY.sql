-- GROUP BY: número de cuentas por tipo de contrato
Select count(*) "NUMERO_CUENTAS", "TIPO_CONTRATO"
from banco."CONTRATOS"
group by "TIPO_CONTRATO";

--GROUP BY + INNER JOIN (DOBLE): Agrupación de movimientos debe/haber de las cuentas corrientes de un cliente
--                       y suma de dichos movimientos
select count (*) "NUM_MOVIMIENTOS", "DEBE_HABER", sum("IMPORTE") 
from banco."MOVIMIENTOS_CUENTAS"
inner join banco."CONTRATOS" 
	on banco."MOVIMIENTOS_CUENTAS"."ENTIDAD" = banco."CONTRATOS"."ENTIDAD" and
	   banco."MOVIMIENTOS_CUENTAS"."CENTRO" = banco."CONTRATOS"."CENTRO" and
	   banco."MOVIMIENTOS_CUENTAS"."CUENTA" = banco."CONTRATOS"."CUENTA"
inner join banco."PERSONAS" 
	on banco."PERSONAS"."NUM_PERSONA" = banco."CONTRATOS"."NUM_PERSONA" and
	   banco."PERSONAS"."DOCUMENTO" = '123456789A'
group by "DEBE_HABER";

--GROUP BY: Obtención del número de titulares de los contratos
select count(*) "NUM_TITULARES", "ENTIDAD", "CENTRO", "CUENTA" 
from banco."CONTRATOS"
group by"ENTIDAD", "CENTRO", "CUENTA";


