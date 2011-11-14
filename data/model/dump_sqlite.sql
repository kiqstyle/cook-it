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
   name_en              varchar(80) not null,
   name_pl              varchar(80) not null,
   desc_en              varchar(255),
   desc_pl              varchar(255),
   primary key (id),
   constraint FK_Ingredient_Is_Of_Kind foreign key (Kin_id) references Kind (id) on delete restrict on update restrict
);

/*==============================================================*/
/* Table: Kind                                                  */
/*==============================================================*/
create table Kind
(
   id                   int not null,
   Kin_id               int,
   kind_en              varchar(50) not null,
   kind_pl              varchar(50) not null,
   desc_en              varchar(255),
   desc_pl              varchar(255),
   primary key (id),
   constraint FK_Kind_Is_Of_Kind foreign key (Kin_id) references Kind (id) on delete restrict on update restrict
);

/*==============================================================*/
/* Table: Quantity                                              */
/*==============================================================*/
create table Quantity
(
   Uni_id               int not null,
   Ing_id               int not null,
   Rec_id               int not null,
   pos_id               int not null,
   quantity             varchar(10),
   primary key (Uni_id, Ing_id, Rec_id, pos_id),
   constraint FK_Quantity foreign key (pos_id) references Fridge_Content (pos_id) on delete restrict on update restrict,
   constraint FK_Quantity foreign key (Ing_id) references Ingredients (id) on delete restrict on update restrict,
   constraint FK_Quantity foreign key (Rec_id) references Recipes (id) on delete restrict on update restrict,
   constraint FK_Quantity foreign key (Uni_id) references Units (id) on delete restrict on update restrict
);

/*==============================================================*/
/* Table: Recipe_Type                                           */
/*==============================================================*/
create table Recipe_Type
(
   id                   int not null,
   name_en              varchar(20) not null,
   name_pl              varchar(20) not null,
   desc_en              varchar(255),
   desc_pl              varchar(255),
   primary key (id)
);

/*==============================================================*/
/* Table: Recipes                                               */
/*==============================================================*/
create table Recipes
(
   id                   int not null,
   Rec_id               int not null,
   title_en             varchar(50) not null,
   title_pl             varchar(50) not null,
   text_en              varchar(5000),
   text_pl              varchar(5000),
   created              varchar(10),
   primary key (id),
   constraint FK_Recipe_Type foreign key (Rec_id) references Recipe_Type (id) on delete restrict on update restrict
);

/*==============================================================*/
/* Table: Units                                                 */
/*==============================================================*/
create table Units
(
   id                   int not null,
   name_en              varchar(40) not null,
   name_pl              varchar(40) not null,
   abbreviation_en      varchar(20) not null,
   abbreviation_pl      varchar(20) not null,
   desc_en              varchar(255),
   desc_pl              varchar(255),
   primary key (id)
);



/*==============================================================*/
/* DATA                                                         */
/*==============================================================*/

/*==============================================================*/
/* Table: Fridge_Content                                        */
/*==============================================================*/

/*==============================================================*/
/* Table: Ingredients                                           */
/*==============================================================*/
INSERT INTO "Ingredients" (id, Kin_id, name_en, name_pl, desc_en, desc_pl) VALUES ("1", "1", "", "Jaja", "", "Jaja");
INSERT INTO "Ingredients" (id, Kin_id, name_en, name_pl, desc_en, desc_pl) VALUES ("2", "1", "", "Mas³o", "", "Mas³o");
INSERT INTO "Ingredients" (id, Kin_id, name_en, name_pl, desc_en, desc_pl) VALUES ("3", "1", "", "Sól", "", "Sól");

/*==============================================================*/
/* Table: Kind                                                  */
/*==============================================================*/
INSERT INTO "Kind" (id, Kin_id, kind_en, kind_pl, desc_en, desc_pl) VALUES ("1", "", "", "Brak rodzaju", "", "Brak rodzaju");

/*==============================================================*/
/* Table: Quantity                                              */
/*==============================================================*/
INSERT INTO "Quantity" (Uni_id, Ing_id, Rec_id, pos_id, quantity) VALUES ("1", "1", "1", "", "3");
INSERT INTO "Quantity" (Uni_id, Ing_id, Rec_id, pos_id, quantity) VALUES ("4", "2", "1", "", "1");

/*==============================================================*/
/* Table: Recipe_Type                                           */
/*==============================================================*/
INSERT INTO "Recipe_Type" (id, name_en, name_pl, desc_en, desc_pl) VALUES ("1", "", "Zupa", "", "Zupa");
INSERT INTO "Recipe_Type" (id, name_en, name_pl, desc_en, desc_pl) VALUES ("2", "", "Danie g³ówne", "", "Danie g³ówne");
INSERT INTO "Recipe_Type" (id, name_en, name_pl, desc_en, desc_pl) VALUES ("3", "", "Surówka", "", "Surówka");
INSERT INTO "Recipe_Type" (id, name_en, name_pl, desc_en, desc_pl) VALUES ("4", "", "Sa³atka", "", "Sa³atka");
INSERT INTO "Recipe_Type" (id, name_en, name_pl, desc_en, desc_pl) VALUES ("5", "", "Przystawka", "", "Przystawka");
INSERT INTO "Recipe_Type" (id, name_en, name_pl, desc_en, desc_pl) VALUES ("6", "", "Przek¹ska", "", "Przek¹ska");

/*==============================================================*/
/* Table: Recipes                                               */
/*==============================================================*/
INSERT INTO "Recipes" (id, Rec_id, title_en, title_pl, text_en, text_pl, created) VALUES ("1", "2", "", "Jajecznica", "", "Jaja wybiæ na talerzu i roztrzepaæ, osoliæ do smaku. Na patelni rozgrzaæ ³y¿kê mas³a. Na rozgrzane mas³o wylaæ jaja i mieszaj¹c energicznie a¿ do uzyskania odpowiedniej konsystencji.", "2011-11-12");

/*==============================================================*/
/* Table: Units                                                 */
/*==============================================================*/
INSERT INTO "Units" (id, name_en, name_pl, abbreviation_en, abbreviation_pl, desc_en, desc_pl) VALUES ("1", "", "sztuka", "", "szt.", "", "");
INSERT INTO "Units" (id, name_en, name_pl, abbreviation_en, abbreviation_pl, desc_en, desc_pl) VALUES ("2", "", "kilogram", "", "kg", "", "");
INSERT INTO "Units" (id, name_en, name_pl, abbreviation_en, abbreviation_pl, desc_en, desc_pl) VALUES ("3", "", "kostka", "", "kostka", "", "");
INSERT INTO "Units" (id, name_en, name_pl, abbreviation_en, abbreviation_pl, desc_en, desc_pl) VALUES ("4", "", "³y¿ka", "", "³y¿.", "", "");