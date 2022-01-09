--TODO: VALIDAR FECHAS DE IMPRESION Y FECHAS DE SALIDA CON TRIGGER FI<FS,
--TODO: VALIDAR QUE EL PAQUETE ASIGNADO SEA A AVION DE CARGA
--TODO: VALIDAR CON PROCEDIMIENTO QUE LAS FECHAS ASIGNADAS DE UN AVIÓN SEAN COHERENTES
--TODO: CUANDO SE ASIGNA UNA PROGRAMACIÓN
--TODO: VALIDAR QUE EL PESO DEL PAQUETE TOTAL NO SOBREPASE LA CAPACIDAD DE CARGA
--TODO: REALIZAR BLOQUE PL/SQL QUE ASIGNE EL EQUIPO DE VUELO
--TODO: REALIZAR TRIGGRER PARA QUE SEAN MAXIMO 5 DIRECCIONES POR EMPLEADO
--TODO: REALIZAR TRIGGER PARA ASIGNACION CORRECTA DE EQUIPO Y DISPONIBILIDAD
connect agpe_proy_admin / agpe

prompt Realizando inserciones en Tipo_paquete

insert into tipo_paquete 
   values(seq_tipo_paquete_id.nextval, 'FRGL', 'Fragil','No azotar ni rodar');
  
insert into tipo_paquete  
   values(seq_tipo_paquete_id.nextval,'RFGE','Refigerado',
  'Mantener a bajar temperaturas el contenido del paquete');

insert into tipo_paquete  
   values(seq_tipo_paquete_id.nextval,'LIQI','Liquido',
  'Colocar en espacios donde sea dificil que se caiga');

insert into tipo_paquete  
   values(seq_tipo_paquete_id.nextval,'FLMA','Flamable',
  'Evitar espacios con mucha friccion y calientes');

insert into tipo_paquete  
   values(seq_tipo_paquete_id.nextval,'PESA','Pesado',
  'Objetivos rigidos sin un trato en especial (ej. libros, ropa, plasticos)');


prompt Realizando inserciones en Puesto

insert into puesto
   values (seq_puesto_id.nextval, 'PIL', 'PILOTO','Encargado de volar el avion',40000.00);

insert into puesto
   values (seq_puesto_id.nextval, 'COP', 'COPILOTO','Asistente del piloto',35000.00);
  
insert into puesto
   values (seq_puesto_id.nextval, 'JSC', 'JEFE DE SOBRECARGOS','Encargado de volar el avion',25000.00);

insert into puesto
   values (seq_puesto_id.nextval, 'SOC', 'SOBGRECARGO','Encargado de atender a los pasajeros',20000.00);
  
insert into puesto
   values (seq_puesto_id.nextval, 'TEC', 'TÉCNICO','Encargado de dar mantenimiento al avion',30000.00);
  
prompt Realizando inserciones en Status_programacion
insert into status_programacion 
   values(seq_status_programacion_id.nextval,'PROGRAMADO','El vuelo está agendado para partir');
insert into status_programacion 
   values(seq_status_programacion_id.nextval,'ABORDANDO','El vuelo está abordando pasajeros');
insert into status_programacion 
   values(seq_status_programacion_id.nextval,'A TIEMPO','El vuelo está en tiempo de vuelo');
insert into status_programacion 
   values(seq_status_programacion_id.nextval,'DEMORADO','El vuelo está retrasado');
insert into status_programacion 
   values(seq_status_programacion_id.nextval,'CANCELADO','El vuelo está cancelado');

prompt Realizando inserciones en Aeropuerto
insert into aeropuerto
   values(seq_aeropuerto_id.nextval,'SANTA LUCIA', 'STL',19.75,-98.99,1);
insert into aeropuerto
   values(seq_aeropuerto_id.nextval,'MIGUEL HIDALGO Y COSTILLA', 'MHC',20.52,-103.30,1);
insert into aeropuerto
   values(seq_aeropuerto_id.nextval,'MONTERREY INTERNATIONAL AIRPORT', 'MIA',25.77,-100.10,1);
insert into aeropuerto
   values(seq_aeropuerto_id.nextval,'CANCUN INTERNATIONAL AIRPORT', 'CIA',21.04,-86.87,1);
insert into aeropuerto
   values(seq_aeropuerto_id.nextval,'VERACRUZ INTERNATIONAL AIRPORT', 'VIA',19.14,-96.18,0);
 
prompt Realizando inserciones en Pasajero




insert into pasajero  
   values (seq_pasajero_id.nextval, 'Geoffry', 'Coppen', 'Coull', 'gcoull0@elegantthemes.com', to_date('04/15/1905','mm/dd/yyyy'), 'TPYW815025GXWDRU17');
insert into pasajero  
   values (seq_pasajero_id.nextval, 'Rivalee', 'Huddy', 'Petriello', 'rpetriello1@odnoklassniki.ru', to_date('06/20/1975','mm/dd/yyyy'), 'STUJ831727FJIZPN24');
insert into pasajero  
   values (seq_pasajero_id.nextval, 'Silva', 'Letson', 'Weinberg', 'sweinberg2@ft.com', to_date('08/26/1946','mm/dd/yyyy'), 'NPRU774281BUHITO14');
insert into pasajero  
   values (seq_pasajero_id.nextval, 'Goran', 'Dilrew', 'Hewson', 'ghewson3@smugmug.com', to_date('12/23/1919','mm/dd/yyyy'), 'CLSM170071RAPULT49');
insert into pasajero  
   values (seq_pasajero_id.nextval, 'Fanchette', 'Dainty', 'Holbie', 'fholbie4@constantcontact.com', to_date('06/25/1904','mm/dd/yyyy'), 'SFVJ401904EXLXEG64');
insert into pasajero  
   values (seq_pasajero_id.nextval, 'Chadwick', 'Ebden', 'Clowton', 'cclowton5@nih.gov', to_date('04/01/1986','mm/dd/yyyy'), 'XGWN010666FSPBTC97');
insert into pasajero  
   values (seq_pasajero_id.nextval, 'Trumann', 'Woodfine', 'Hambright', 'thambright6@reverbnation.com', to_date('02/10/1982','mm/dd/yyyy'), 'VDBI331429VBXHLE68');
insert into pasajero  
   values (seq_pasajero_id.nextval, 'Cody', 'Kopfer', 'Wheeler', 'cwheeler7@dailymotion.com', to_date('04/15/1939','mm/dd/yyyy'), 'MRXU895488MIFOQZ09');
insert into pasajero  
   values (seq_pasajero_id.nextval, 'Harri', 'Vittle', 'Cultcheth', 'hcultcheth8@umich.edu', to_date('08/02/1957','mm/dd/yyyy'), 'WDBZ380123QGXAZA22');
insert into pasajero  
   values (seq_pasajero_id.nextval, 'Analiese', 'Thay', 'Mityushkin', 'amityushkin9@qq.com', to_date('07/02/1944','mm/dd/yyyy'), 'PTYE603173KOYKES81');
insert into pasajero  
   values (seq_pasajero_id.nextval, 'Norton', 'Winchurch', 'Ferenczy', 'nferenczya@prnewswire.com', to_date('09/01/1972','mm/dd/yyyy'), 'DOTU393328YOFQKC08');
insert into pasajero  
   values (seq_pasajero_id.nextval, 'Hailey', 'Gother', 'Beincken', 'hbeinckenb@goo.gl', to_date('04/04/1960','mm/dd/yyyy'), 'JOAK090325TBHIAQ29');
insert into pasajero  
   values (seq_pasajero_id.nextval, 'Marna', 'Thewless', 'Rosevear', 'mrosevearc@bandcamp.com', to_date('08/14/1951','mm/dd/yyyy'), 'LATA257265ICTNMG38');
insert into pasajero  
   values (seq_pasajero_id.nextval, 'Brande', 'Fishlock', 'Kettow', 'bkettowd@naver.com', to_date('02/25/1980','mm/dd/yyyy') , 'JOSQ238535OURVIE19');
insert into pasajero  
   values (seq_pasajero_id.nextval, 'Edvard', 'Dennitts', 'Twiddell', 'etwiddelle@wp.com', to_date('10/06/1953','mm/dd/yyyy') , 'HHDZ298116TWJILK01');
insert into pasajero  
   values (seq_pasajero_id.nextval, 'Wain', 'Peckett', 'Dring', 'wdringf@angelfire.com', to_date('03/17/1958','mm/dd/yyyy') , 'NVEY380015EKLMDP30');
insert into pasajero  
   values (seq_pasajero_id.nextval, 'Maiga', 'Vedenichev', 'Pfaffel', 'mpfaffelg@sitemeter.com', to_date('08/21/2000','mm/dd/yyyy'), 'FDFX592797WXQJXK99');
insert into pasajero  
   values (seq_pasajero_id.nextval, 'Lona', 'Franklyn', 'O''Fallone', 'lofalloneh@guardian.co.uk', to_date('01/02/2000','mm/dd/yyyy'), 'XXBB785687OXJIIO96');
insert into pasajero  
   values (seq_pasajero_id.nextval, 'Jilleen', 'Benza', 'Tyrer', 'jtyreri@bbb.org', to_date('09/29/1998','mm/dd/yyyy'), 'AUUG544025QQWGVU73');
