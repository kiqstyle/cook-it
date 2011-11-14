/*==============================================================*/
/* DBMS name:      MySQL 5.0                                    */
/* Created on:     2011-10-20 20:55:24                          */
/*==============================================================*/


drop table if exists Fridge_Content;

drop table if exists Ingredients;

drop table if exists Kind;

drop table if exists Quantity;

drop table if exists Recipe_Type;

drop table if exists Recipes;

drop table if exists Units;

/*==============================================================*/
/* Table: Fridge_Content                                        */
/*==============================================================*/
create table Fridge_Content
(
   pos_id               int not null,
   primary key (pos_id)
);

/*==============================================================*/
/* Table: Ingredients                                           */
/*==============================================================*/
create table Ingredients
(
   id                   int not null,
   Kin_id               int not null,
   name                 varchar(80) not null,
   abbreviation         varchar(10),
   "desc"               varchar(255),
   primary key (id)
);

/*==============================================================*/
/* Table: Kind                                                  */
/*==============================================================*/
create table Kind
(
   id                   int not null,
   Kin_id               int,
   kind                 varchar(50) not null,
   "desc"               varchar(255),
   primary key (id)
);

alter table Kind comment 'Describes what kind of is it. Could be "leg of chicken", but';

/*==============================================================*/
/* Table: Quantity                                              */
/*==============================================================*/
create table Quantity
(
   Uni_id               int not null,
   id                   int not null,
   Rec_id               int not null,
   pos_id               int not null,
   quantity             varchar(10),
   primary key (Uni_id, id, Rec_id, pos_id)
);

/*==============================================================*/
/* Table: Recipe_Type                                           */
/*==============================================================*/
create table Recipe_Type
(
   id                   int not null,
   name                 varchar(20) not null,
   "desc"               varchar(255),
   primary key (id)
);

alter table Recipe_Type comment 'Is it soup or main dish';

/*==============================================================*/
/* Table: Recipes                                               */
/*==============================================================*/
create table Recipes
(
   id                   int not null,
   Rec_id               int not null,
   title                varchar(50) not null,
   text                 varchar(5000),
   created              varchar(10),
   primary key (id)
);

/*==============================================================*/
/* Table: Units                                                 */
/*==============================================================*/
create table Units
(
   id                   int not null,
   name                 varchar(40) not null,
   "desc"               varchar(255),
   primary key (id)
);

alter table Ingredients add constraint FK_Ingredient_Is_Of_Kind foreign key (Kin_id)
      references Kind (id) on delete restrict on update restrict;

alter table Kind add constraint FK_Kind_Is_Of_Kind foreign key (Kin_id)
      references Kind (id) on delete restrict on update restrict;

alter table Quantity add constraint FK_Quantity foreign key (pos_id)
      references Fridge_Content (pos_id) on delete restrict on update restrict;

alter table Quantity add constraint FK_Quantity foreign key (id)
      references Ingredients (id) on delete restrict on update restrict;

alter table Quantity add constraint FK_Quantity foreign key (Rec_id)
      references Recipes (id) on delete restrict on update restrict;

alter table Quantity add constraint FK_Quantity foreign key (Uni_id)
      references Units (id) on delete restrict on update restrict;

alter table Recipes add constraint FK_Recipe_Type foreign key (Rec_id)
      references Recipe_Type (id) on delete restrict on update restrict;

