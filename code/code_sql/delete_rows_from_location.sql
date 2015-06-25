/*delete from  where name in (:V2);*/
/*
psql -U postgres -h localhost -f ~/code/code_sql/delete_rows_from_location.sql zea
*/
delete from nd_geolocation where description in(:V2);


delete from nd_geolocation where description in ('Chiredzi_Zimbabwe',
'Chisumbanje_Zimbabwe',
'Embu_Kenya',
'Isinya_Kenya',
'Kakamega_Kenya',
'Kiboko_Kenya',
'KTI_Kenya',
'Mtwapa_Kenya',
'Nanga_Zambia');
