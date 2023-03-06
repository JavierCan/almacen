use almacen;

--1. Obtener todos los almacenes
SELECT * FROM almacen_table;

--2. Obtener todas las cajas cuyo contenido tenga un valor superior a $###.
SELECT * FROM caja_table WHERE valor_caja > 1000;


--3. Obtener los tipos de contenidos de las cajas.
SELECT DISTINCT contenido_caja FROM caja_table;


--4. Obtener el valor medio de todas las cajas.
SELECT AVG(valor_caja) FROM caja_table;


--5. Obtener el valor medio de las cajas de cada almacén.
SELECT AVG(valor_caja), id_almacen FROM caja_table GROUP BY id_almacen;

--6. Obtener los códigos de los almacenes en los cuales el valor medio de las cajas sea superior a $###.
SELECT AVG(valor_caja), id_almacen FROM caja_table GROUP BY id_almacen HAVING AVG(valor_caja) > 100;

--7. Obtener el número de referencia de cada caja junto con el nombre de la ciudad en el que se encuentra.
SELECT id_caja, ciudad_almacen FROM caja_table JOIN almacen_table ON caja_table.id_almacen = almacen_table.id_almacen;

--8. Obtener el número de cajas que hay en cada almacén.
SELECT COUNT(id_caja), id_almacen FROM caja_table GROUP BY id_almacen;

--9. Obtener los códigos de los almacenes que están saturados (los almacenes donde el número de cajas es superior a la capacidad).
SELECT a.id_almacen FROM almacen_table a JOIN (SELECT id_almacen, COUNT(id_caja) as total_cajas FROM caja_table GROUP BY id_almacen) c ON a.id_almacen = c.id_almacen WHERE a.capacidad_almacen < c.total_cajas;


--10. Obtener los números de referencia de las cajas que están en Bilbao.
SELECT id_caja FROM caja_table JOIN almacen_table ON caja_table.id_almacen = almacen_table.id_almacen WHERE ciudad_almacen = 'Bilbao';


--11. Insertar un nuevo almacén en Barcelona con capacidad para 3 cajas.
INSERT INTO almacen_table (id_almacen, ciudad_almacen, capacidad_almacen) VALUES (6, 'Barcelona', 3);

--12. Insertar una nueva caja, con número de referencia 'H5RT', con contenido 'Papel', valor 200, y situada en el almacén 2.
INSERT INTO caja_table (id_caja, contenido_caja, valor_caja, id_almacen) VALUES ('H5RT', 'Papel', 200, 2);

--13. Rebajar el valor de todas las cajas un 15%.
UPDATE caja_table SET valor_caja = valor_caja * 0.85;


--14. Rebajar un 20% el valor de todas las cajas cuyo valor sea superior al valor medio de todas las cajas.
CREATE TEMPORARY TABLE temp_avg_value AS SELECT AVG(valor_caja) AS avg_value FROM caja_table;

UPDATE caja_table SET valor_caja = valor_caja * 0.8
WHERE valor_caja > (SELECT avg_value FROM temp_avg_value);

DROP TEMPORARY TABLE temp_avg_value;


--15. Eliminar todas las cajas cuyo valor sea inferior a $###.
DELETE FROM caja_table WHERE valor_caja < 100;


--16. Vaciar el contenido de los almacenes que están saturados.
DELETE FROM caja_table WHERE id_almacen IN (SELECT a.id_almacen FROM almacen_table a JOIN (SELECT id_almacen, COUNT(id_caja) as total_cajas FROM caja_table GROUP BY id_almacen) c ON a.id_almacen = c.id_almacen WHERE a.capacidad_almacen < c.total_cajas);
