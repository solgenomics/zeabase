;; This buffer is for notes you don't want to save, and for Lisp evaluation.
;; If you want to create a file, visit that file with C-x C-f,
;; then enter the text in that file's own buffer.

select genotype_id from genotype where genotype_id>=1447 AND genotype_id<=1536;


select stock_id from nd_experiment_stock where nd_experiment_id in (select nd_experiment_id from nd_experiment_genotype where genotype_id in (select genotype_id from genotype where name ilike '%WEMA_6x1008_MARS-WEMA_269939%'));

select * from stock where stock_id in (select stock_id from nd_experiment_stock where nd_experiment_id in (select nd_experiment_id from nd_experiment_genotype where genotype_id in (select genotype_id from genotype where name ilike '%WEMA_6x1008_MARS-WEMA_269939%')));

select type_id from genotype where name ilike '%WEMA_6x1008_MARS-WEMA_269939%';


delete from stock_relationship where subject_id in (select stock_id from stock where name ilike 'WEMA_6x1008_MARS-WEMA_292825') AND type_id in (457);