insert into pasajero  
   values (seq_pasajero_id.nextval, 'Farica', 'Pethrick', 'Gut', 'fgutj@360.cn', to_date('01/31/1991','mm/dd/yyyy'), 'WEXR290095HCBZNQ17');

prompt Realizando inserciones en Avion

@s-0901-procedimiento-aviones
declare

begin
p_crear_avion( '羿', 1, 0, 188, 51, 32, 0, 0, 0, 0, 0, 0);
p_crear_avion( '薛', 1, 0, 145, 39, 37, 0, 0, 0, 0, 0, 0);
p_crear_avion( '成', 1, 0, 127, 43, 30, 0, 0, 0, 0, 0, 0);
p_crear_avion( '游', 1, 0, 59, 34, 34, 0, 0, 0, 0, 0, 0);
p_crear_avion( '熊', 1, 0, 83, 60, 38, 0, 0, 0, 0, 0, 0);
p_crear_avion( '路', 1, 0, 77, 58, 36, 0, 0, 0, 0, 0, 0);
p_crear_avion( '史', 1, 0, 159, 43, 19, 0, 0, 0, 0, 0, 0);
p_crear_avion( '干', 1, 0, 62, 41, 18, 0, 0, 0, 0, 0, 0);
p_crear_avion( '秋', 1, 0, 92, 24, 17, 0, 0, 0, 0, 0, 0);
p_crear_avion( '尤', 1, 0, 157, 57, 10, 0, 0, 0, 0, 0, 0);
p_crear_avion( '辛', 1, 0, 59, 47, 18, 0, 0, 0, 0, 0, 0);
p_crear_avion( '余', 1, 0, 83, 33, 13, 0, 0, 0, 0, 0, 0);
p_crear_avion( '廖', 1, 0, 185, 50, 21, 0, 0, 0, 0, 0, 0);
p_crear_avion( '靳', 1, 0, 114, 35, 23, 0, 0, 0, 0, 0, 0);
p_crear_avion( '麻', 1, 0, 113, 24, 31, 0, 0, 0, 0, 0, 0);
p_crear_avion( '阎', 1, 0, 199, 30, 21, 0, 0, 0, 0, 0, 0);
p_crear_avion( '羿', 1, 0, 150, 39, 34, 0, 0, 0, 0, 0, 0);
p_crear_avion( '宣', 1, 0, 160, 21, 21, 0, 0, 0, 0, 0, 0);
p_crear_avion( '臧', 1, 0, 152, 52, 28, 0, 0, 0, 0, 0, 0);
p_crear_avion( '曾', 1, 0, 187, 28, 11, 0, 0, 0, 0, 0, 0);
p_crear_avion( '焦', 1, 0, 140, 25, 36, 0, 0, 0, 0, 0, 0);
p_crear_avion( '鲍', 1, 0, 154, 57, 39, 0, 0, 0, 0, 0, 0);
p_crear_avion( '伊', 1, 0, 199, 48, 16, 0, 0, 0, 0, 0, 0);
p_crear_avion( '钱', 1, 0, 161, 21, 38, 0, 0, 0, 0, 0, 0);
p_crear_avion( '常', 1, 0, 149, 27, 12, 0, 0, 0, 0, 0, 0);
p_crear_avion( '蔡', 1, 0, 89, 37, 28, 0, 0, 0, 0, 0, 0);
p_crear_avion( '汤', 1, 0, 88, 58, 38, 0, 0, 0, 0, 0, 0);
p_crear_avion( '束', 1, 0, 146, 30, 22, 0, 0, 0, 0, 0, 0);
p_crear_avion( '咸', 1, 0, 82, 35, 36, 0, 0, 0, 0, 0, 0);
p_crear_avion( '匡', 1, 0, 172, 34, 38, 0, 0, 0, 0, 0, 0);
p_crear_avion( '娄', 1, 0, 72, 34, 28, 0, 0, 0, 0, 0, 0);
p_crear_avion( '卞', 1, 0, 116, 34, 17, 0, 0, 0, 0, 0, 0);
p_crear_avion( '印', 1, 0, 150, 33, 30, 0, 0, 0, 0, 0, 0);
p_crear_avion( '终', 1, 0, 73, 56, 33, 0, 0, 0, 0, 0, 0);
p_crear_avion( '廉', 1, 0, 124, 49, 27, 0, 0, 0, 0, 0, 0);
p_crear_avion( '越', 1, 0, 104, 55, 13, 0, 0, 0, 0, 0, 0);
p_crear_avion( '殳', 1, 0, 116, 38, 24, 0, 0, 0, 0, 0, 0);
p_crear_avion( '米', 1, 0, 93, 28, 27, 0, 0, 0, 0, 0, 0);
p_crear_avion( '卫', 1, 0, 113, 48, 18, 0, 0, 0, 0, 0, 0);
p_crear_avion( '罗', 1, 0, 145, 53, 29, 0, 0, 0, 0, 0, 0);
p_crear_avion( '罗', 1, 0, 59, 28, 19, 0, 0, 0, 0, 0, 0);
p_crear_avion( '方', 1, 0, 109, 50, 36, 0, 0, 0, 0, 0, 0);
p_crear_avion( '融', 1, 0, 154, 36, 33, 0, 0, 0, 0, 0, 0);
p_crear_avion( '能', 1, 0, 151, 46, 38, 0, 0, 0, 0, 0, 0);
p_crear_avion( '衡', 1, 0, 145, 28, 14, 0, 0, 0, 0, 0, 0);
p_crear_avion( '韩', 1, 0, 64, 26, 34, 0, 0, 0, 0, 0, 0);
p_crear_avion( '党', 1, 0, 108, 58, 39, 0, 0, 0, 0, 0, 0);
p_crear_avion( '阚', 1, 0, 97, 30, 38, 0, 0, 0, 0, 0, 0);
p_crear_avion( '蔺', 1, 0, 144, 35, 39, 0, 0, 0, 0, 0, 0);
p_crear_avion( '戎', 1, 0, 183, 22, 35, 0, 0, 0, 0, 0, 0);


