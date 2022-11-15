/*==============================================================*/
/* DBMS name:      PostgreSQL 8                                 */
/* Created on:     14/11/2022 21:16:01                          */
/*==============================================================*/


drop index 10_FK;

drop index ARM_DETAIL_PK;

drop table ARM_DETAIL;

drop index 8_FK;

drop index BATALLON_PK;

drop table BATALLON;

drop index 3_FK;

drop index CASTIGOS_PK;

drop table CASTIGOS;

drop index 7_FK;

drop index ESTADOFISICO_PK;

drop table ESTADOFISICO;

drop index ESTADO_MEN_PK;

drop table ESTADO_MEN;

drop index 9_FK;

drop index INVENTARIO_PK;

drop table INVENTARIO;

drop index RELATIONSHIP_13_FK;

drop index 14_FK;

drop index LISTA_SOL_PK;

drop table LISTA_SOL;

drop index 5_FK;

drop index MISION_PK;

drop table MISION;

drop index 2_FK;

drop index 1_FK;

drop index SOLDADOS_PK;

drop table SOLDADOS;

drop index 4_FK;

drop index SOL_ACARGO_PK;

drop table SOL_ACARGO;

drop index RELATIONSHIP_10_FK;

drop index SOL_ENTRENA_PK;

drop table SOL_ENTRENA;

drop index 11_FK;

drop index SOL_RETIRO_PK;

drop table SOL_RETIRO;

drop index TIPO_SOL_PK;

drop table TIPO_SOL;

/*==============================================================*/
/* Table: ARM_DETAIL                                            */
/*==============================================================*/
create table ARM_DETAIL (
   ARM_DETA             INT4                 not null,
   INV_ID               INT4                 not null,
   ARM_MARCA            TEXT                 null,
   ARM_MUNI             INT4                 null,
   constraint PK_ARM_DETAIL primary key (ARM_DETA)
);

/*==============================================================*/
/* Index: ARM_DETAIL_PK                                         */
/*==============================================================*/
create unique index ARM_DETAIL_PK on ARM_DETAIL (
ARM_DETA
);

/*==============================================================*/
/* Index: 10_FK                                                 */
/*==============================================================*/
create  index 10_FK on ARM_DETAIL (
INV_ID
);

/*==============================================================*/
/* Table: BATALLON                                              */
/*==============================================================*/
create table BATALLON (
   BATA_ID              INT4                 not null,
   SOL_MAX              INT4                 not null,
   BATA_ASIG            INT4                 null,
   BATA_DESCRIPCION     TEXT                 null,
   constraint PK_BATALLON primary key (BATA_ID)
);

/*==============================================================*/
/* Index: BATALLON_PK                                           */
/*==============================================================*/
create unique index BATALLON_PK on BATALLON (
BATA_ID
);

/*==============================================================*/
/* Index: 8_FK                                                  */
/*==============================================================*/
create  index 8_FK on BATALLON (
SOL_MAX
);

/*==============================================================*/
/* Table: CASTIGOS                                              */
/*==============================================================*/
create table CASTIGOS (
   CAS_ID               INT4                 not null,
   SOL_CODE             INT4                 not null,
   CAS_INCIDENT         DATE                 null,
   CAS_INICIO           DATE                 null,
   CAS_FINAL            DATE                 null,
   CAS_MOTIVO           TEXT                 null,
   CAS_COMENTARIOS      TEXT                 null,
   constraint PK_CASTIGOS primary key (CAS_ID)
);

/*==============================================================*/
/* Index: CASTIGOS_PK                                           */
/*==============================================================*/
create unique index CASTIGOS_PK on CASTIGOS (
CAS_ID
);

/*==============================================================*/
/* Index: 3_FK                                                  */
/*==============================================================*/
create  index 3_FK on CASTIGOS (
SOL_CODE
);

/*==============================================================*/
/* Table: ESTADOFISICO                                          */
/*==============================================================*/
create table ESTADOFISICO (
   ID_SOL               INT4                 not null,
   MENTAL_ID            INT4                 not null,
   SOL_PESO             INT4                 null,
   SOL_ESTATURA         INT4                 null,
   SOL_SANGRE           CHAR(4)              null,
   constraint PK_ESTADOFISICO primary key (ID_SOL)
);

/*==============================================================*/
/* Index: ESTADOFISICO_PK                                       */
/*==============================================================*/
create unique index ESTADOFISICO_PK on ESTADOFISICO (
ID_SOL
);

/*==============================================================*/
/* Index: 7_FK                                                  */
/*==============================================================*/
create  index 7_FK on ESTADOFISICO (
MENTAL_ID
);

