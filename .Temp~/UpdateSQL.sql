-- Device [Device]
create table `device` (
   `oid`  integer  not null,
   `device_id`  varchar(255),
   `notification_device_id`  varchar(255),
   `model`  varchar(255),
   `platform`  varchar(255),
   `platform_version`  varchar(255),
   `browser`  varchar(255),
  primary key (`oid`)
) ENGINE=InnoDB;


-- Role [Role]
create table `role` (
   `oid`  integer  not null,
   `rolename`  varchar(255),
  primary key (`oid`)
) ENGINE=InnoDB;


-- User [User]
create table `user` (
   `oid`  integer  not null,
   `username`  varchar(255),
   `password`  varchar(255),
   `email`  varchar(255),
   `token`  varchar(255),
   `token_expiration_date`  datetime,
   `secretkey`  varchar(255),
  primary key (`oid`)
) ENGINE=InnoDB;


-- User_Device [User2Device_Device2User]
alter table `device`  add column  `user_oid`  integer;
alter table `device`   add index fk_device_user (`user_oid`), add constraint fk_device_user foreign key (`user_oid`) references `user` (`oid`);


-- User_Role [User2Role_Role2User]
create table `user_role` (
   `user_oid`  integer not null,
   `role_oid`  integer not null,
  primary key (`user_oid`, `role_oid`)
) ENGINE=InnoDB;
alter table `user_role`   add index fk_user_role_user (`user_oid`), add constraint fk_user_role_user foreign key (`user_oid`) references `user` (`oid`);
alter table `user_role`   add index fk_user_role_role (`role_oid`), add constraint fk_user_role_role foreign key (`role_oid`) references `role` (`oid`);