p_crear_avion( '管', 0, 1, 0, 0, 0, 1, 819.67, 3.62, 5.19, 7.95, 3);
p_crear_avion( '郑', 0, 1, 0, 0, 0, 2, 683.83, 6.68, 4.5, 8.71, 4);
p_crear_avion( '危', 0, 1, 0, 0, 0, 2, 381.18, 5.73, 6.68, 8.38, 1);
p_crear_avion( '黎', 0, 1, 0, 0, 0, 3, 111.47, 8.54, 7.72, 6.39, 3);
p_crear_avion( '全', 0, 1, 0, 0, 0, 1, 965.33, 8.05, 4.26, 6.01, 4);
p_crear_avion( '邬', 0, 1, 0, 0, 0, 2, 57.21, 8.88, 4.9, 7.66, 1);
p_crear_avion( '王', 0, 1, 0, 0, 0, 3, 75.31, 5.73, 5.04, 1.02, 3);
p_crear_avion( '尤', 0, 1, 0, 0, 0, 2, 593.37, 5.69, 6.81, 3.9, 3);
p_crear_avion( '苗', 0, 1, 0, 0, 0, 5, 576.67, 8.16, 8.73, 6.72, 2);
p_crear_avion( '濮', 0, 1, 0, 0, 0, 4, 586.57, 4.81, 6.8, 2.35, 4);
p_crear_avion( '武', 0, 1, 0, 0, 0, 3, 543.23, 8.89, 1.63, 8.69, 5);
p_crear_avion( '杜', 0, 1, 0, 0, 0, 4, 313.48, 8.75, 7.45, 3.59, 1);
p_crear_avion( '管', 0, 1, 0, 0, 0, 1, 484.96, 2.38, 3.53, 8.17, 4);
p_crear_avion( '叶', 0, 1, 0, 0, 0, 5, 527.34, 3.52, 1.77, 1.69, 4);
p_crear_avion( '翁', 0, 1, 0, 0, 0, 4, 161.33, 7.76, 4.86, 1.81, 2);
p_crear_avion( '俞', 0, 1, 0, 0, 0, 2, 993.64, 4.06, 3.22, 3.23, 1);
p_crear_avion( '刁', 0, 1, 0, 0, 0, 5, 584.57, 7.06, 1.57, 8.04, 4);
p_crear_avion( '祖', 0, 1, 0, 0, 0, 1, 92.33, 2.82, 5.5, 4.81, 1);
p_crear_avion( '刁', 0, 1, 0, 0, 0, 5, 239.04, 7.62, 7.96, 4.67, 4);
p_crear_avion( '彭', 0, 1, 0, 0, 0, 5, 459.81, 3.88, 8.5, 3.21, 4);
p_crear_avion( '辛', 0, 1, 0, 0, 0, 3, 293.86, 5.51, 6.4, 2.58, 5);
p_crear_avion( '戈', 0, 1, 0, 0, 0, 3, 535.99, 4.15, 3.24, 8.2, 2);
p_crear_avion( '龚', 0, 1, 0, 0, 0, 2, 67.65, 5.23, 2.56, 8.27, 2);
p_crear_avion( '宫', 0, 1, 0, 0, 0, 4, 579.39, 2.03, 7.41, 6.71, 1);
p_crear_avion( '毛', 0, 1, 0, 0, 0, 3, 952.31, 6.01, 1.91, 8.72, 2);
p_crear_avion( '戚', 0, 1, 0, 0, 0, 3, 424.6, 8.29, 2.01, 6.16, 2);
p_crear_avion( '索', 0, 1, 0, 0, 0, 5, 906.77, 8.01, 5.85, 7.6, 5);
p_crear_avion( '羿', 0, 1, 0, 0, 0, 5, 554.35, 6.27, 3.62, 5.0, 1);
p_crear_avion( '强', 0, 1, 0, 0, 0, 5, 766.9, 7.48, 7.49, 3.53, 2);
p_crear_avion( '郭', 0, 1, 0, 0, 0, 4, 18.95, 5.37, 5.82, 2.84, 3);
p_crear_avion( '韩', 0, 1, 0, 0, 0, 2, 197.53, 6.83, 1.48, 5.44, 5);
p_crear_avion( '查', 0, 1, 0, 0, 0, 4, 119.53, 3.86, 8.7, 8.1, 2);
p_crear_avion( '屠', 0, 1, 0, 0, 0, 2, 679.51, 4.65, 5.68, 3.61, 2);
p_crear_avion( '茅', 0, 1, 0, 0, 0, 2, 745.24, 7.41, 4.09, 5.67, 3);
p_crear_avion( '邹', 0, 1, 0, 0, 0, 1, 459.47, 3.12, 6.71, 8.21, 1);
p_crear_avion( '纪', 0, 1, 0, 0, 0, 5, 618.27, 3.33, 7.0, 5.19, 4);
p_crear_avion( '却', 0, 1, 0, 0, 0, 2, 959.12, 7.87, 4.73, 8.25, 5);
p_crear_avion( '汪', 0, 1, 0, 0, 0, 4, 900.2, 3.43, 7.42, 8.94, 4);
p_crear_avion( '甄', 0, 1, 0, 0, 0, 5, 580.26, 5.54, 1.08, 2.33, 5);
p_crear_avion( '糜', 0, 1, 0, 0, 0, 3, 77.1, 2.11, 5.08, 6.0, 5);
p_crear_avion( '时', 0, 1, 0, 0, 0, 4, 394.2, 1.57, 3.22, 7.89, 1);
p_crear_avion( '索', 0, 1, 0, 0, 0, 5, 769.81, 1.23, 8.65, 1.62, 5);
p_crear_avion( '范', 0, 1, 0, 0, 0, 5, 768.96, 5.51, 4.18, 1.74, 1);
p_crear_avion( '农', 0, 1, 0, 0, 0, 1, 683.96, 1.92, 7.55, 7.82, 1);
p_crear_avion( '范', 0, 1, 0, 0, 0, 3, 408.07, 7.04, 3.12, 2.49, 2);
p_crear_avion( '杜', 0, 1, 0, 0, 0, 5, 376.21, 7.69, 6.34, 4.09, 4);
p_crear_avion( '曾', 0, 1, 0, 0, 0, 3, 606.87, 8.77, 7.69, 8.55, 4);
p_crear_avion( '空', 0, 1, 0, 0, 0, 1, 516.64, 8.52, 1.86, 4.11, 4);
p_crear_avion( '常', 0, 1, 0, 0, 0, 4, 518.97, 3.31, 5.71, 3.27, 2);
p_crear_avion( '倪', 0, 1, 0, 0, 0, 1, 834.74, 7.58, 7.62, 6.17, 4);

p_crear_avion( '盍', 1, 1, 73, 32, 11, 2, 779.8, 4.3, 1.96, 8.6, 5);
p_crear_avion( '融', 1, 1, 89, 37, 19, 1, 296.47, 6.51, 2.46, 4.76, 2);
p_crear_avion( '桓', 1, 1, 85, 40, 11, 1, 946.9, 4.17, 1.68, 5.32, 5);
p_crear_avion( '朱', 1, 1, 88, 37, 15, 4, 725.32, 5.12, 2.19, 1.96, 3);
p_crear_avion( '井', 1, 1, 100, 40, 13, 4, 500.12, 6.81, 1.97, 1.35, 5);
p_crear_avion( '闻', 1, 1, 94, 33, 12, 3, 526.7, 8.85, 7.85, 6.65, 1);
p_crear_avion( '廉', 1, 1, 70, 36, 18, 1, 446.02, 5.26, 7.51, 1.33, 1);
p_crear_avion( '喻', 1, 1, 91, 36, 20, 3, 722.27, 6.53, 7.15, 8.94, 5);
p_crear_avion( '强', 1, 1, 60, 30, 13, 3, 870.51, 7.06, 1.07, 4.39, 5);
p_crear_avion( '平', 1, 1, 99, 33, 13, 4, 776.15, 7.29, 1.01, 8.49, 2);
p_crear_avion( '姬', 1, 1, 79, 39, 11, 2, 480.12, 7.21, 6.4, 5.5, 3);
p_crear_avion( '申', 1, 1, 94, 37, 19, 4, 49.62, 1.19, 3.88, 3.63, 2);
p_crear_avion( '利', 1, 1, 63, 37, 15, 4, 484.05, 8.79, 4.57, 4.28, 1);
p_crear_avion( '幸', 1, 1, 63, 37, 15, 4, 89.28, 5.57, 6.24, 1.01, 3);
p_crear_avion( '容', 1, 1, 96, 35, 20, 2, 645.79, 2.69, 3.07, 5.27, 2);
p_crear_avion( '僪', 1, 1, 93, 38, 15, 3, 372.16, 1.32, 2.14, 2.79, 5);
p_crear_avion( '凌', 1, 1, 89, 32, 17, 1, 239.41, 1.43, 2.48, 7.61, 4);
p_crear_avion( '计', 1, 1, 76, 32, 19, 2, 817.13, 4.83, 4.47, 6.35, 2);
p_crear_avion( '祝', 1, 1, 99, 37, 12, 4, 853.68, 2.4, 7.86, 2.52, 1);
p_crear_avion( '卜', 1, 1, 70, 38, 18, 4, 565.16, 5.03, 3.02, 5.57, 1);
p_crear_avion( '褚', 1, 1, 71, 40, 16, 1, 70.19, 2.66, 5.48, 4.46, 5);
p_crear_avion( '曾', 1, 1, 99, 36, 17, 1, 648.41, 8.33, 4.92, 4.36, 4);
p_crear_avion( '孟', 1, 1, 63, 38, 16, 3, 737.66, 6.68, 2.72, 8.06, 1);
p_crear_avion( '聂', 1, 1, 80, 35, 19, 3, 370.97, 3.06, 3.86, 7.58, 4);
p_crear_avion( '季', 1, 1, 75, 35, 13, 3, 204.71, 1.26, 8.14, 1.4, 1);
p_crear_avion( '利', 1, 1, 95, 37, 16, 3, 637.2, 5.25, 1.62, 4.65, 4);
p_crear_avion( '俞', 1, 1, 69, 35, 18, 3, 312.85, 4.38, 2.39, 2.24, 1);
p_crear_avion( '阮', 1, 1, 99, 32, 18, 3, 745.04, 8.0, 2.56, 6.85, 1);
p_crear_avion( '竺', 1, 1, 93, 30, 19, 2, 396.93, 8.73, 5.96, 6.72, 5);
p_crear_avion( '聂', 1, 1, 90, 34, 20, 5, 778.0, 8.55, 8.98, 8.24, 1);
p_crear_avion( '时', 1, 1, 61, 32, 16, 2, 39.41, 1.13, 5.81, 5.64, 3);
p_crear_avion( '松', 1, 1, 84, 35, 10, 4, 377.52, 8.82, 1.94, 3.2, 4);
p_crear_avion( '靳', 1, 1, 66, 37, 16, 2, 744.33, 1.8, 2.59, 2.93, 3);
p_crear_avion( '吕', 1, 1, 72, 33, 17, 5, 493.64, 5.26, 5.62, 3.24, 3);
p_crear_avion( '徐', 1, 1, 90, 33, 17, 2, 479.33, 5.83, 8.68, 2.61, 1);
p_crear_avion( '靳', 1, 1, 87, 33, 11, 1, 281.12, 3.54, 3.37, 4.42, 2);
p_crear_avion( '项', 1, 1, 95, 33, 13, 2, 283.14, 5.7, 7.03, 5.03, 1);
p_crear_avion( '刁', 1, 1, 98, 36, 11, 2, 934.04, 6.69, 5.19, 4.63, 4);
p_crear_avion( '农', 1, 1, 90, 37, 16, 5, 631.86, 1.03, 3.16, 4.75, 5);
p_crear_avion( '国', 1, 1, 83, 36, 18, 5, 353.19, 3.6, 3.67, 7.92, 5);
p_crear_avion( '井', 1, 1, 73, 33, 16, 1, 555.01, 5.31, 5.33, 6.2, 5);
p_crear_avion( '成', 1, 1, 78, 32, 11, 1, 573.42, 8.36, 8.24, 5.98, 2);
p_crear_avion( '程', 1, 1, 97, 37, 14, 2, 977.53, 8.75, 8.91, 3.01, 4);
p_crear_avion( '华', 1, 1, 70, 34, 19, 2, 945.06, 2.41, 6.25, 6.74, 2);
p_crear_avion( '申', 1, 1, 87, 31, 19, 3, 29.24, 2.17, 7.29, 7.67, 5);
p_crear_avion( '居', 1, 1, 90, 38, 11, 4, 135.96, 8.77, 7.73, 4.79, 4);
p_crear_avion( '贺', 1, 1, 86, 33, 20, 3, 478.04, 5.14, 2.51, 2.34, 4);
p_crear_avion( '解', 1, 1, 80, 37, 17, 4, 348.44, 7.16, 6.87, 7.97, 1);
p_crear_avion( '朱', 1, 1, 77, 32, 16, 2, 227.17, 7.72, 2.03, 7.7, 1);
p_crear_avion( '古', 1, 1, 96, 38, 14, 5, 211.74, 3.09, 8.96, 7.0, 1);

