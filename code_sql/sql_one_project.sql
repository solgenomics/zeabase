/* 
psql -U postgres -h localhost -f ~/code/code_sql/sql_one_project.sql zea
*/

/*
delete from phenome.stock_owner where stock_id in  (select stock_id from nd_experiment_stock where nd_experiment_id in (select nd_experiment_id from nd_experiment_project where project_id in (select project_id from project where name in(:V2))));

delete from stock where stock_id in  (select stock_id from nd_experiment_stock where nd_experiment_id in (select nd_experiment_id from nd_experiment_project where project_id in (select project_id from project where name in (:V2)))) AND type_id = 435;

delete from stock  where stock_id in  (select stock_id from nd_experiment_stock where nd_experiment_id in (select nd_experiment_id from nd_experiment_project where project_id in (select project_id from project where name in (:V2)))) AND type_id = 436;

delete from project where name in (:V2);
*/

/*
select * from stock where name ~ 'WEMA6x1008';

select * from phenome.stock_owner where stock_id in  (select stock_id from stock where name ~ 'WEMA6x1008');

select count(*) from stock where name ~ 'WEMA6x1008';

select count(*) from phenome.stock_owner where stock_id in  (select stock_id from stock where name ~ 'WEMA6x1008');

delete from stock where name ~ 'WEMA6x1008';

delete from phenome.stock_owner where stock_id in  (select stock_id from stock where name ~ 'WEMA6x1008');



nd_experiment_stock where nd_experiment_id in (select nd_experiment_id from nd_experiment_project where project_id in (select project_id from project where name in(:V2))));*/
/*
select name from project where project_id in(
select project_id from nd_experiment_project where nd_experiment_id in (
select nd_experiment_id from nd_experiment where nd_geolocation_id in (select nd_geolocation_id from nd_geolocation where description ~ 'imbabwe')));


select * from stock where stock_id in (select stock_id from nd_experiment_stock where nd_experiment_id in (
select nd_experiment_id from nd_experiment where nd_geolocation_id in (select nd_geolocation_id from nd_geolocation where description ~ 'imbabwe')));



select nd_experiment_id from nd_experiment_project where project_id in (select project_id from project where name in (:V2)))) AND type_id = 435;
*/

/*
select distinct(type_id) from stockprop;
select * from cvterm where cvterm_id=445;
select count(*) from stockprop where type_id=445;
select distinct(type_id) from stockprop;

select * from cvterm where cvterm_id=435;
select distinct(type_id) from stock;
select * from cvterm where cvterm_id=436;

select * from cvterm where cvterm_id=435;
select count(*) from stockprop where type_id=445;
select count(*) from stock join stockprop using(stock_id) where stockprop.type_id=445;

select count(distinct(stock.type_id)) from stock join stockprop using(stock_id) where stockprop.type_id=445;
select distinct(stock.type_id) from stock join stockprop using(stock_id) where stockprop.type_id=445;
select count(*) from stockprop;
select count(*) from stockprop where type_id=445;
delete from stockprop where type_id=445;
*/

select count(*) from phenome.stock_owner where stock_id in  (select stock_id from nd_experiment_stock where nd_experiment_id in (select nd_experiment_id from nd_experiment_project where project_id in (select project_id from project where name in(:V2))));

select count(*) from stock where stock_id in  (select stock_id from nd_experiment_stock where nd_experiment_id in (select nd_experiment_id from nd_experiment_project where project_id in (select project_id from project where name in (:V2)))) AND type_id = 435;

select count(*) from stock  where stock_id in  (select stock_id from nd_experiment_stock where nd_experiment_id in (select nd_experiment_id from nd_experiment_project where project_id in (select project_id from project where name in (:V2)))) AND type_id = 436;

select name from project where project_id in (select project_id from nd_experiment_project where nd_experiment_id in (select nd_experiment_id from nd_experiment_stock where stock_id in (select stock_id from stock where name in ('WEMA_6x1017_MARS-WEMA_270239')))); 

