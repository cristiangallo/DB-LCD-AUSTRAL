USE fabricadeherramientas;

/* 1) Pedidos de clientes con compras grandes (IN)
Listar pedidos cuyo cliente_id esté en la lista de clientes que tienen al menos un pedido con
total > 500, ordenado por total en forma descendente.
*/
--  --------------------------------------------------------------------------
-- |ID pedido| fecha (dd/mm/yyyy)| total ($xxx.xx)| Nombre          | Teléfono|
--  --------------------------------------------------------------------------

SELECT P.id "ID pedido", 
	DATE_FORMAT(P.fecha, "%d/%m/%Y") "fecha", 
    CONCAT("$", P.total) "total", C.nombre "Nombre", C.telefono "Teléfono"
	FROM pedidos P INNER JOIN clientes C ON P.cliente_id=C.id
    WHERE cliente_id IN (
		SELECT cliente_id FROM pedidos where total > 400
    )
    ORDER BY total DESC
    ;
SELECT cliente_id FROM pedidos where total > 400;
-- Error Code: 1242. Subquery returns more than 1 row si usan = en la subquery


/*
#2) Pedidos con detalle (IN)
#Listar pedidos cuyo id aparezca en DetallePedidos
*/
SELECT * FROM pedidos WHERE ID IN (
	SELECT pedido_id FROM detallepedidos
);

/*
Productos nunca vendidos (NOT IN)
*/

SELECT * 
	FROM productos p # LEFT JOIN detallepedidos d 
		# ON p.id=d.producto_id
	where P.id NOT IN (
	SELECT producto_id from detallepedidos
);

/*
#4) Pedidos sin detalle (NOT IN)
*/

SELECT P.* 
	FROM pedidos P LEFT join detallepedidos DP ON P.id=DP.pedido_id
    WHERE DP.id iS NULL;
    
/*
#7) Clientes con al menos un pedido (EXISTS)
*/

SELECT C.* FROM clientes C 
	where exists (select 1 from pedidos P where C.id=P.cliente_id);
    

/*
#15) Pedidos que superan algún precio unitario del mercado (ANY)
*/

