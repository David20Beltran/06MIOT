--consulta de clientes
SELECT * FROM banco."PERSONAS" where "DOCUMENTO"='123456789A';

--contratos de un cliente
select cont.* 
from banco."CONTRATOS" cont, banco."PERSONAS" per 
where per."NUM_PERSONA" = cont."NUM_PERSONA" and 
	  per."DOCUMENTO"='123456789A'; 

--detalle de contratos de cuentas de un cliente
select cuent.* 
from banco."CONTRATOS" cont, banco."PERSONAS" per, banco."CUENTAS" cuent 
where per."NUM_PERSONA" = cont."NUM_PERSONA" and
	  cont."ENTIDAD" = cuent."ENTIDAD" and
	  cont."CENTRO" = cuent."CENTRO" and
	  cont."CUENTA" = cuent."CUENTA" and
      per."DOCUMENTO"='123456789A';

--detalle de contratos de pasivo de un cliente
select pas.* 
from banco."CONTRATOS" cont, banco."PERSONAS" per, banco."PASIVO" pas 
where per."NUM_PERSONA" = cont."NUM_PERSONA" and
	  cont."ENTIDAD" = pas."ENTIDAD" and
	  cont."CENTRO" = pas."CENTRO" and
	  cont."CUENTA" = pas."CUENTA" and
      per."DOCUMENTO"='123456789A';
	  
--detalle de contratos de prestamos de un cliente
select pres.* 
from banco."CONTRATOS" cont, banco."PERSONAS" per, banco."PRESTAMOS" pres 
where per."NUM_PERSONA" = cont."NUM_PERSONA" and
	  cont."ENTIDAD" = pres."ENTIDAD" and
	  cont."CENTRO" = pres."CENTRO" and
	  cont."CUENTA" = pres."CUENTA" and
      per."DOCUMENTO"='123456789A';

--detalle de contratos de tarjetas de un cliente
select tjta.* 
from banco."CONTRATOS" cont, banco."PERSONAS" per, banco."TARJETAS" tjta 
where per."NUM_PERSONA" = cont."NUM_PERSONA" and
	  cont."ENTIDAD" = tjta."ENTIDAD" and
	  cont."CENTRO" = tjta."CENTRO" and
	  cont."CUENTA" = tjta."CUENTA" and
      per."DOCUMENTO"='123456789A';

--detalle de los movimientos de las cuentas de un cliente
select cuent.*
from banco."CONTRATOS" cont, banco."PERSONAS" per, banco."MOVIMIENTOS_CUENTAS" cuent 
where per."NUM_PERSONA" = cont."NUM_PERSONA" and
	  cont."ENTIDAD" = cuent."ENTIDAD" and
	  cont."CENTRO" = cuent."CENTRO" and
	  cont."CUENTA" = cuent."CUENTA" and
      per."DOCUMENTO"='123456789A';
	  
--detalle de los movimientos de pasivo de un cliente
select pas.*
from banco."CONTRATOS" cont, banco."PERSONAS" per, banco."MOVIMIENTOS_PASIVO" pas 
where per."NUM_PERSONA" = cont."NUM_PERSONA" and
	  cont."ENTIDAD" = pas."ENTIDAD" and
	  cont."CENTRO" = pas."CENTRO" and
	  cont."CUENTA" = pas."CUENTA" and
      per."DOCUMENTO"='123456789A';
	  
--detalle de los movimientos de prestamos de un cliente
select ptmo.*
from banco."CONTRATOS" cont, banco."PERSONAS" per, banco."MOVIMIENTOS_PRESTAMOS" ptmo 
where per."NUM_PERSONA" = cont."NUM_PERSONA" and
	  cont."ENTIDAD" = ptmo."ENTIDAD" and
	  cont."CENTRO" = ptmo."CENTRO" and
	  cont."CUENTA" = ptmo."CUENTA" and
      per."DOCUMENTO"='123456789A';
	  
--detalle de los movimientos de tarjetas de un cliente
select mov_tjta.*
from banco."CONTRATOS" cont, banco."PERSONAS" per, 
     banco."TARJETAS" tjta, banco."MOVIMIENTOS_TARJETAS" mov_tjta 
where per."NUM_PERSONA" = cont."NUM_PERSONA" and
	  cont."ENTIDAD" = tjta."ENTIDAD" and
	  cont."CENTRO" = tjta."CENTRO" and
	  cont."CUENTA" = tjta."CUENTA" and
	  tjta."ENTIDAD" = mov_tjta."ENTIDAD" and
	  tjta."NUM_TARJETA" = mov_tjta."NUM_TARJETA" and
      per."DOCUMENTO"='123456789A';