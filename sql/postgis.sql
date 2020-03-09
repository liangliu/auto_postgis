

-- st_length test
drop table if exists t1;
create table t1 (geo1 geometry);
copy t1 from '/home/czp/auto_postgis/data/length.csv' DELIMITER '|' csv header;
select count(*) from t1;
\o /home/czp/auto_postgis/result/length.out 
select st_length(geo1) from t1;
\o

-- st_isValid test
drop table if exists t1;
create table t1 (geo1 geometry);
copy t1 from '/home/czp/auto_postgis/data/isValid.csv' DELIMITER '|' csv header;
select count(*) from t1;
\o /home/czp/auto_postgis/result/isValid.out 
select st_isValid(geo1) from t1;
\o

-- st_area test
drop table if exists t1;
create table t1 (geo1 geometry);
copy t1 from '/home/czp/auto_postgis/data/area.csv' DELIMITER '|' csv header;
select count(*) from t1;
\o /home/czp/auto_postgis/result/area.out 
select st_area(geo1) from t1;
\o

-- st_envelope test
drop table if exists t1;
create table t1 (geo1 geometry);
copy t1 from '/home/czp/auto_postgis/data/envelope.csv' DELIMITER '|' csv header;
select count(*) from t1;
\o /home/czp/auto_postgis/result/envelope.out 
select st_astext(st_envelope(geo1)) from t1;
\o


-- st_envelope_aggr test
drop table if exists t1;
create table t1 (geo1 geometry);
copy t1 from '/home/czp/auto_postgis/data/envelope_aggr.csv' DELIMITER '|' csv header;
select count(*) from t1;
\o /home/czp/auto_postgis/result/envelope_aggr.out 
select st_astext(st_union(st_envelope(geo1))) from t1;
\o


-- st_centroid test
drop table if exists t1;
create table t1 (geo1 geometry);
copy t1 from '/home/czp/auto_postgis/data/centroid.csv' DELIMITER '|' csv header;
select count(*) from t1;
\o /home/czp/auto_postgis/result/centroid.out 
select st_astext(st_centroid(geo1)) from t1;
\o

-- st_convexhull test
drop table if exists t1;
create table t1 (geo1 geometry);
copy t1 from '/home/czp/auto_postgis/data/convexhull.csv' DELIMITER '|' csv header;
select count(*) from t1;
\o /home/czp/auto_postgis/result/convexhull.out 
select st_astext(st_convexhull(geo1)) from t1;
\o

-- st_buffer test
drop table if exists t1;
create table t1 (geo1 geometry);
copy t1 from '/home/czp/auto_postgis/data/buffer.csv' DELIMITER '|' csv header;
select count(*) from t1;
\o /home/czp/auto_postgis/result/buffer.out 
select st_astext(st_buffer(geo1,0)) from t1;
\o

-- st_NPoints test
drop table if exists t1;
create table t1 (geo1 geometry);
copy t1 from '/home/czp/auto_postgis/data/npoints.csv' DELIMITER '|' csv header;
select count(*) from t1;
\o /home/czp/auto_postgis/result/npoints.out 
select st_npoints(geo1) from t1;
\o

-- st_Touches test
drop table if exists t1;
create table t1 (geo1 geometry,geo2 geometry);
copy t1 from '/home/czp/auto_postgis/data/touches.csv' DELIMITER '|' csv header;
select count(*) from t1;
\o /home/czp/auto_postgis/result/touches.out 
select st_touches(geo1,geo2) from t1;
\o

-- st_overlaps test
drop table if exists t1;
create table t1 (geo1 geometry,geo2 geometry);
copy t1 from '/home/czp/auto_postgis/data/overlaps.csv' DELIMITER '|' csv header;
select count(*) from t1;
\o /home/czp/auto_postgis/result/overlaps.out 
select st_overlaps(geo1,geo2) from t1;
\o

-- st_Crosses test
drop table if exists t1;
create table t1 (geo1 geometry,geo2 geometry);
copy t1 from '/home/czp/auto_postgis/data/crossex.csv' DELIMITER '|' csv header;
select count(*) from t1;
\o /home/czp/auto_postgis/result/crosses.out 
select st_crosses(geo1,geo2) from t1;
\o

-- st_distance test
drop table if exists t1;
create table t1 (geo1 geometry,geo2 geometry);
copy t1 from '/home/czp/auto_postgis/data/distance.csv' DELIMITER '|' csv header;
select count(*) from t1;
\o /home/czp/auto_postgis/result/distance.out 
select st_distance(geo1,geo2) from t1;
\o

