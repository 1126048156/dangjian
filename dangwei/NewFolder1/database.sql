/**
*记录数据库变更的文件
*Author: zkf 
*Date: 2017_3_29
*Desc: 创建org人事表
*/
/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2017/3/29 19:52:20  
 * 下列代码用于生成反向代理
/*==============================================================*/

drop table if exists person_role;

drop table if exists role_privilege;

drop table if exists t_dept;

drop table if exists t_leader;

drop table if exists t_org;

drop table if exists t_person;

drop table if exists t_privilege;

drop table if exists t_role;

/*==============================================================*/
/* Table: person_role                                           */
/*==============================================================*/
create table person_role
(
   person_id            varchar(32) not null,
   role_id              varchar(32) not null,
   state                int,
   primary key (person_id, role_id)
);

/*==============================================================*/
/* Table: role_privilege                                        */
/*==============================================================*/
create table role_privilege
(
   role_id              varchar(32) not null,
   privilege_id         varchar(32) not null,
   primary key (role_id, privilege_id)
);

/*==============================================================*/
/* Table: t_dept                                                */
/*==============================================================*/
create table t_dept
(
   dept_id              varchar(32) not null,
   dept_name            varchar(50) not null,
   primary key (dept_id)
);

/*==============================================================*/
/* Table: t_leader                                              */
/*==============================================================*/
create table t_leader
(
   person_id            varchar(32) not null,
   t_p_person_id        varchar(32),
   org_ID               varchar(32),
   person_name          varchar(50) not null,
   position             varchar(50) not null,
   primary key (person_id)
);

/*==============================================================*/
/* Table: t_org                                                 */
/*==============================================================*/
create table t_org
(
   org_ID               varchar(32) not null,
   dept_id              varchar(32) not null,
   person_name          varchar(50) not null,
   primary key (org_ID)
);

/*==============================================================*/
/* Table: t_person                                              */
/*==============================================================*/
create table t_person
(
   person_id            varchar(32) not null,
   org_ID               varchar(32) not null,
   person_name          varchar(50) not null,
   primary key (person_id)
);

/*==============================================================*/
/* Table: t_privilege                                           */
/*==============================================================*/
create table t_privilege
(
   privilege_id         varchar(32) not null,
   privilege_name       varchar(50) not null,
   primary key (privilege_id)
);

/*==============================================================*/
/* Table: t_role                                                */
/*==============================================================*/
create table t_role
(
   role_id              varchar(32) not null,
   role_name            varchar(50) not null,
   primary key (role_id)
);

alter table person_role add constraint FK_person_role foreign key (person_id)
      references t_person (person_id) on delete restrict on update restrict;

alter table person_role add constraint FK_person_role2 foreign key (role_id)
      references t_role (role_id) on delete restrict on update restrict;

alter table role_privilege add constraint FK_belong foreign key (role_id)
      references t_role (role_id) on delete restrict on update restrict;

alter table role_privilege add constraint FK_own foreign key (privilege_id)
      references t_privilege (privilege_id) on delete restrict on update restrict;

alter table t_leader add constraint FK_Relationship_3 foreign key (t_p_person_id)
      references t_person (person_id) on delete restrict on update restrict;

alter table t_leader add constraint FK_leader foreign key (person_id)
      references t_person (person_id) on delete restrict on update restrict;

alter table t_org add constraint FK_dept_org foreign key (dept_id)
      references t_dept (dept_id) on delete restrict on update restrict;

alter table t_person add constraint FK_org_person foreign key (org_ID)
      references t_org (org_ID) on delete restrict on update restrict;