end;
/


prompt Realizando inserciones en Programacion
--PROGRAMADA - avion 
insert into programacion (programacion_id, numero_programacion,
fecha_salida,fecha_llegada,fecha_status,sala,tipo_programacion,avion_id,
aeropuerto_origen_id,aeropuerto_destino_id,status_id)
   values(seq_programacion_id.nextval,73845,
    to_date('01/01/2022 07:00:00','dd/mm/yyyy hh24:mi:ss'),
    to_date('01/01/2022 15:00:00','dd/mm/yyyy hh24:mi:ss'),
    to_date('01/01/2022 04:00:00','dd/mm/yyyy hh24:mi:ss'),
    12,
    'CO',
    10,
    3,
    2,
    1);

insert into programacion (programacion_id, numero_programacion,
fecha_salida,fecha_llegada,fecha_status,sala,tipo_programacion,avion_id,
aeropuerto_origen_id,aeropuerto_destino_id,status_id)
   values(seq_programacion_id.nextval,34563,
    to_date('01/01/2022 10:00:00','dd/mm/yyyy hh24:mi:ss'),
    to_date('01/01/2022 20:00:00','dd/mm/yyyy hh24:mi:ss'),
    to_date('01/01/2022 9:00:00','dd/mm/yyyy hh24:mi:ss'),
    12,
    'CO',
    39,
    1,
    2,
    1);

insert into programacion (programacion_id, numero_programacion,
fecha_salida,fecha_llegada,fecha_status,sala,tipo_programacion,avion_id,
aeropuerto_origen_id,aeropuerto_destino_id,status_id)
   values(seq_programacion_id.nextval,64658,
    to_date('01/01/2022 11:00:00','dd/mm/yyyy hh24:mi:ss'),
    to_date('01/01/2022 18:00:00','dd/mm/yyyy hh24:mi:ss'),
    to_date('01/01/2022 09:00:00','dd/mm/yyyy hh24:mi:ss'),
    2,
    'CO',
    40,
    3,
    4,
    2);

insert into programacion (programacion_id, numero_programacion,
fecha_salida,fecha_llegada,fecha_status,sala,tipo_programacion,avion_id,
aeropuerto_origen_id,aeropuerto_destino_id,status_id)
   values(seq_programacion_id.nextval,43223,
    to_date('01/01/2022 09:00:00','dd/mm/yyyy hh24:mi:ss'),
    to_date('01/01/2022 12:00:00','dd/mm/yyyy hh24:mi:ss'),
    to_date('01/01/2022 07:00:00','dd/mm/yyyy hh24:mi:ss'),
    17,
    'CO',
    3,
    5,
    1,
    2);

insert into programacion (programacion_id, numero_programacion,
fecha_salida,fecha_llegada,fecha_status,sala,tipo_programacion,avion_id,
aeropuerto_origen_id,aeropuerto_destino_id,status_id)
   values(seq_programacion_id.nextval,43223,
    to_date('01/01/2022 09:00:00','dd/mm/yyyy hh24:mi:ss'),
    to_date('01/01/2022 12:00:00','dd/mm/yyyy hh24:mi:ss'),
    to_date('01/01/2022 12:00:00','dd/mm/yyyy hh24:mi:ss'),
    5,
    'CO',
    9,
    3,
    1,
    3);

insert into programacion (programacion_id, numero_programacion,
fecha_salida,fecha_llegada,fecha_status,sala,tipo_programacion,avion_id,
aeropuerto_origen_id,aeropuerto_destino_id,status_id)
   values(seq_programacion_id.nextval,43223,
    to_date('01/01/2022 09:00:00','dd/mm/yyyy hh24:mi:ss'),
    to_date('01/01/2022 12:00:00','dd/mm/yyyy hh24:mi:ss'),
    to_date('01/01/2022 08:00:00','dd/mm/yyyy hh24:mi:ss'),
    5,
    'CO',
    32,
    1,
    4,
    5);

-------------------------PROGRAMACIONES CARGA

insert into programacion (programacion_id, numero_programacion,
fecha_salida,fecha_llegada,fecha_status,sala,tipo_programacion,avion_id,
aeropuerto_origen_id,aeropuerto_destino_id,status_id)
   values(seq_programacion_id.nextval,46589,
    to_date('02/01/2022 15:00:00','dd/mm/yyyy hh24:mi:ss'),
    to_date('02/01/2022 16:00:00','dd/mm/yyyy hh24:mi:ss'),
    to_date('02/01/2022 12:00:00','dd/mm/yyyy hh24:mi:ss'),
    20,
    'CA',
    50,
    2,
    1,
    1);
    
insert into programacion (programacion_id, numero_programacion,
fecha_salida,fecha_llegada,fecha_status,sala,tipo_programacion,avion_id,
aeropuerto_origen_id,aeropuerto_destino_id,status_id)
   values(seq_programacion_id.nextval,46589,
    to_date('02/01/2022 16:00:00','dd/mm/yyyy hh24:mi:ss'),
    to_date('02/01/2022 20:00:00','dd/mm/yyyy hh24:mi:ss'),
    to_date('02/01/2022 14:00:00','dd/mm/yyyy hh24:mi:ss'),
    2,
    'CA',
    90,
    2,
    1,
    1);
    
insert into programacion (programacion_id, numero_programacion,
fecha_salida,fecha_llegada,fecha_status,sala,tipo_programacion,avion_id,
aeropuerto_origen_id,aeropuerto_destino_id,status_id)
   values(seq_programacion_id.nextval,46589,
    to_date('02/01/2022 13:00:00','dd/mm/yyyy hh24:mi:ss'),
    to_date('02/01/2022 22:00:00','dd/mm/yyyy hh24:mi:ss'),
    to_date('02/01/2022 10:00:00','dd/mm/yyyy hh24:mi:ss'),
    12,
    'CA',
    81,
    2,
    1,
    1);

insert into programacion (programacion_id, numero_programacion,
fecha_salida,fecha_llegada,fecha_status,sala,tipo_programacion,avion_id,
aeropuerto_origen_id,aeropuerto_destino_id,status_id)
   values(seq_programacion_id.nextval,46589,
    to_date('02/01/2022 13:00:00','dd/mm/yyyy hh24:mi:ss'),
    to_date('02/01/2022 22:00:00','dd/mm/yyyy hh24:mi:ss'),
    to_date('02/01/2022 10:00:00','dd/mm/yyyy hh24:mi:ss'),
    20,
    'CA',
    134,
    4,
    2,
    1);
   
    
prompt Realizando inserciones en Pase_abordar y Pasajero_pase_abordar
--
insert into pase_abordar (pase_abordar_id, fecha_impresion,asiento,programacion_id)
   values(seq_pase_abordar_id.nextval,
  to_date('31/12/2021 20:00:00','dd/mm/yyyy hh24:mi:ss'),
  'R-02', 1);

insert into pasajero_pase_abordar 
   values (seq_pasajero_pase_abordar_id.nextval,
  '初好き大好き',1,12,
  seq_pase_abordar_id.currval);
--

--
insert into pase_abordar (pase_abordar_id, fecha_impresion,asiento,programacion_id)
   values(seq_pase_abordar_id.nextval,
  to_date('31/12/2021 20:00:00','dd/mm/yyyy hh24:mi:ss'),
  'V-42', 2);
  
insert into pasajero_pase_abordar 
   values(seq_pasajero_pase_abordar_id.nextval,
  'コカコーラが欲しい',1,17,
  seq_pase_abordar_id.currval);
--

--
insert into pase_abordar (pase_abordar_id, fecha_impresion,asiento,programacion_id)
   values(seq_pase_abordar_id.nextval,
  to_date('31/12/2021 18:00:00','dd/mm/yyyy hh24:mi:ss'),
  'A-21', 3);

insert into pasajero_pase_abordar 
   values(seq_pasajero_pase_abordar_id.nextval,
  'コカコーラが欲しい',1,2,
  seq_pase_abordar_id.currval);
--

--
insert into pase_abordar (pase_abordar_id, fecha_impresion,asiento,programacion_id)
   values(seq_pase_abordar_id.nextval,
  to_date('31/12/2021 06:00:00','dd/mm/yyyy hh24:mi:ss'),
  'C-43', 4);

insert into pasajero_pase_abordar
   values(seq_pasajero_pase_abordar_id.nextval,
  '私はホストです',1,3,
  seq_pase_abordar_id.currval);
--

--
insert into pase_abordar (pase_abordar_id, fecha_impresion,asiento,programacion_id)
   values(seq_pase_abordar_id.nextval,
  to_date('30/12/2021 21:00:00','dd/mm/yyyy hh24:mi:ss'),
  'N-01', 5);

