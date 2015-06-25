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

zea=# select stock_id from stock join nd_experiment_stock using (stock_id) join nd_experiment_genotype using (nd_experiment_id) join genotypeprop using(genotype_id);
zea=# select stock_id from stock join nd_experiment_stock using (stock_id) join nd_experiment_genotype using (nd_experiment_id) join genotypeprop using(genotype_id);
zea=# select stock_id from stock join nd_experiment_stock using (stock_id) join nd_experiment_genotype using (nd_experiment_id) join genotypeprop using(genotype_id) where stock_id=275526;
 stock_id 
----------
   275526
(1 row)

zea=# select * from stock join nd_experiment_stock using (stock_id) join nd_experiment_genotype using (nd_experiment_id) join genotypeprop using(genotype_id) where stock_id=275526;
zea=# select genotypeprop_id from genotypeprop left join genotype using(genotype_id) where genotype_id is Null;

 genotypeprop_id 
-----------------
(0 rows)

zea=# \d genotype
                                        Table "public.genotype"
   Column    |          Type          |                           Modifiers                            
-------------+------------------------+----------------------------------------------------------------
 genotype_id | integer                | not null default nextval('genotype_genotype_id_seq'::regclass)
 name        | text                   | 
 uniquename  | text                   | not null
 description | character varying(255) | 
 type_id     | integer                | not null
Indexes:
    "genotype_pkey" PRIMARY KEY, btree (genotype_id)
    "genotype_c1" UNIQUE CONSTRAINT, btree (uniquename)
    "genotype_idx1" btree (uniquename)
    "genotype_idx2" btree (name)
Foreign-key constraints:
    "genotype_type_id_fkey" FOREIGN KEY (type_id) REFERENCES cvterm(cvterm_id) ON DELETE CASCADE
