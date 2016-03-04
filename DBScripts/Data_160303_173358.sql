-- Animal [cls1]
create table "APP"."ANIMAL" (
   "OID"  integer  not null,
   "SEEN"  smallint,
   "SPECIES"  varchar(255),
   "NAME"  varchar(255),
   "CREATEDAT"  timestamp,
   "UPDATEDAT"  timestamp,
  primary key ("OID")
);