/*==============================================================*/
/* Table: ESTADO_MEN                                            */
/*==============================================================*/
create table ESTADO_MEN (
   MENTAL_ID            INT4                 not null,
   PRE_ESTADO           TEXT                 null,
   POST_ESTADO          TEXT                 null,
   constraint PK_ESTADO_MEN primary key (MENTAL_ID)
);

/*==============================================================*/
/* Index: ESTADO_MEN_PK                                         */
/*==============================================================*/
create unique index ESTADO_MEN_PK on ESTADO_MEN (
MENTAL_ID
);

/*==============================================================*/
/* Table: INVENTARIO                                            */
/*==============================================================*/
create table INVENTARIO (
   INV_ID               INT4                 not null,
   MISION_ID            INT4                 null,
   INV_ARMAS            INT4                 null,
   INV_RACIONES         INT4                 null,
   INV_DANOS            INT4                 null,
   constraint PK_INVENTARIO primary key (INV_ID)
);

/*==============================================================*/
/* Index: INVENTARIO_PK                                         */
/*==============================================================*/
create unique index INVENTARIO_PK on INVENTARIO (
INV_ID
);

/*==============================================================*/
/* Index: 9_FK                                                  */
/*==============================================================*/
create  index 9_FK on INVENTARIO (
MISION_ID
);

/*==============================================================*/
/* Table: LISTA_SOL                                             */
/*==============================================================*/
create table LISTA_SOL (
   SOL_CODE             INT4                 not null,
   ID_LIST              INT4                 not null,
   BATA_ID              INT4                 not null,
   constraint PK_LISTA_SOL primary key (ID_LIST)
);

/*==============================================================*/
/* Index: LISTA_SOL_PK                                          */
/*==============================================================*/
create unique index LISTA_SOL_PK on LISTA_SOL (
ID_LIST
);

/*==============================================================*/
/* Index: 14_FK                                                 */
/*==============================================================*/
create  index 14_FK on LISTA_SOL (
SOL_CODE
);

/*==============================================================*/
/* Index: RELATIONSHIP_13_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_13_FK on LISTA_SOL (
BATA_ID
);

/*==============================================================*/
/* Table: MISION                                                */
/*==============================================================*/
create table MISION (
   MISION_ID            INT4                 not null,
   BATA_ID              INT4                 not null,
   MIS_INICIO           DATE                 null,
   MIS_FINAL            DATE                 null,
   MIS_DESCRIPCION      TEXT                 null,
   constraint PK_MISION primary key (MISION_ID)
);

/*==============================================================*/
/* Index: MISION_PK                                             */
/*==============================================================*/
create unique index MISION_PK on MISION (
MISION_ID
);

/*==============================================================*/
/* Index: 5_FK                                                  */
/*==============================================================*/
create  index 5_FK on MISION (
BATA_ID
);

/*==============================================================*/
/* Table: SOLDADOS                                              */
/*==============================================================*/
create table SOLDADOS (
   SOL_CODE             INT4                 not null,
   ID_SOL               INT4                 not null,
   TIPO_SOL_ID          INT4                 not null,
   SOL_NAME             CHAR(80)             null,
   SOL_APELLIDO         CHAR(80)             null,
   FECHA_NACIMIENTO     DATE                 null,
   FECHA_ENLISTE        DATE                 null,
   constraint PK_SOLDADOS primary key (SOL_CODE)
);

/*==============================================================*/
/* Index: SOLDADOS_PK                                           */
/*==============================================================*/
create unique index SOLDADOS_PK on SOLDADOS (
SOL_CODE
);

/*==============================================================*/
/* Index: 1_FK                                                  */
/*==============================================================*/
create  index 1_FK on SOLDADOS (
ID_SOL
);

/*==============================================================*/
/* Index: 2_FK                                                  */
/*==============================================================*/
create  index 2_FK on SOLDADOS (
TIPO_SOL_ID
);

/*==============================================================*/
/* Table: SOL_ACARGO                                            */
/*==============================================================*/
create table SOL_ACARGO (
   SOL_MAX              INT4                 not null,
   SOL_CODE             INT4                 not null,
   SOL_DESCRIPCION      TEXT                 null,
   constraint PK_SOL_ACARGO primary key (SOL_MAX)
);

/*==============================================================*/
/* Index: SOL_ACARGO_PK                                         */
/*==============================================================*/
create unique index SOL_ACARGO_PK on SOL_ACARGO (
SOL_MAX
);

/*==============================================================*/
/* Index: 4_FK                                                  */
/*==============================================================*/
create  index 4_FK on SOL_ACARGO (
SOL_CODE
);