Referenced by:
    TABLE "feature_genotype" CONSTRAINT "feature_genotype_genotype_id_fkey" FOREIGN KEY (genotype_id) REFERENCES genotype(genotype_id) ON DELETE CASCADE
    TABLE "genotypeprop" CONSTRAINT "genotypeprop_genotype_id_fkey" FOREIGN KEY (genotype_id) REFERENCES genotype(genotype_id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED
    TABLE "sgn.genotypeprop" CONSTRAINT "genotypeprop_genotype_id_fkey" FOREIGN KEY (genotype_id) REFERENCES genotype(genotype_id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED
    TABLE "nd_experiment_genotype" CONSTRAINT "nd_experiment_genotype_genotype_id_fkey" FOREIGN KEY (genotype_id) REFERENCES genotype(genotype_id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED
    TABLE "phendesc" CONSTRAINT "phendesc_genotype_id_fkey" FOREIGN KEY (genotype_id) REFERENCES genotype(genotype_id) ON DELETE CASCADE
    TABLE "phenotype_comparison" CONSTRAINT "phenotype_comparison_genotype1_id_fkey" FOREIGN KEY (genotype1_id) REFERENCES genotype(genotype_id) ON DELETE CASCADE
    TABLE "phenotype_comparison" CONSTRAINT "phenotype_comparison_genotype2_id_fkey" FOREIGN KEY (genotype2_id) REFERENCES genotype(genotype_id) ON DELETE CASCADE
    TABLE "phenstatement" CONSTRAINT "phenstatement_genotype_id_fkey" FOREIGN KEY (genotype_id) REFERENCES genotype(genotype_id) ON DELETE CASCADE
    TABLE "stock_genotype" CONSTRAINT "stock_genotype_genotype_id_fkey" FOREIGN KEY (genotype_id) REFERENCES genotype(genotype_id) ON DELETE CASCADE

zea=# select genotypeprop_id from genotypeprop left join genotype using(genotype_id) where uniquename is null;
 genotypeprop_id 
-----------------
(0 rows)

zea=# \d genotypeprop
                                    Table "public.genotypeprop"
     Column      |  Type   |                               Modifiers                                
-----------------+---------+------------------------------------------------------------------------
 genotypeprop_id | integer | not null default nextval('genotypeprop_genotypeprop_id_seq'::regclass)
 genotype_id     | integer | not null
 type_id         | integer | not null
 value           | text    | 
 rank            | integer | not null default 0
Indexes:
    "genotypeprop_pkey" PRIMARY KEY, btree (genotypeprop_id)
    "genotypeprop_c1" UNIQUE CONSTRAINT, btree (genotype_id, type_id, rank)
    "genotypeprop_idx1" btree (genotype_id)
    "genotypeprop_idx2" btree (type_id)
Foreign-key constraints:
    "genotypeprop_genotype_id_fkey" FOREIGN KEY (genotype_id) REFERENCES genotype(genotype_id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED
    "genotypeprop_type_id_fkey" FOREIGN KEY (type_id) REFERENCES cvterm(cvterm_id) ON DELETE CASCADE DEFERRABLE INITIALLY DEFERRED

zea=# select * from cvterm where name ilike '%population%';
 cvterm_id | cv_id |        name         | definition | dbxref_id | is_obsolete | is_relationshiptype 
-----------+-------+---------------------+------------+-----------+-------------+---------------------
       454 |     7 | training population |            |       608 |           0 |                   0
(1 row)

zea=# select distinct(type_id), count(*) from stock join cvterm on (stock.type_id=cvterm.cvterm_id) group by type_id;
 type_id | count 
---------+-------
     435 | 20322
     436 | 95604
     454 |     1
(3 rows)

zea=# select distinct(type_id), cvterm.name count(*) from stock join cvterm on (stock.type_id=cvterm.cvterm_id) group by type_id;
ERROR:  syntax error at or near "("
LINE 1: select distinct(type_id), cvterm.name count(*) from stock jo...
                                                   ^
zea=# select distinct(type_id), cvterm.name, count(*) from stock join cvterm on (stock.type_id=cvterm.cvterm_id) group by type_id;
ERROR:  column "cvterm.name" must appear in the GROUP BY clause or be used in an aggregate function
LINE 1: select distinct(type_id), cvterm.name, count(*) from stock j...
                                  ^
zea=# select distinct(type_id), cvterm.name, count(*) from stock join cvterm on (stock.type_id=cvterm.cvterm_id) group by type_id, cvterm.name;
 type_id |        name         | count 
---------+---------------------+-------
     435 | accession           | 20322
     454 | training population |     1
     436 | plot                | 95604
(3 rows)

zea=# select * from stock where type_id=454;
 stock_id | dbxref_id | organism_id |   name    | uniquename | description | type_id | is_obsolete 
----------+-----------+-------------+-----------+------------+-------------+---------+-------------
   384690 |           |           1 | WEMA-1017 | WEMA-1017  |             |     454 | f
(1 row)

zea=# select * from stock where uniquename ilike '%\#\%';
 stock_id | dbxref_id | organism_id | name | uniquename | description | type_id | is_obsolete 
----------+-----------+-------------+------+------------+-------------+---------+-------------
(0 rows)

zea=# select * from stock where uniquename ilike '%\#%';
zea=# select * from stock where uniquename ilike 'rs\#';
 stock_id | dbxref_id | organism_id | name | uniquename | description | type_id | is_obsolete 
----------+-----------+-------------+------+------------+-------------+---------+-------------
   384691 |           |           1 | rs#  | rs#        |             |     435 | f
(1 row)

zea=# select * from stock where uniquename ilike 'rs\#';
 stock_id | dbxref_id | organism_id | name | uniquename | description | type_id | is_obsolete 
----------+-----------+-------------+------+------------+-------------+---------+-------------
   384691 |           |           1 | rs#  | rs#        |             |     435 | f
(1 row)

zea=# delete from stock where uniquename ilike 'rs\#';
DELETE 1
zea=# select * from stock where uniquename ilike 'WEMA_6x1017_MARS-WEMA_270239';
 stock_id | dbxref_id | organism_id |             name             |          uniquename          | description | type_id | is_obsolete 
----------+-----------+-------------+------------------------------+------------------------------+-------------+---------+-------------
   275520 |           |           1 | WEMA_6x1017_MARS-WEMA_270239 | WEMA_6x1017_MARS-WEMA_270239 |             |     435 | f
(1 row)
