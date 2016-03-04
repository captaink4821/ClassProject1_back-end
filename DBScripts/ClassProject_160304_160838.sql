-- Device [Device]
create table "APP"."DEVICE" (
   "OID"  integer  not null,
   "DEVICE_ID"  varchar(255),
   "NOTIFICATION_DEVICE_ID"  varchar(255),
   "MODEL"  varchar(255),
   "PLATFORM"  varchar(255),
   "PLATFORM_VERSION"  varchar(255),
   "BROWSER"  varchar(255),
   "CREATEDAT"  timestamp,
   "UPDATEDAT"  timestamp,
  primary key ("OID")
);


-- Role [Role]
create table "APP"."ROLE" (
   "OID"  integer  not null,
   "ROLENAME"  varchar(255),
   "CREATEDAT"  timestamp,
   "UPDATEDAT"  timestamp,
  primary key ("OID")
);


-- User [User]
create table "APP"."USER" (
   "OID"  integer  not null,
   "USERNAME"  varchar(255),
   "PASSWORD"  varchar(255),
   "EMAIL"  varchar(255),
   "TOKEN"  varchar(255),
   "TOKEN_EXPIRATION_DATE"  timestamp,
   "SECRETKEY"  varchar(255),
   "CREATEDAT"  timestamp,
   "UPDATEDAT"  timestamp,
  primary key ("OID")
);


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


-- User_Device [User2Device_Device2User]
alter table "APP"."DEVICE"  add column  "USER_OID"  integer;


-- User_Role [User2Role_Role2User]
create table "APP"."USER_ROLE" (
   "USER_OID"  integer not null,
   "ROLE_OID"  integer not null,
  primary key ("USER_OID", "ROLE_OID")
);


-- Data Services Mapping
create table APP.WR_DELETE_HISTORY(
  OID  integer not null,
  OBJECT_ID varchar(200) not null,
  CLASS_ID varchar(32) not null,
  DELETED_AT timestamp not null,
  primary key (OID));