insert into pasajero_pase_abordar
   values(seq_pasajero_pase_abordar_id.nextval,
  'リアのキック牧師',0,17,
  seq_pase_abordar_id.currval);
--  

--
insert into pase_abordar (pase_abordar_id, fecha_impresion,asiento,programacion_id)
   values(seq_pase_abordar_id.nextval,
  to_date('31/12/2021 20:00:00','dd/mm/yyyy hh24:mi:ss'),
  'T-12', 1);
  
insert into pasajero_pase_abordar
   values(seq_pasajero_pase_abordar_id.nextval,
  '私はんなにたわご',0,12,
  seq_pase_abordar_id.currval);
--

--
insert into pase_abordar (pase_abordar_id, fecha_impresion,asiento,programacion_id)
   values(seq_pase_abordar_id.nextval,
  to_date('28/12/2021 20:00:00','dd/mm/yyyy hh24:mi:ss'),
  'F-02', 
  1);
  
insert into pasajero_pase_abordar
   values(seq_pasajero_pase_abordar_id.nextval,
  '世界は私のものです',1,20,
  seq_pase_abordar_id.currval);
--

prompt Realizando inserciones en Maleta

set serveroutput on
declare
  v_peso number(5,2);
  v_lim_maletas number(1,0);
  v_num_pases number(2,0);
begin
  
  select seq_pase_abordar_id.currval into v_num_pases from dual;

  for i in 1 .. v_num_pases loop
    select dbms_random.value(1,9) into v_lim_maletas from dual;
    for j in 1 .. v_lim_maletas loop
    
      select dbms_random.value(1,99) into v_peso from dual;

      insert into maleta
       values(i,j,v_peso);

    end loop;
  end loop;
end;
/



prompt Realizando inserciones en Paquete
declare
cursor cur_programaciones is
  select programacion_id 
  from programacion p
  join avion a
    on p.avion_id = a.avion_id
  where tipo_programacion = 'CA';
  v_peso number(7,2);
  v_tipo number(1,0);
  v_num_paquetes number(2,0);
  v_folio varchar2(18);
begin
  for r in cur_programaciones loop 

  select dbms_random.value(5,30) into v_num_paquetes from dual;
  
    for i in 1 .. v_num_paquetes loop
      select dbms_random.string('X',18) into v_folio from dual;
      select dbms_random.value(1,5) into v_tipo from dual;
      select dbms_random.value(1,99) into v_peso from dual;
      insert into paquete
         values(seq_paquete_id.nextval,
        v_folio,v_peso,v_tipo, r.programacion_id);
    end loop;
 
  end loop;
end;
/


prompt Realizando inserciones en empleado

insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Rivy', 'Koles', 'Tumpane', 'HYUE192652OO2', 'YCCY380506BGQVDC08', null, 1);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Christie', 'Salling', 'Tuffey', 'HIWT023372HK1', 'CXLG765483PTLCYN60', null, 1);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Patsy', 'Mort', 'Dumelow', 'KTHH663344QP3', 'SFRG523678DOFCCG46', null, 2);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Harlan', 'Slateford', 'Siggery', 'SEDQ763603IC0', 'QGTT315484QWMPCQ76', null, 5);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Nadia', 'Grimble', 'Orcas', 'GWWV852807NY8', 'BAQK944360WBVZRH32', null, 3);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Darda', 'Marzelli', 'Whitta', 'WDJZ125671IZ6', 'QFAJ571119FJMGDX93', null, 2);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Katerine', 'Beevens', 'Murkitt', 'ZNGO926417OU6', 'XXHL932650KGZPFT25', null, 4);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Charlotte', 'Evans', 'Humber', 'YYYO882098GX8', 'BCAU937344MCBXTO63', null, 4);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Luciano', 'Kingcote', 'Stainbridge', 'XWTU855689RK4', 'TLOU086672JUEIAJ23', null, 5);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Kerri', 'Wolverson', 'Wynne', 'AWIB702565BL6', 'ZJDN478803YHNEKI08', null, 2);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Lynsey', 'Columbell', 'Budding', 'DLQN413382NZ9', 'UTUW280301ICCVVR64', null, 3);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Eduardo', 'Markson', 'Strathdee', 'PXVK356450MK7', 'ZJJX384374VKQVBY33', null, 1);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Caresse', 'Schenkel', 'Bottelstone', 'NUTR135489BI0', 'UOYR591102AZWFZQ20', null, 1);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Nixie', 'Guerre', 'Ealles', 'OQXF102702UF9', 'HDFV687339OJHGYS97', null, 5);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Ax', 'Chipp', 'Handaside', 'VKPB399740WJ6', 'LXON171499JELUAI88', null, 4);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Amery', 'Atwood', 'Bernardotte', 'QCTY094144DR3', 'CUNG360200XZCJRC14', null, 5);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Taylor', 'Scrinage', 'Dulany', 'RWXC394053GS1', 'VTBK650871GMCGCD14', null, 4);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Joannes', 'Tweedlie', 'Grierson', 'KQCI886584JJ2', 'IOCV682519MZIIIZ85', null, 2);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Matelda', 'Ost', 'Stafford', 'MCMI973899YO2', 'KIBT025605FONKNR29', null, 3);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Cecilio', 'MacCall', 'Greenhalf', 'ZYBG360773BG1', 'MSFY673152ASWFUA21', null, 1);

insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Brittan', 'Wattinham', 'Bernardez', 'CXHK581903WK7', 'KAKE666154KIIVKC52', 12, 4);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Dede', 'Harrow', 'Hefferon', 'KYPS212663GW6', 'UMOX616902SINOMB08', 14, 1);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Charlene', 'Attyeo', 'Fitchell', 'QXTK533248NB3', 'UOMB062260MGUTFU33', 9, 3);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Ev', 'Keyzor', 'Woolner', 'AIJW293287WJ7', 'IHHO418996WRKPDH72', 5, 4);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Raphael', 'Brownsey', 'Gilley', 'IONW464528LR0', 'KKCK270990SLFBGU91', 11, 4);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Timothy', 'Oldnall', 'D''Aguanno', 'NUYJ894011AE3', 'UXNW631829BCEPIL60', 11, 2);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Jeromy', 'Bentham', 'Ruske', 'FJAO316636EO9', 'TFPH821762PILMIY90', 18, 3);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'August', 'Viegas', 'Archbell', 'QQWW495140QH7', 'LCSV807621JXXGEU34', 13, 4);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Florrie', 'Neasam', 'Laimable', 'DECS082262FY2', 'JHBR160106KDUPVK16', 17, 2);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Skip', 'Lynthal', 'Betke', 'DLIL058408LO3', 'JVHS209700GPFLPV74', 12, 4);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Lenora', 'Beeres', 'Gallihaulk', 'UUCV135631LM4', 'UDJF464389XFFRWC01', 16, 2);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Kaye', 'Kleinstub', 'Revening', 'FDQE211674EQ1', 'KXTI537704ROCFGL92', 18, 5);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Shir', 'Hyams', 'Wapol', 'DJZR119713RY7', 'HWFG021592EMVMSL88', 9, 5);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Aksel', 'Wogan', 'Jeafferson', 'TDDX585566MO7', 'MCFB235929AYCIZP70', 4, 1);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Jarrid', 'Habbema', 'Cappell', 'NUXJ143866MT0', 'COFV512702WMAXKB00', 16, 2);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Davida', 'Collumbine', 'Flea', 'SHMJ590772DW9', 'RLWV477622GMIVIE03', 16, 2);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Sofie', 'Cardew', 'Pettit', 'CZJM393500VT9', 'XXCC406565ZVILFC75', 8, 4);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Shoshanna', 'Snookes', 'Cuttles', 'DPEN779320EB8', 'VKII132986RINRQW71', 9, 4);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Sonnie', 'Adame', 'Snead', 'HEOZ046095KG0', 'XGSF580286YYENHW24', 7, 1);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Minette', 'Attwoull', 'Le feaver', 'UYZE029390DG8', 'VOCP870782FJXHRS41', 14, 1);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Kym', 'Simeoli', 'Bayston', 'GVCZ541223PB8', 'DIRW366895PWCFRO57', 13, 3);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Annabal', 'Sowten', 'Edscer', 'NSJA944766ND5', 'ZQIF029037FNIDWQ96', 20, 2);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Muire', 'Fetters', 'Lyenyng', 'NAKB895029JN6', 'GYDN609969BNKJWZ42', 14, 2);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Ollie', 'Shilladay', 'Hampshire', 'AXGQ689704AU7', 'FYWL781162CFGJVV78', 10, 3);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Ian', 'Arney', 'Beck', 'AVVU813196EA4', 'WUQH144042ZATPOO13', 13, 4);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Zackariah', 'Litchmore', 'Cubuzzi', 'HXKP618190HS9', 'ZTUW232937SODUTA07', 13, 3);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Velvet', 'Lagen', 'Hagland', 'TGZE358852WD8', 'SXKA113309CVLJJI17', 20, 2);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Dina', 'Kinsett', 'Austwick', 'NBMF221083XD8', 'PPAB773734NFMBAR10', 3, 1);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Denys', 'Jozsef', 'Manis', 'GHAD128525LA4', 'UIJS044394ZLTAWD50', 15, 3);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Katya', 'Labrom', 'Von Oertzen', 'EMBA365623IP7', 'XPBJ855256ROPLUN40', 4, 1);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Davida', 'Svanini', 'Seawright', 'CHIR152585TO1', 'CKJV478328MLASRC01', 18, 5);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Yuri', 'Radmore', 'O''Nowlan', 'RBNG657784FD4', 'ZMLU851538MGBJOM58', 14, 5);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Otho', 'Needs', 'Etches', 'KAMG897238LH6', 'RGSC687689KFYGZZ23', 12, 2);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Talbot', 'Carine', 'Wybrow', 'TOLY045170QO8', 'GPOW651667PEVTJO97', 7, 5);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Florinda', 'Brandoni', 'Hosby', 'JMLQ742148PX9', 'CFUS531241LPAWAW25', 3, 3);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Billie', 'Cuttle', 'Bodle', 'BOGK762847KU9', 'IJOD237092QTWOHD33', 12, 5);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Jacquenetta', 'Siegertsz', 'Ovendon', 'HQOX939598ZC7', 'LLKV927126XOPNHR29', 8, 2);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Rosmunda', 'Kindred', 'Waliszewski', 'PVEM430731UK8', 'TVHW579296HICDUQ71', 17, 1);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Preston', 'Petren', 'Ramsby', 'CPSQ945163OK7', 'XXXM777680BIIGUT46', 9, 2);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Denny', 'Liston', 'Llywarch', 'UQCQ345686EX6', 'EELV722466NUOPXV27', 1, 5);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Edie', 'Hains', 'Braidman', 'CNCB026147FG3', 'GWRK261834ZXKIJX92', 12, 5);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Warren', 'Jelf', 'Blackie', 'VSXZ369417WV0', 'IHNV861605FCARJL21', 14, 5);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Wade', 'Fillan', 'Cheetam', 'ZUEP412750YQ5', 'HLBT562475VHRCSU58', 6, 3);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Fan', 'Riehm', 'Mangan', 'TVJU830029ZI5', 'MNLE481809LAIWPI58', 4, 5);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Sada', 'Pampling', 'Hazley', 'AGGO389357RL8', 'QTNT445880DDPRKY35', 5, 1);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Isis', 'Zaczek', 'Senner', 'YEAO066730EI1', 'LHSK227694JFZTWO69', 3, 5);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Eleonore', 'Duchasteau', 'Brader', 'PLRN304089ET1', 'BSCV702124UPKGKO25', 2, 1);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Delila', 'Corrison', 'Clow', 'IIML610153JK2', 'JWJT073627WFFWPW89', 17, 3);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Cate', 'Stimpson', 'Jeannard', 'QHEZ124023VY1', 'IWLH862807GFEKOV11', 3, 3);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Lynda', 'Stogill', 'Steed', 'TPZY789087UT6', 'HWOP295785NJCSEY03', 10, 1);

insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Gabie', 'Prosch', 'Bastick', 'KHTP282254LD1', 'WUAQ477580UXDGOE59', 48, 1);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Brunhilde', 'Bertelet', 'Ekless', 'CUTO329464TG3', 'ZABF313785YEAUSD04', 32, 4);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Kaia', 'Grishkov', 'Newbegin', 'EFOR574205OT9', 'MBCM709819CCAWCC09', 65, 2);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Katee', 'Tindley', 'McIvor', 'CPPI655069RY3', 'YXEK261341UJLDOB98', 58, 5);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Karalynn', 'McKea', 'Petkov', 'TADR709690KA8', 'HBBN492095WKKDJK50', 68, 5);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Breanne', 'Farrin', 'Mulles', 'ERRM289339JI5', 'BZHC903068IMSKGX63', 34, 3);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Karlen', 'Reskelly', 'Winthrop', 'SGZB846630XG5', 'BEXH036709ADNKMD36', 53, 2);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Sara-ann', 'Lage', 'Aberkirdo', 'PSKX659960PY7', 'HERJ058684HJZYUV14', 42, 5);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Elroy', 'Widdop', 'Storms', 'WWEX111102GE2', 'TWBQ357923YSPHCF40', 21, 5);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Roderich', 'Waren', 'Saphin', 'EBSD528559YA5', 'AWZU083420JTACRD02', 57, 4);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Annabell', 'Duker', 'Alexandre', 'ROGB809127RP2', 'WNDL822829YMNJCU25', 63, 4);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Anatol', 'Luckwell', 'Cabotto', 'BGCT707041ZF6', 'JCUV332136DXCDCP46', 40, 4);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Wilmette', 'Radband', 'Rosendale', 'PYTK938241VK6', 'HAHK420225IUNRWS40', 64, 1);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Berton', 'Ferencz', 'Saladino', 'VQMR124761XC5', 'SZJU215078TYZTXH03', 64, 1);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Sioux', 'Mordanti', 'Cawse', 'JSVK652907CF8', 'JCNB604514SHRRWC59', 64, 1);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Whitman', 'Thurley', 'Finnis', 'ZIKM890737XA3', 'ASVC213673FOGUEZ54', 48, 4);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Sosanna', 'Loadsman', 'Fann', 'YNOG244352ZK4', 'FHBW771706BCQQND74', 52, 1);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Thorpe', 'Spadazzi', 'Quarrington', 'OTTF374000LB5', 'KUSY922332NLZAZQ99', 26, 1);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Annette', 'Bentick', 'Shelsher', 'KANV196387ML5', 'KMBX569125YZSDQI48', 32, 1);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Hyacinthe', 'Heindrich', 'Sweed', 'SXMM977541IJ1', 'HWPJ435196HFVOSL80', 44, 2);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Kally', 'Brugsma', 'Coldman', 'JTOC625904TW8', 'QRTM824708ATCFXM86', 43, 5);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Phyllis', 'Boatright', 'Horley', 'ICNG302306RG6', 'MERN384929RHBVSV11', 47, 3);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Mellisa', 'Whitehorne', 'MacIlriach', 'WIHE093486KL6', 'EMCA234957AMRHPA41', 51, 5);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Doralynne', 'Lammas', 'Crichton', 'HNQM135924RV1', 'HRUT935278XKFMNP84', 49, 3);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Jaimie', 'Jakubowicz', 'Daniele', 'SEQT039432GK5', 'UPCN728685GTYEAS15', 37, 4);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Wylma', 'Abbitt', 'Skudder', 'HSTN738889XZ4', 'DBYE864067EAZRBJ99', 24, 2);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Laurene', 'Mace', 'Mussen', 'BUDF868999YV1', 'BXQP723954YOFUGD28', 65, 4);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Tana', 'Larder', 'Shippard', 'HFXO514232CA3', 'GNPB056179WOHQDR77', 66, 3);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Shamus', 'Kerrey', 'Yegorovnin', 'JFFP719816PB0', 'KVAD847797QEENPZ51', 55, 3);
insert into EMPLEADO (empleado_id, nombre, ap_paterno, ap_materno, rfc, curp, jefe_id, puesto_id) 
   values (seq_empleado_id.nextval, 'Roana', 'Barriball', 'McBay', 'AHGW154873ML7', 'CPUL368218CFDAKC98', 58, 3);

prompt Realizando inserciones en url_trabajos_empleado

insert into URL_TRABAJOS_EMPLEADO (url_trabajos_empleado_id, url_direccion, empleado_id)
  values (seq_url_trabajos_empleado_id.nextval, 'https://posterous.com/accumsan/odio/curabitur/convallis/duis/consequat/dui.xml', 52);
insert into URL_TRABAJOS_EMPLEADO (url_trabajos_empleado_id, url_direccion, empleado_id)
  values (seq_url_trabajos_empleado_id.nextval, 'http://dropbox.com/primis/in/faucibus/orci/luctus/et/ultrices.jsp', 62);
insert into URL_TRABAJOS_EMPLEADO (url_trabajos_empleado_id, url_direccion, empleado_id)
  values (seq_url_trabajos_empleado_id.nextval, 'http://cocolog-nifty.com/ipsum/ac/tellus/semper.js', 66);
insert into URL_TRABAJOS_EMPLEADO (url_trabajos_empleado_id, url_direccion, empleado_id)
  values (seq_url_trabajos_empleado_id.nextval, 'http://phoca.cz/eget/congue/eget/semper/rutrum/nulla/nunc.aspx', 72);
insert into URL_TRABAJOS_EMPLEADO (url_trabajos_empleado_id, url_direccion, empleado_id)
  values (seq_url_trabajos_empleado_id.nextval, 'https://ftc.gov/sed/tincidunt/eu.js', 50);
insert into URL_TRABAJOS_EMPLEADO (url_trabajos_empleado_id, url_direccion, empleado_id)
  values (seq_url_trabajos_empleado_id.nextval, 'http://google.fr/mattis/pulvinar/nulla.json', 45);
insert into URL_TRABAJOS_EMPLEADO (url_trabajos_empleado_id, url_direccion, empleado_id)
  values (seq_url_trabajos_empleado_id.nextval, 'http://gov.uk/turpis/donec/posuere/metus/vitae/ipsum.json', 99);
insert into URL_TRABAJOS_EMPLEADO (url_trabajos_empleado_id, url_direccion, empleado_id)
  values (seq_url_trabajos_empleado_id.nextval, 'http://hao123.com/lectus/in/est/risus/auctor.json', 8);
