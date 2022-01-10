--@Autor(es):       Aguilera Valderrama Alexis Fernando, 
--                  Pereda Ceballos Jorge Francisco
--@Fecha creación:  20/12/2021
--@Descripción:     Ejecucción de los scripts relacionado para crear y montar la bd

@s-01-usuarios
@s-02-entidades
@s-03-tablas-temporales
@s-04-tablas-externas
@s-05-secuencias
@s-06-indices
@s-07-sinonimos
@s-08-vistas
@s-09-carga-inicial
@s-10-consultas

prompt creacion procedimiento lob
@s-17-lob-actualiza-foto.sql

prompt creacion de funciones
@s-15-fx-PDF.sql
@s-15-fx-genera-clave-aeropuerto.sql
@s-15-fx-calcular-urgencia.sql


prompt creacion procedimientos
@s-13-p-inserta-empleado.sql
@s-13-p-insertar-maleta.sql


prompt creacion disparadores
@s-11-tr-insertar-paquete.sql
@s-11-tr-pase-ausente.sql
@s-11-tr-cambio-jefe.sql