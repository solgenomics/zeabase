use DBI;
use strict;

my $driver   = "Pg"; 
my $database = "zea";
my $dsn = "DBI:$driver:dbname=$database;host=127.0.0.1;port=5432";
my $userid = "postgres";
my $password = "zeabase207";
my $dbh = DBI->connect($dsn, $userid, $password, { RaiseError => 1 }) 
                      or die $DBI::errstr;

print "Opened database successfully\n";

#my $stmt = qq(INSERT INTO stock (stock_id,dbxref_id,organism_id,name,uniquename,type_id,is_obsolete)
#      VALUES (34,35,1,'WEMA6x1016','WEMA6x1016',435,'f'));

#my $rv = $dbh->do($stmt) or die $DBI::errstr;

my $stmt = qq(INSERT INTO stock (stock_id,dbxref_id,organism_id,name,uniquename,type_id,is_obsolete) VALUES (?,?,1,'WEMA6x1017','WEMA6x1017',435,'f'));

my $rv = $dbh->do($stmt) or die $DBI::errstr;








#stock_id    | integer                | not null default nextval('stock_stock_id_seq'::regclass) | plain    | 
#dbxref_id   | integer                |                                                          | plain    | The dbxref_id is an optional primary stable identifier for this stock. Secondary indentifiers an#d external dbxrefs go in table: stock_dbxref.
# organism_id | integer                |                                                          | plain    | The organism_id is the organism to which the stock belongs. This column should only be left bla#nk if the organism cannot be determined.
# name        | character varying(255) |                                                          | extended | The name is a human-readable local name for a stock.
# uniquename  | text                   | not null                                                 | extended | 

# description | text                   |                                                          | extended | The description is the genetic description provided in the stock list.

# type_id     | integer                | not null                                                 | plain    | The type_id foreign key links to a controlled vocabulary of stock types. The would include livi
#ng stock, genomic DNA, preserved specimen. Secondary cvterms for stocks would go in stock_cvterm.
# is_obsolete | boolean                | not null default false        



#$stmt = qq(INSERT INTO COMPANY (ID,NAME,AGE,ADDRESS,SALARY)
#      VALUES (2, 'Allen', 25, 'Texas', 15000.00 ));
#$rv = $dbh->do($stmt) or die $DBI::errstr;

#$stmt = qq(INSERT INTO COMPANY (ID,NAME,AGE,ADDRESS,SALARY)
#      VALUES (3, 'Teddy', 23, 'Norway', 20000.00 ));
#$rv = $dbh->do($stmt) or die $DBI::errstr;

#$stmt = qq(INSERT INTO COMPANY (ID,NAME,AGE,ADDRESS,SALARY)
#      VALUES (4, 'Mark', 25, 'Rich-Mond ', 65000.00 ););
#$rv = $dbh->do($stmt) or die $DBI::errstr;

print "Records created successfully\n";