insert into URL_TRABAJOS_EMPLEADO (url_trabajos_empleado_id, url_direccion, empleado_id)
  values (seq_url_trabajos_empleado_id.nextval, 'http://smugmug.com/quis/odio/consequat/varius.js', 14);
insert into URL_TRABAJOS_EMPLEADO (url_trabajos_empleado_id, url_direccion, empleado_id)
  values (seq_url_trabajos_empleado_id.nextval, 'http://wufoo.com/viverra.xml', 8);
insert into URL_TRABAJOS_EMPLEADO (url_trabajos_empleado_id, url_direccion, empleado_id)
  values (seq_url_trabajos_empleado_id.nextval, 'https://instagram.com/odio.jpg', 7);
insert into URL_TRABAJOS_EMPLEADO (url_trabajos_empleado_id, url_direccion, empleado_id)
  values (seq_url_trabajos_empleado_id.nextval, 'http://rakuten.co.jp/in/felis/donec/semper/sapien.jpg', 52);
insert into URL_TRABAJOS_EMPLEADO (url_trabajos_empleado_id, url_direccion, empleado_id)
  values (seq_url_trabajos_empleado_id.nextval, 'http://so-net.ne.jp/dapibus/dolor/vel/est/donec/odio.jpg', 62);
insert into URL_TRABAJOS_EMPLEADO (url_trabajos_empleado_id, url_direccion, empleado_id)
  values (seq_url_trabajos_empleado_id.nextval, 'http://blinklist.com/vulputate/elementum/nullam/varius/nulla/facilisi.js', 79);
insert into URL_TRABAJOS_EMPLEADO (url_trabajos_empleado_id, url_direccion, empleado_id)
  values (seq_url_trabajos_empleado_id.nextval, 'https://simplemachines.org/cubilia/curae.png', 55);
insert into URL_TRABAJOS_EMPLEADO (url_trabajos_empleado_id, url_direccion, empleado_id)
  values (seq_url_trabajos_empleado_id.nextval, 'http://forbes.com/suspendisse/ornare.json', 3);
insert into URL_TRABAJOS_EMPLEADO (url_trabajos_empleado_id, url_direccion, empleado_id)
  values (seq_url_trabajos_empleado_id.nextval, 'https://netscape.com/at/feugiat/non.aspx', 11);
insert into URL_TRABAJOS_EMPLEADO (url_trabajos_empleado_id, url_direccion, empleado_id)
  values (seq_url_trabajos_empleado_id.nextval, 'https://cisco.com/sed/interdum/venenatis/turpis/enim.jsp', 39);
insert into URL_TRABAJOS_EMPLEADO (url_trabajos_empleado_id, url_direccion, empleado_id)
  values (seq_url_trabajos_empleado_id.nextval, 'http://psu.edu/curae/nulla/dapibus.js', 88);
insert into URL_TRABAJOS_EMPLEADO (url_trabajos_empleado_id, url_direccion, empleado_id)
  values (seq_url_trabajos_empleado_id.nextval, 'http://gmpg.org/posuere/cubilia/curae/duis/faucibus.html', 11);
insert into URL_TRABAJOS_EMPLEADO (url_trabajos_empleado_id, url_direccion, empleado_id)
  values (seq_url_trabajos_empleado_id.nextval, 'https://discuz.net/pretium/iaculis/justo/in/hac/habitasse/platea.html', 42);
insert into URL_TRABAJOS_EMPLEADO (url_trabajos_empleado_id, url_direccion, empleado_id)
  values (seq_url_trabajos_empleado_id.nextval, 'http://amazon.co.jp/sapien/iaculis/congue.json', 5);
insert into URL_TRABAJOS_EMPLEADO (url_trabajos_empleado_id, url_direccion, empleado_id)
  values (seq_url_trabajos_empleado_id.nextval, 'https://altervista.org/in/hac/habitasse/platea.json', 68);
insert into URL_TRABAJOS_EMPLEADO (url_trabajos_empleado_id, url_direccion, empleado_id)
  values (seq_url_trabajos_empleado_id.nextval, 'https://psu.edu/sit/amet/eros/suspendisse.png', 57);
insert into URL_TRABAJOS_EMPLEADO (url_trabajos_empleado_id, url_direccion, empleado_id)
  values (seq_url_trabajos_empleado_id.nextval, 'http://youtu.be/erat/volutpat/in/congue/etiam.xml', 38);
insert into URL_TRABAJOS_EMPLEADO (url_trabajos_empleado_id, url_direccion, empleado_id)
  values (seq_url_trabajos_empleado_id.nextval, 'https://vkontakte.ru/ultrices/libero/non/mattis.aspx', 91);
insert into URL_TRABAJOS_EMPLEADO (url_trabajos_empleado_id, url_direccion, empleado_id)
  values (seq_url_trabajos_empleado_id.nextval, 'https://yahoo.com/vulputate/ut/ultrices.png', 84);
insert into URL_TRABAJOS_EMPLEADO (url_trabajos_empleado_id, url_direccion, empleado_id)
  values (seq_url_trabajos_empleado_id.nextval, 'http://clickbank.net/massa.jpg', 97);
insert into URL_TRABAJOS_EMPLEADO (url_trabajos_empleado_id, url_direccion, empleado_id)
  values (seq_url_trabajos_empleado_id.nextval, 'http://technorati.com/nisl/venenatis/lacinia/aenean.aspx', 1);
insert into URL_TRABAJOS_EMPLEADO (url_trabajos_empleado_id, url_direccion, empleado_id)
  values (seq_url_trabajos_empleado_id.nextval, 'https://vinaora.com/platea/dictumst/aliquam.html', 10);
insert into URL_TRABAJOS_EMPLEADO (url_trabajos_empleado_id, url_direccion, empleado_id)
  values (seq_url_trabajos_empleado_id.nextval, 'https://oaic.gov.au/fusce/consequat/nulla.json', 48);
insert into URL_TRABAJOS_EMPLEADO (url_trabajos_empleado_id, url_direccion, empleado_id)
  values (seq_url_trabajos_empleado_id.nextval, 'https://nps.gov/id/turpis/integer/aliquet.aspx', 77);
insert into URL_TRABAJOS_EMPLEADO (url_trabajos_empleado_id, url_direccion, empleado_id)
  values (seq_url_trabajos_empleado_id.nextval, 'https://yolasite.com/in/faucibus/orci/luctus/et.html', 3);
insert into URL_TRABAJOS_EMPLEADO (url_trabajos_empleado_id, url_direccion, empleado_id)
  values (seq_url_trabajos_empleado_id.nextval, 'https://scribd.com/congue.html', 74);
insert into URL_TRABAJOS_EMPLEADO (url_trabajos_empleado_id, url_direccion, empleado_id)
  values (seq_url_trabajos_empleado_id.nextval, 'http://e-recht24.de/sed/vel/enim/sit.aspx', 76);
insert into URL_TRABAJOS_EMPLEADO (url_trabajos_empleado_id, url_direccion, empleado_id)
  values (seq_url_trabajos_empleado_id.nextval, 'http://1und1.de/dapibus/at/diam/nam/tristique.png', 69);
insert into URL_TRABAJOS_EMPLEADO (url_trabajos_empleado_id, url_direccion, empleado_id)
  values (seq_url_trabajos_empleado_id.nextval, 'http://google.com.au/est/et/tempus/semper/est/quam/pharetra.aspx', 94);
insert into URL_TRABAJOS_EMPLEADO (url_trabajos_empleado_id, url_direccion, empleado_id)
  values (seq_url_trabajos_empleado_id.nextval, 'https://mozilla.org/nec/euismod/scelerisque/quam.jsp', 55);
insert into URL_TRABAJOS_EMPLEADO (url_trabajos_empleado_id, url_direccion, empleado_id)
  values (seq_url_trabajos_empleado_id.nextval, 'http://netlog.com/orci/luctus/et/ultrices/posuere/cubilia.xml', 99);
insert into URL_TRABAJOS_EMPLEADO (url_trabajos_empleado_id, url_direccion, empleado_id)
  values (seq_url_trabajos_empleado_id.nextval, 'http://prnewswire.com/sollicitudin.xml', 57);
insert into URL_TRABAJOS_EMPLEADO (url_trabajos_empleado_id, url_direccion, empleado_id)
  values (seq_url_trabajos_empleado_id.nextval, 'https://fc2.com/quis/odio/consequat/varius/integer/ac.xml', 14);
insert into URL_TRABAJOS_EMPLEADO (url_trabajos_empleado_id, url_direccion, empleado_id)
  values (seq_url_trabajos_empleado_id.nextval, 'https://thetimes.co.uk/suspendisse/accumsan/tortor/quis/turpis/sed/ante.png', 25);
insert into URL_TRABAJOS_EMPLEADO (url_trabajos_empleado_id, url_direccion, empleado_id)
  values (seq_url_trabajos_empleado_id.nextval, 'http://bbb.org/pede/libero/quis/orci/nullam/molestie/nibh.aspx', 78);
insert into URL_TRABAJOS_EMPLEADO (url_trabajos_empleado_id, url_direccion, empleado_id)
  values (seq_url_trabajos_empleado_id.nextval, 'http://skype.com/posuere/cubilia/curae/duis/faucibus.json', 45);
