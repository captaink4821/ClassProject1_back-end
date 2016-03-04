-- Device [Device]
alter table "APP"."DEVICE"  add column  "CREATEDAT_2"  timestamp;
alter table "APP"."DEVICE"  add column  "UPDATEDAT_2"  timestamp;
alter table "APP"."DEVICE"  add column  "BROWSER_2"  varchar(255);
alter table "APP"."DEVICE"  add column  "DEVICE_ID_2"  varchar(255);
alter table "APP"."DEVICE"  add column  "MODEL_2"  varchar(255);
alter table "APP"."DEVICE"  add column  "PLATFORM_2"  varchar(255);
alter table "APP"."DEVICE"  add column  "PLATFORM_VERSION_2"  varchar(255);
alter table "APP"."DEVICE"  add column  "NOTIFICATION_DEVICE_ID_2"  varchar(255);


-- Role [Role]
alter table "APP"."ROLE"  add column  "OID_2"  integer  not null;
alter table "APP"."ROLE"  add column  "CREATEDAT_2"  timestamp;
alter table "APP"."ROLE"  add column  "UPDATEDAT_2"  timestamp;
alter table "APP"."ROLE"  add column  "ROLENAME_2"  varchar(255);


-- User [User]
alter table "APP"."USER"  add column  "OID_2"  integer  not null;
alter table "APP"."USER"  add column  "EMAIL_2"  varchar(255);
alter table "APP"."USER"  add column  "PASSWORD_2"  varchar(255);
alter table "APP"."USER"  add column  "SECRETKEY_2"  varchar(255);
alter table "APP"."USER"  add column  "TOKEN_2"  varchar(255);
alter table "APP"."USER"  add column  "TOKEN_EXPIRATION_DATE_2"  timestamp;
alter table "APP"."USER"  add column  "UPDATEDAT_2"  timestamp;
alter table "APP"."USER"  add column  "CREATEDAT_2"  timestamp;
alter table "APP"."USER"  add column  "USERNAME_2"  varchar(255);


-- Animal [cls1]
alter table "APP"."ANIMAL"  add column  "OID_2"  integer  not null;
alter table "APP"."ANIMAL"  add column  "NAME_2"  varchar(255);
alter table "APP"."ANIMAL"  add column  "SPECIES_2"  varchar(255);
alter table "APP"."ANIMAL"  add column  "SEEN_2"  smallint;
alter table "APP"."ANIMAL"  add column  "CREATEDAT_2"  timestamp;
alter table "APP"."ANIMAL"  add column  "UPDATEDAT_2"  timestamp;


