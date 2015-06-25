/*select * from project;*/
/*select distinct(type_id) from stock;*/

delete from phenome.stock_owner where stock_id in  (select stock_id from nd_experiment_stock where nd_experiment_id in (select nd_experiment_id from nd_experiment_project where project_id in (select project_id from project where name in (
'WET10B-EVALTC-08-3',
'WET10B-EVALTC-08-4',
'WET10B-EVALTC-08-5',
'WET10B-EVALTC-08-6',
'WET11A-EVALTC-08-7',
'WET11A-EVALTC-08-8'))));

delete from stock where stock_id in (select stock_id from nd_experiment_stock where nd_experiment_id in (select nd_experiment_id from nd_experiment_project where project_id in (select project_id from project where name in (
'WET10B-EVALTC-08-3',
'WET10B-EVALTC-08-4',
'WET10B-EVALTC-08-5',
'WET10B-EVALTC-08-6',
'WET11A-EVALTC-08-7',
'WET11A-EVALTC-08-8')))) AND type_id = 435;

delete from stock where stock_id in (select stock_id from nd_experiment_stock where nd_experiment_id in (select nd_experiment_id from nd_experiment_project where project_id in (select project_id from project where name in (
'WET10B-EVALTC-08-3',
'WET10B-EVALTC-08-4',
'WET10B-EVALTC-08-5',
'WET10B-EVALTC-08-6',
'WET11A-EVALTC-08-7',
'WET11A-EVALTC-08-8')))) AND type_id = 436;

delete from project where name in (
'WET10B-EVALTC-08-3',
'WET10B-EVALTC-08-4',
'WET10B-EVALTC-08-5',
'WET10B-EVALTC-08-6',
'WET11A-EVALTC-08-7',
'WET11A-EVALTC-08-8')

/*delete from stockprop where type_id=445;*/