insert into URL_TRABAJOS_EMPLEADO (url_trabajos_empleado_id, url_direccion, empleado_id)
  values (seq_url_trabajos_empleado_id.nextval, 'https://reverbnation.com/faucibus/orci.json', 83);
insert into URL_TRABAJOS_EMPLEADO (url_trabajos_empleado_id, url_direccion, empleado_id)
  values (seq_url_trabajos_empleado_id.nextval, 'http://ameblo.jp/velit.png', 4);
insert into URL_TRABAJOS_EMPLEADO (url_trabajos_empleado_id, url_direccion, empleado_id)
  values (seq_url_trabajos_empleado_id.nextval, 'https://gmpg.org/consequat/dui.js', 86);
insert into URL_TRABAJOS_EMPLEADO (url_trabajos_empleado_id, url_direccion, empleado_id)
  values (seq_url_trabajos_empleado_id.nextval, 'https://pinterest.com/ipsum/aliquam/non/mauris/morbi.xml', 52);
insert into URL_TRABAJOS_EMPLEADO (url_trabajos_empleado_id, url_direccion, empleado_id)
  values (seq_url_trabajos_empleado_id.nextval, 'https://yelp.com/sagittis/sapien/cum/sociis/natoque/penatibus.aspx', 2);
insert into URL_TRABAJOS_EMPLEADO (url_trabajos_empleado_id, url_direccion, empleado_id)
  values (seq_url_trabajos_empleado_id.nextval, 'https://marriott.com/nunc/proin/at/turpis/a/pede.jpg', 41);



prompt Realizando inserciones en programacion_empleado
--  programacion_id       number(15,0) not null,
--  empleado_id           number(10,0) not null,
--  puntaje               number(3,0) not null, --MENOR IGUAL A 100

--Pilotos CA Y CO
insert into programacion_empleado
  values(1,1,100);

insert into programacion_empleado
  values(2,2,0);

insert into programacion_empleado
  values(3,12,80);

insert into programacion_empleado
  values(4,13,95);

insert into programacion_empleado
  values(5,20,60);

insert into programacion_empleado
  values(6,22,0);

insert into programacion_empleado
  values(7,34,10);

insert into programacion_empleado
  values(8,39,20);

insert into programacion_empleado
  values(9,40,40);

insert into programacion_empleado
  values(10,48,60);

--Copilotos CO
insert into programacion_empleado
  values(1,3,65);

insert into programacion_empleado
  values(2,6,96);

insert into programacion_empleado
  values(3,10,40);

insert into programacion_empleado
  values(4,18,97);

insert into programacion_empleado
  values(5,26,34);

insert into programacion_empleado
  values(6,29,21);
--Copiltos CA

insert into programacion_empleado
  values(7,31,32);

insert into programacion_empleado
  values(7,35,93);

insert into programacion_empleado
  values(8,36,43);

insert into programacion_empleado
  values(8,42,32);

insert into programacion_empleado
  values(9,43,43);

insert into programacion_empleado
  values(9,47,23);

insert into programacion_empleado
  values(10,53,38);

insert into programacion_empleado
  values(10,57,38);


--Jefe sobrecargos

insert into programacion_empleado
  values(1,7,20);

insert into programacion_empleado
  values(2,8,15);

insert into programacion_empleado
  values(3,15,9);

insert into programacion_empleado
  values(4,17,1);

insert into programacion_empleado
  values(5,21,6);

insert into programacion_empleado
  values(6,24,3);

--Sobrecargos

insert into programacion_empleado
  values(1,5,22);

insert into programacion_empleado
  values(1,11,44);

insert into programacion_empleado
  values(1,19,10);

insert into programacion_empleado
  values(2,23,63);

insert into programacion_empleado
  values(2,27,80);

insert into programacion_empleado
  values(2,41,98);

insert into programacion_empleado
  values(3,44,100);

insert into programacion_empleado
  values(3,46,100);

insert into programacion_empleado
  values(3,49,20);

insert into programacion_empleado
  values(4,55,14);

insert into programacion_empleado
  values(4,63,18);

insert into programacion_empleado
  values(4,68,34);

insert into programacion_empleado
  values(5,69,12);

insert into programacion_empleado
  values(5,76,64);

insert into programacion_empleado
  values(5,92,53);

insert into programacion_empleado
  values(6,94,42);

insert into programacion_empleado
  values(6,98,0);

insert into programacion_empleado
  values(6,99,12);

--Tecnicos
insert into programacion_empleado
  values(7,4,54);

insert into programacion_empleado
  values(7,9,23);

insert into programacion_empleado
  values(7,14,54);

insert into programacion_empleado
  values(7,16,64);

insert into programacion_empleado
  values(8,32,23);

insert into programacion_empleado
  values(8,33,34);

insert into programacion_empleado
  values(8,51,54);

insert into programacion_empleado
  values(8,52,34);

insert into programacion_empleado
  values(9,54,99);

insert into programacion_empleado
  values(9,56,75);

insert into programacion_empleado
  values(9,60,23);

insert into programacion_empleado
  values(9,61,75);

insert into programacion_empleado
  values(9,62,34);

insert into programacion_empleado
  values(10,62,64);

insert into programacion_empleado
  values(10,66,0);

insert into programacion_empleado
  values(10,74,12);

insert into programacion_empleado
  values(10,75,54);

insert into programacion_empleado
  values(10,78,64);

prompt Anexando programacion a ubicacion_programacion
insert into ubicacion_programacion 
  values(1, 5, to_date('01/01/2022 09:00:00','dd/mm/yyyy hh24:mi:ss'),
  30.45, -283.45);

insert into ubicacion_programacion 
  values(2,5, to_date('01/01/2022 09:01:00','dd/mm/yyyy hh24:mi:ss'),
  30.20, -280.45);


insert into ubicacion_programacion 
  values(3, 5, to_date('01/01/2022 09:02:00','dd/mm/yyyy hh24:mi:ss'),
  29.7, -279.99);


insert into ubicacion_programacion 
  values(4,
  5, to_date('01/01/2022 09:03:00','dd/mm/yyyy hh24:mi:ss'),
  29.45, -279.4);

prompt Historico_status_programacion
insert into historico_status_programacion
  values(seq_historico_status_programacion_id.nextval,
  to_date('01/01/2022 04:00:00','dd/mm/yyyy hh24:mi:ss'),
  1,
  1
  );

insert into historico_status_programacion
  values(seq_historico_status_programacion_id.nextval,
  to_date('01/01/2022 9:00:00','dd/mm/yyyy hh24:mi:ss'),
  1,
  2
  );

insert into historico_status_programacion
  values(seq_historico_status_programacion_id.nextval,
  to_date('01/01/2022 08:00:00','dd/mm/yyyy hh24:mi:ss'),
  1,
  3
  );

insert into historico_status_programacion
  values(seq_historico_status_programacion_id.nextval,
  to_date('01/01/2022 09:00:00','dd/mm/yyyy hh24:mi:ss'),
  2,
  3
  );

insert into historico_status_programacion
  values(seq_historico_status_programacion_id.nextval,
  to_date('01/01/2022 04:00:00','dd/mm/yyyy hh24:mi:ss'),
  1,
  4
  );

insert into historico_status_programacion
  values(seq_historico_status_programacion_id.nextval,
  to_date('01/01/2022 07:00:00','dd/mm/yyyy hh24:mi:ss'),
  2,
  4
  );

insert into historico_status_programacion
  values(seq_historico_status_programacion_id.nextval,
  to_date('01/01/2022 04:00:00','dd/mm/yyyy hh24:mi:ss'),
  1,
  5
  );

insert into historico_status_programacion
  values(seq_historico_status_programacion_id.nextval,
  to_date('01/01/2022 07:00:00','dd/mm/yyyy hh24:mi:ss'),
  2,
  5
  );

insert into historico_status_programacion
  values(seq_historico_status_programacion_id.nextval,
  to_date('01/01/2022 12:00:00','dd/mm/yyyy hh24:mi:ss'),
  3,
  5
  );

insert into historico_status_programacion
  values(seq_historico_status_programacion_id.nextval,
  to_date('01/01/2022 09:30:00','dd/mm/yyyy hh24:mi:ss'),
  1,
  6
  );

insert into historico_status_programacion
  values(seq_historico_status_programacion_id.nextval,
  to_date('01/01/2022 08:00:00','dd/mm/yyyy hh24:mi:ss'),
  5,
  6
  );

insert into historico_status_programacion
  values(seq_historico_status_programacion_id.nextval,
  to_date('02/01/2022 12:00:00','dd/mm/yyyy hh24:mi:ss'),
  1,
  7
  );

insert into historico_status_programacion
  values(seq_historico_status_programacion_id.nextval,
  to_date('02/01/2022 14:00:00','dd/mm/yyyy hh24:mi:ss'),
  1,
  8
  );

insert into historico_status_programacion
  values(seq_historico_status_programacion_id.nextval,
  to_date('02/01/2022 10:00:00','dd/mm/yyyy hh24:mi:ss'),
  1,
  9
  );

insert into historico_status_programacion
  values(seq_historico_status_programacion_id.nextval,
  to_date('02/01/2022 10:00:00','dd/mm/yyyy hh24:mi:ss'),
  1,
  10
  );
