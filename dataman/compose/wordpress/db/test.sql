drop database if exists `cfgcenter`;
create database `cfgcenter`;

use cfgcenter;

drop table if exists `cfgdata`;
create table `cfgdata` (
    `id` int(11) not null auto_increment,
    `env` varchar(255) not null,
    `service` varchar(255) not null,
    `name` varchar(255) not null,
    `data` text,
    `created` datetime,
    `updated` datetime,
    primary key(`id`)
) engine=innodb default charset=utf8;

drop table if exists `cfglist`;
create table `cfglist` (
    `id` int(11) not null auto_increment,
    `env` varchar(255) not null,
    `service` varchar(255) not null,
    `filelist` text,
    `created` datetime,
    `updated` datetime,
    primary key(`id`)
) engine=innodb default charset=utf8;

drop table if exists `cfgtag`;
create table `cfgtag` (
    `id` int(11) not null auto_increment,
    `env` varchar(255) not null,
    `service` varchar(255) not null,
    `tag` varchar(255) not null,
    `created` datetime,
    `updated` datetime,
    primary key(`id`)
) engine=innodb default charset=utf8;

drop table if exists `cfgstate`;
create table `cfgstate` (
    `id` int(11) not null auto_increment,
    `env` varchar(255) not null,
    `service` varchar(255) not null,
    `is_data_update` boolean not null default false,
    `created` datetime,
    `updated` datetime,
    primary key(`id`)
) engine=innodb default charset=utf8;

drop table if exists `version`;
create table `version` (
    `id` int(11) not null auto_increment,
    `env` varchar(255),
    `service` varchar(255),
    `vcode` varchar(255),
    `vconf` varchar(255),
    `created` datetime,
    `updated` datetime,
    primary key(`id`)
) engine=innodb default charset=utf8;

drop table if exists `user`;
create table `user` (
    `id` int(11) not null auto_increment,
    `name` varchar(255) unique not null,
    `email` varchar(255) unique not null,
    `password` varchar(255) not null,
    `admin` boolean not null default false,
    `confirmed` boolean not null default false,
    `confirmed_at` datetime,
    `created` datetime,
    `updated` datetime,
    primary key(`id`)
) engine=innodb default charset=utf8;

drop table if exists `ophistory`;
create table `ophistory` (
    `id` int(11) not null auto_increment,
    `operator` varchar(255) not null,
    `action` varchar(255) not null,
    `table` varchar(255) not null,
    `operated` datetime,
    `created` datetime,
    `updated` datetime,
    primary key(`id`)
) engine=innodb default charset=utf8;

drop table if exists `cfgfile`;
create table `cfgfile` (
    `id` int(11) not null auto_increment,
    `env` varchar(255) not null,
    `app` varchar(255) not null,
    `version` varchar(255) not null,
    `created` datetime,
    `updated` datetime,
    primary key(`id`)
) engine=innodb default charset=utf8;

insert into user (
    name, email, password, admin, confirmed, confirmed_at, created, updated
    )
    values(
    'admin', 'admin@dataman-inc.com', "$2b$12$4O/XEX/fW9GwHulBT.NrSOvAqUJV790gzacOgvw4rDZBxpqKi68UW", 1, 0, NOW(), NOW(), NOW()
    );
