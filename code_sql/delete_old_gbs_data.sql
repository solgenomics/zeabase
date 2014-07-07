/*
psql -U postgres -h localhost -f ~/code/code_sql/delete_old_gbs_data.sql zea
*/

select * from stock_relationship where subject_id in (select stock_id from stock where name in(:V2)) AND type_id in (457);

delete from stock_relationship where subject_id in (select stock_id from stock where name in(:V2)) AND type_id in (457);