/*==============================================================*/
/* Table: SOL_ENTRENA                                           */
/*==============================================================*/
create table SOL_ENTRENA (
   ENTRENO_ID           INT4                 not null,
   SOL_CODE             INT4                 not null,
   FECHA_INICIO         DATE                 null,
   ENTRENO_COMEN        TEXT                 null,
   FECHA_FIN            DATE                 null,
   constraint PK_SOL_ENTRENA primary key (ENTRENO_ID)
);

/*==============================================================*/
/* Index: SOL_ENTRENA_PK                                        */
/*==============================================================*/
create unique index SOL_ENTRENA_PK on SOL_ENTRENA (
ENTRENO_ID
);

/*==============================================================*/
/* Index: RELATIONSHIP_10_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_10_FK on SOL_ENTRENA (
SOL_CODE
);

/*==============================================================*/
/* Table: SOL_RETIRO                                            */
/*==============================================================*/
create table SOL_RETIRO (
   ID_RETIRO            INT4                 not null,
   SOL_CODE             INT4                 not null,
   RETIRO_COMEN         TEXT                 null,
   constraint PK_SOL_RETIRO primary key (ID_RETIRO)
);

/*==============================================================*/
/* Index: SOL_RETIRO_PK                                         */
/*==============================================================*/
create unique index SOL_RETIRO_PK on SOL_RETIRO (
ID_RETIRO
);

/*==============================================================*/
/* Index: 11_FK                                                 */
/*==============================================================*/
create  index 11_FK on SOL_RETIRO (
SOL_CODE
);

/*==============================================================*/
/* Table: TIPO_SOL                                              */
/*==============================================================*/
create table TIPO_SOL (
   TIPO_SOL_ID          INT4                 not null,
   INFO_TIPO            TEXT                 null,
   constraint PK_TIPO_SOL primary key (TIPO_SOL_ID)
);

/*==============================================================*/
/* Index: TIPO_SOL_PK                                           */
/*==============================================================*/
create unique index TIPO_SOL_PK on TIPO_SOL (
TIPO_SOL_ID
);

alter table ARM_DETAIL
   add constraint FK_ARM_DETA_10_INVENTAR foreign key (INV_ID)
      references INVENTARIO (INV_ID)
      on delete restrict on update restrict;

alter table BATALLON
   add constraint FK_BATALLON_8_SOL_ACAR foreign key (SOL_MAX)
      references SOL_ACARGO (SOL_MAX)
      on delete restrict on update restrict;

alter table CASTIGOS
   add constraint FK_CASTIGOS_3_SOLDADOS foreign key (SOL_CODE)
      references SOLDADOS (SOL_CODE)
      on delete restrict on update restrict;

alter table ESTADOFISICO
   add constraint FK_ESTADOFI_7_ESTADO_M foreign key (MENTAL_ID)
      references ESTADO_MEN (MENTAL_ID)
      on delete restrict on update restrict;

alter table INVENTARIO
   add constraint FK_INVENTAR_9_MISION foreign key (MISION_ID)
      references MISION (MISION_ID)
      on delete restrict on update restrict;

alter table LISTA_SOL
   add constraint FK_LISTA_SO_14_SOLDADOS foreign key (SOL_CODE)
      references SOLDADOS (SOL_CODE)
      on delete restrict on update restrict;

alter table LISTA_SOL
   add constraint FK_LISTA_SO_RELATIONS_BATALLON foreign key (BATA_ID)
      references BATALLON (BATA_ID)
      on delete restrict on update restrict;

alter table MISION
   add constraint FK_MISION_5_BATALLON foreign key (BATA_ID)
      references BATALLON (BATA_ID)
      on delete restrict on update restrict;

alter table SOLDADOS
   add constraint FK_SOLDADOS_1_ESTADOFI foreign key (ID_SOL)
      references ESTADOFISICO (ID_SOL)
      on delete restrict on update restrict;

alter table SOLDADOS
   add constraint FK_SOLDADOS_2_TIPO_SOL foreign key (TIPO_SOL_ID)
      references TIPO_SOL (TIPO_SOL_ID)
      on delete restrict on update restrict;

alter table SOL_ACARGO
   add constraint FK_SOL_ACAR_4_SOLDADOS foreign key (SOL_CODE)
      references SOLDADOS (SOL_CODE)
      on delete restrict on update restrict;

alter table SOL_ENTRENA
   add constraint FK_SOL_ENTR_RELATIONS_SOLDADOS foreign key (SOL_CODE)
      references SOLDADOS (SOL_CODE)
      on delete restrict on update restrict;

alter table SOL_RETIRO
   add constraint FK_SOL_RETI_11_SOLDADOS foreign key (SOL_CODE)
      references SOLDADOS (SOL_CODE)
      on delete restrict on update restrict;

