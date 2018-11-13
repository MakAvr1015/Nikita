SET SQL DIALECT 3;


/******************************************************************************/
/***                           Stored Procedures                            ***/
/******************************************************************************/

SET AUTODDL on;


SET TERM ^ ; 


create procedure Upd_20110529 as
begin
  if (not exists(select 1 from rdb$relation_fields where rdb$field_name='F_PARTNER_ROZN' )) then
  begin
    execute statement 'ALTER TABLE T_NSI_SKLAD ADD F_PARTNER_ROZN D_INT;';
  end
  if (not exists(select 1 from rdb$relation_constraints where rdb$constraint_name='FK_T_NSI_SKLAD_PARTNER_ROZN' )) then
  begin
    execute statement 'alter table T_NSI_SKLAD add constraint FK_T_NSI_SKLAD_partner_rozn foreign key (F_PARTNER_ROZN) references T_NSI_PARTNER(F_ID);';
  end

  if (not exists(select 1 from rdb$relations where rdb$relation_name='T_NSI_GOODS_MMEDIA')) then
  begin
    execute statement 'CREATE TABLE T_NSI_GOODS_MMEDIA (F_ID D_ID NOT NULL,F_GOOD D_INT,F_NAME  D_STR,F_MEMO BLOB SUB_TYPE 0 SEGMENT SIZE 80);';
    execute statement 'ALTER TABLE T_NSI_GOODS_MMEDIA ADD CONSTRAINT PK_T_NSI_GOODS_MMEDIA PRIMARY KEY (F_ID);';
    execute statement 'ALTER TABLE T_NSI_GOODS_MMEDIA ADD CONSTRAINT FK_T_NSI_GOODS_MMEDIA_1 FOREIGN KEY (F_GOOD) REFERENCES T_NSI_GOODS (F_ID) ON DELETE CASCADE;';
  end
  if (not exists(select 1 from rdb$generators where RDB$GENERATOR_NAME='GEN_T_NSI_GOODS_MMEDIA_ID')) then
    execute statement 'CREATE GENERATOR GEN_T_NSI_GOODS_MMEDIA_ID;';

  if (not exists(select 1 from rdb$relations where rdb$relation_name='T_NSI_DOC_PROPERTY')) then
  begin
    execute statement 'CREATE TABLE T_NSI_DOC_PROPERTY (
      F_ID    D_ID NOT NULL ,
      F_NAME  D_STR255
    );';
    execute statement 'ALTER TABLE T_NSI_DOC_PROPERTY ADD CONSTRAINT PK_T_NSI_DOC_PROPERTY PRIMARY KEY (F_ID);';
    
  end
  if (not exists(select 1 from rdb$generators where RDB$GENERATOR_NAME='GEN_T_NSI_DOC_PROPERTY_ID')) then
    execute statement 'CREATE GENERATOR GEN_T_NSI_DOC_PROPERTY_ID;';

  if (not exists(select 1 from rdb$relations where rdb$relation_name='T_DOC_PROPERTY')) then
  begin
    execute statement 'CREATE TABLE T_DOC_PROPERTY (
    F_ID            D_ID NOT NULL ,
    F_PROPERTY      D_INT ,
    F_VALUE         D_STR255 ,
    F_DOC_MOVETYPE  D_INT ,
    F_DOC           D_INT );';
    execute statement 'ALTER TABLE T_DOC_PROPERTY ADD CONSTRAINT PK_T_DOC_PROPERTY PRIMARY KEY (F_ID);';
    execute statement 'ALTER TABLE T_DOC_PROPERTY ADD CONSTRAINT FK_T_DOC_PROPERTY_NSI FOREIGN KEY (F_PROPERTY) REFERENCES T_NSI_DOC_PROPERTY (F_ID);';
    execute statement 'CREATE INDEX IDX_T_DOC_PROPERTY_DOC ON T_DOC_PROPERTY (F_DOC_MOVETYPE, F_DOC);';
  end
  if (not exists(select 1 from rdb$generators where RDB$GENERATOR_NAME='GEN_T_DOC_PROPERTY_ID')) then
    execute statement 'CREATE GENERATOR GEN_T_DOC_PROPERTY_ID;';

end^


execute procedure Upd_20110529;^


drop procedure Upd_20110529;^

create procedure Upd_20110624 as
begin
  if (not exists(select 1 from rdb$relations where rdb$relation_name='F_MESSAGES')) then
  begin
    execute statement 'CREATE TABLE F_MESSAGES (F_ID   D_ID NOT NULL,F_MSG  D_STR255 );';
  end
  if (not exists(select 1 from rdb$relation_constraints where rdb$constraint_name='PK_F_MESSAGES')) then
  begin
    execute statement 'ALTER TABLE F_MESSAGES ADD CONSTRAINT PK_F_MESSAGES PRIMARY KEY (F_ID);';
  end
end^


execute procedure Upd_20110624;^


drop procedure Upd_20110624;^

create procedure Upd_20110801 as
begin
  if (not exists(select 1 from rdb$relation_fields where rdb$field_name='F_DOP_INFO' and rdb$relation_name='T_DOC_IN')) then
  begin
    execute statement 'ALTER TABLE T_DOC_IN ADD F_DOP_INFO D_STR10000;';
  end
  if (not exists(select 1 from rdb$relation_fields where rdb$field_name='F_DOP_INFO' and rdb$relation_name='T_DOC_OUT')) then
  begin
    execute statement 'ALTER TABLE T_DOC_OUT ADD F_DOP_INFO D_STR10000;';
  end
  if (not exists(select 1 from rdb$relation_fields where rdb$field_name='F_DOP_INFO' and rdb$relation_name='T_DOC_MOVE')) then
  begin
    execute statement 'ALTER TABLE T_DOC_MOVE ADD F_DOP_INFO D_STR10000;';
  end

end^


execute procedure Upd_20110801;^


drop procedure Upd_20110801;^


create procedure Upd_20110808 as
begin
  if (not exists(select 1 from rdb$relation_fields where rdb$field_name='F_EXT_ID' and rdb$relation_name='T_NSI_GOODS_GRP')) then
  begin
    execute statement 'ALTER TABLE T_NSI_GOODS_GRP ADD F_EXT_ID D_STR20;';
    execute statement 'ALTER TABLE T_NSI_GOODS_GRP ADD CONSTRAINT UNQ_T_NSI_GOODS_GRP_E_EXT UNIQUE (F_EXT_ID);';
  end

end^


execute procedure Upd_20110808;^


drop procedure Upd_20110808;^


create procedure Upd_20110811 as
begin
  if (not exists(select 1 from rdb$generators where RDB$GENERATOR_NAME='GEN_T_MONEY_OUT_ID')) then
    execute statement 'CREATE GENERATOR GEN_T_MONEY_OUT_ID;';
  if (not exists(select 1 from rdb$generators where RDB$GENERATOR_NAME='GEN_T_MONEY_OUT_STR_ID')) then
    execute statement 'CREATE GENERATOR GEN_T_MONEY_OUT_STR_ID';

  if (not exists(select  1 from rdb$relations where rdb$relation_name='T_MONEY_OUT')) then
  begin
    execute statement 'CREATE TABLE T_MONEY_OUT (
    F_ID       D_ID NOT NULL,
    F_SKLAD    D_INT,
    F_PARTNER  D_INT,
    F_BANK     D_INT,
    F_NUMBER   D_STR20,
    F_DATE     D_DATE,
    F_STATE    D_INT,
    F_SUMMA    D_FLOAT,
    F_TYPE     D_INT,
    F_DOP_INFO D_STR10000
);';
    execute statement 'ALTER TABLE T_MONEY_OUT ADD CONSTRAINT PK_T_MONEY_OUT PRIMARY KEY (F_ID);';
    execute statement 'ALTER TABLE T_MONEY_OUT ADD CONSTRAINT FK_T_MONEY_OUT_BANK FOREIGN KEY (F_BANK) REFERENCES T_NSI_BANK (F_ID);';
    execute statement 'ALTER TABLE T_MONEY_OUT ADD CONSTRAINT FK_T_MONEY_OUT_PARTNER FOREIGN KEY (F_PARTNER) REFERENCES T_NSI_PARTNER (F_ID);';
    execute statement 'ALTER TABLE T_MONEY_OUT ADD CONSTRAINT FK_T_MONEY_OUT_SKLAD FOREIGN KEY (F_SKLAD) REFERENCES T_NSI_SKLAD (F_ID);';
    execute statement 'ALTER TABLE T_MONEY_OUT ADD CONSTRAINT FK_T_MONEY_OUT_STATE FOREIGN KEY (F_STATE) REFERENCES T_NSI_STATE (F_ID);';
    execute statement 'ALTER TABLE T_MONEY_OUT ADD CONSTRAINT FK_T_MONEY_OUT_TYPES FOREIGN KEY (F_TYPE) REFERENCES T_NSI_MONEY_IN_TYPES (F_ID);';
    execute statement 'CREATE INDEX IDX_T_MONEY_OUT_DATE ON T_MONEY_OUT (F_DATE);';

  end
  if (not exists(select  1 from rdb$relations where rdb$relation_name='T_MONEY_OUT_STR')) then
  begin
    execute statement 'CREATE TABLE T_MONEY_OUT_STR (
    F_ID     D_ID NOT NULL,
    F_DOC    D_INT,
    F_MONEY  D_INT,
    F_SUMMA  D_FLOAT
);';
    execute statement 'ALTER TABLE T_MONEY_OUT_STR ADD CONSTRAINT PK_T_MONEY_OUT_STR PRIMARY KEY (F_ID);';
    execute statement 'ALTER TABLE T_MONEY_OUT_STR ADD CONSTRAINT FK_T_MONEY_OUT_STR_DOC FOREIGN KEY (F_DOC) REFERENCES T_DOC_IN (F_ID);';
    execute statement 'ALTER TABLE T_MONEY_OUT_STR ADD CONSTRAINT FK_T_MONEY_OUT_STR_MONEY FOREIGN KEY (F_MONEY) REFERENCES T_MONEY_OUT (F_ID);';
    execute statement 'CREATE OR ALTER PROCEDURE SP_T_MONEY_OUT_STR_S (F_MONEY_IN BIGINT)
    RETURNS (
    F_ID BIGINT,
    F_DOC BIGINT,
    F_MONEY BIGINT,
    F_SUMMA FLOAT,
    F_DOC_INFO VARCHAR(255))
AS
BEGIN
  SUSPEND;
END';
    execute statement 'alter table t_money_out add F_DOC_SUM  COMPUTED BY ((coalesce((select sum(f_summa) from SP_T_MONEY_out_STR_S(f_id)),0)));';
    execute statement 'alter table t_doc_in add F_PAY_SUM COMPUTED BY (coalesce((select f_summa
from
(select f_doc, sum(d.f_summa) as f_summa from T_MONEY_out_STR d group by f_doc) d
where d.f_doc=f_id),0));';

  end

end^


execute procedure Upd_20110811;^


drop procedure Upd_20110811;^

create procedure Upd_20110901 as
begin
  if (not exists(select 1 from rdb$relation_fields where rdb$field_name='F_DOP_INFO' and rdb$relation_name='T_NSI_GOODS_GRP')) then
  begin
    execute statement 'ALTER TABLE T_NSI_GOODS_GRP ADD F_DOP_INFO D_STR10000;';
  end

end^


execute procedure Upd_20110901;^


drop procedure Upd_20110901;^


create procedure Upd_20111006 as
begin
  if (not exists(select 1 from rdb$relation_fields where rdb$field_name='F_DOC_OUT_STR' and rdb$relation_name='T_DOC_IN_STR')) then
  begin
    execute statement 'ALTER TABLE T_DOC_IN_STR ADD F_DOC_OUT_STR D_INT;';
    execute statement 'ALTER TABLE T_DOC_IN_STR ADD CONSTRAINT FK_T_DOC_IN_STR_4 FOREIGN KEY (F_DOC_OUT_STR) REFERENCES T_DOC_OUT_STR (F_ID);';
  end
  if (not exists(select 1 from rdb$relation_fields where rdb$field_name='F_CH_DATE' and rdb$relation_name='T_NSI_GOODS_MMEDIA')) then
  begin
    execute statement 'ALTER TABLE T_NSI_GOODS_MMEDIA ADD F_CH_DATE D_TIMESTAMP;';
    execute statement 'CREATE INDEX T_NSI_GOODS_MMEDIA_IDX1 ON T_NSI_GOODS_MMEDIA (F_CH_DATE);';
  end

end^


execute procedure Upd_20111006;^


drop procedure Upd_20111006;^

create procedure Upd_20111127 as
begin
  if (not exists(select  1 from rdb$relations where rdb$relation_name='T_NSI_PRICE_STR')) then
  begin
    execute statement 'CREATE TABLE T_NSI_PRICE_STR (
      F_ID          D_ID NOT NULL ,
  F_NSI_PRICE   D_INT ,
      F_START_LINE  D_FLOAT ,
      F_END_LINE    D_FLOAT,
      F_FORMULA     D_FLOAT,
      F_ROUND       D_FLOAT);';
    execute statement 'ALTER TABLE T_NSI_PRICE_STR ADD CONSTRAINT PK_T_NSI_PRICE_STR PRIMARY KEY (F_ID);';
    execute statement 'ALTER TABLE T_NSI_PRICE_STR ADD CONSTRAINT FK_T_NSI_PRICE_STR_T_NSI_PRICE FOREIGN KEY (F_NSI_PRICE) REFERENCES T_NSI_PRICE (F_ID) ON DELETE CASCADE;';
  end
  if (not exists(select 1 from rdb$generators where RDB$GENERATOR_NAME='GEN_T_NSI_PRICE_STR_ID')) then
  begin
    execute statement 'CREATE GENERATOR GEN_T_NSI_PRICE_STR_ID;';
  end
  if (not exists(select 1 from rdb$triggers where rdb$trigger_name='T_NSI_PRICE_STR_BI')) then
  begin
    execute statement 'CREATE OR ALTER TRIGGER T_NSI_PRICE_STR_BI FOR T_NSI_PRICE_STR
  ACTIVE BEFORE INSERT POSITION 0
  as
  begin
    if (new.f_id is null) then
      new.f_id = gen_id(gen_t_nsi_price_str_id,1);
  end';
  end
end^


execute procedure Upd_20111127;^


drop procedure Upd_20111127;^

create procedure Upd_20120104 as
begin
  if (not exists(select  1 from rdb$relations where rdb$relation_name='T_SYS_PRIVS')) then
  begin
    execute statement 'CREATE TABLE T_SYS_PRIVS (
      F_TABLE_NAME  D_STR ,
      F_USR         D_STR ,
      F_PRIV        D_STR20 ,
      F_OWNER       D_STR);';
    execute statement 'CREATE INDEX T_SYS_PRIVS_IDX1 ON T_SYS_PRIVS (F_TABLE_NAME, F_USR);'; 
  end
  if (not exists(select 1 from RDB$INDICES where rdb$index_name='T_DOC_OUT_IDX1')) then
  begin
    execute statement 'CREATE INDEX T_DOC_OUT_IDX1 ON T_DOC_OUT (F_DATE, F_STATE);';
  end
  if (not exists(select 1 from RDB$INDICES where rdb$index_name='T_DOC_MOVE_IDX1')) then
  begin
    execute statement 'CREATE INDEX T_DOC_MOVE_IDX1 ON T_DOC_MOVE (F_DATE, F_STATE);';
  end
  if (not exists(select 1 from RDB$INDICES where rdb$index_name='T_DOC_PRICE_IDX1')) then
  begin
    execute statement 'CREATE INDEX T_DOC_PRICE_IDX1 ON T_DOC_PRICE (F_DATE, F_SATE);';
  end

end^


execute procedure Upd_20120104;^


drop procedure Upd_20120104;^

create procedure Upd_20120109 as
begin
  if (not exists(select 1 from rdb$generators where rdb$generator_name='GEN_DOC_NUM')) then
  begin
    execute statement 'CREATE SEQUENCE GEN_DOC_NUM;';
    execute statement 'ALTER SEQUENCE GEN_DOC_NUM RESTART WITH 0;';
  end
  if (not exists(select 1 from RDB$FIELDS where rdb$field_name ='D_STR2')) then
  begin
    execute statement 'CREATE DOMAIN D_STR2 AS VARCHAR(2) CHARACTER SET WIN1251 COLLATE WIN1251;';
  end
  if (not exists(select 1 from rdb$generators where rdb$generator_name='GEN_T_NSI_STATE_NSI_ID')) then
  begin
    execute statement 'CREATE GENERATOR GEN_T_NSI_STATE_NSI_ID;';
  end
  if (not exists(select  1 from rdb$relations where rdb$relation_name='T_NSI_STATE_NSI')) then
  begin
    execute statement 'CREATE TABLE T_NSI_STATE_NSI (
    F_ID    D_ID NOT NULL,
    F_NAME  D_STR);';
    execute statement 'ALTER TABLE T_NSI_STATE_NSI ADD CONSTRAINT PK_T_NSI_STATE_NSI PRIMARY KEY (F_ID);';
  end
  if (not exists(select 1 from rdb$triggers where rdb$trigger_name='T_NSI_STATE_NSI_BI')) then
  begin
    execute statement 'CREATE OR ALTER TRIGGER T_NSI_STATE_NSI_BI FOR T_NSI_STATE_NSI
      ACTIVE BEFORE INSERT POSITION 0
      as
      begin
        if (new.f_id is null) then
        new.f_id = gen_id(gen_t_nsi_state_nsi_id,1);
      end';
  end
  if (not exists(select 1 from rdb$relation_fields where rdb$field_name='F_PREFIX' and rdb$relation_name='T_NSI_SKLAD')) then
  begin
    execute statement 'ALTER TABLE T_NSI_SKLAD ADD F_PREFIX D_STR2;';
  end
  if (not exists(select 1 from rdb$relation_fields where rdb$field_name='F_STATE' and rdb$relation_name='T_NSI_BANK')) then
  begin
    execute statement 'ALTER TABLE T_NSI_BANK ADD F_STATE D_INT;';
    execute statement 'ALTER TABLE T_NSI_BANK ADD CONSTRAINT T_NSI_BANK_STATE FOREIGN KEY (F_STATE) REFERENCES T_NSI_STATE_NSI (F_ID);';
  end
  if (not exists(select 1 from rdb$relation_fields where rdb$field_name='F_STATE' and rdb$relation_name='T_NSI_PARTNER')) then
  begin
    execute statement 'ALTER TABLE T_NSI_PARTNER ADD F_STATE D_INT;';
    execute statement 'ALTER TABLE T_NSI_PARTNER ADD CONSTRAINT T_NSI_PARTNER_STATE FOREIGN KEY (F_STATE) REFERENCES T_NSI_STATE_NSI (F_ID);';
  end
  if (not exists(select 1 from rdb$relation_fields where rdb$field_name='F_STATE' and rdb$relation_name='T_NSI_GOODS')) then
  begin
    execute statement 'ALTER TABLE T_NSI_GOODS ADD F_STATE D_INT;';
    execute statement 'ALTER TABLE T_NSI_GOODS ADD CONSTRAINT T_NSI_GOODS_STATE FOREIGN KEY (F_STATE) REFERENCES T_NSI_STATE_NSI (F_ID);';
  end
  if (not exists(select 1 from rdb$relation_fields where rdb$field_name='F_STATE' and rdb$relation_name='T_NSI_PRICE')) then
  begin
    execute statement 'ALTER TABLE T_NSI_PRICE ADD F_STATE D_INT;';
    execute statement 'ALTER TABLE T_NSI_PRICE ADD CONSTRAINT T_NSI_PRICE_STATE FOREIGN KEY (F_STATE) REFERENCES T_NSI_STATE_NSI (F_ID);';
  end
  if (not exists(select 1 from rdb$relation_fields where rdb$field_name='F_STATE' and rdb$relation_name='T_NSI_SKLAD')) then
  begin
    execute statement 'ALTER TABLE T_NSI_SKLAD ADD F_STATE D_INT;';
    execute statement 'ALTER TABLE T_NSI_SKLAD ADD CONSTRAINT T_NSI_SKLAD_STATE FOREIGN KEY (F_STATE) REFERENCES T_NSI_STATE_NSI (F_ID);';
  end
  if (not exists(select 1 from rdb$relation_fields where rdb$field_name='F_STATE' and rdb$relation_name='T_NSI_GOODS_GRP')) then
  begin
    execute statement 'ALTER TABLE T_NSI_GOODS_GRP ADD F_STATE D_INT;';
    execute statement 'ALTER TABLE T_NSI_GOODS_GRP ADD CONSTRAINT T_NSI_GOODS_GRP_STATE FOREIGN KEY (F_STATE) REFERENCES T_NSI_STATE_NSI (F_ID);';
  end

end^

execute procedure Upd_20120109;^


drop procedure Upd_20120109;^


create procedure Upd_20120130 as
begin

  if (not exists(select 1 from rdb$relation_fields where rdb$field_name='F_MONEY_TYPE' and rdb$relation_name='T_DOC_OUT')) then
  begin
    execute statement 'ALTER TABLE T_DOC_OUT ADD F_MONEY_TYPE COMPUTED BY ((select first 1 (select f_type from SP_T_MONEY_IN_GET(f_money,null)) as f_money_type
      from SP_T_MONEY_IN_STR_S_DOC(f_id)));';
  end
end^

execute procedure Upd_20120130;^


drop procedure Upd_20120130;^


create procedure Upd_20120213 as
begin

  if (not exists(select 1 from rdb$relations where rdb$relation_name='T_REG_PARTNER')) then
  begin
    execute statement 'CREATE TABLE T_REG_PARTNER (
    F_ID             D_ID NOT NULL ,
    F_DATE           D_DATE ,
    F_PARTNER        D_INT ,
    F_STR_OST        D_MONEY ,
    F_DOC_OUT_SUM    D_MONEY ,
    F_DOC_IN_SUM     D_MONEY ,
    F_MONEY_IN_SUM   D_MONEY ,
    F_MONEY_OUT_SUM  D_MONEY ,
    F_END_OST        COMPUTED BY (coalesce(F_STR_OST,0)-coalesce(F_DOC_OUT_SUM,0)+coalesce(F_DOC_IN_SUM,0)-coalesce(F_MONEY_OUT_SUM,0)+coalesce(F_MONEY_IN_SUM,0))
    );';
    execute statement 'ALTER TABLE T_REG_PARTNER ADD CONSTRAINT PK_T_REG_PARTNER PRIMARY KEY (F_ID);';
    execute statement 'ALTER TABLE T_REG_PARTNER ADD CONSTRAINT FK_T_REG_PARTNER_1 FOREIGN KEY (F_PARTNER) REFERENCES T_NSI_PARTNER (F_ID);';
    execute statement 'CREATE INDEX T_REG_PARTNER_IDX1 ON T_REG_PARTNER (F_DATE, F_PARTNER);';

  end
  if (not exists(select 1 from rdb$generators where RDB$GENERATOR_NAME='GEN_T_REG_PARTNER_ID')) then
  begin
    execute statement 'CREATE GENERATOR GEN_T_REG_PARTNER_ID;';
  end

end^

execute procedure Upd_20120213;^


drop procedure Upd_20120213;^



create procedure Upd_20120313 as
begin

  if (not exists(select 1 from RDB$FIELDS where rdb$field_name ='D_USER')) then
  begin
    execute statement 'CREATE DOMAIN D_USER VARCHAR(60) CHARACTER SET WIN1251 DEFAULT CURRENT_USER COLLATE WIN1251;';
  end
  if (not exists(select 1 from rdb$generators where RDB$GENERATOR_NAME='GEN_T_DOC_TEMPLATE_ID')) then
    execute statement 'CREATE GENERATOR GEN_T_DOC_TEMPLATE_ID;';

  if (not exists(select 1 from rdb$relations where rdb$relation_name='T_DOC_TEMPLATE')) then
  begin
    execute statement 'CREATE TABLE T_DOC_TEMPLATE (F_ID D_ID NOT NULL,F_NUMBER  D_STR,F_DATE    D_DATE,F_AUTHOR  D_USER,F_STATE   D_INT);';
  end
  if (not exists(select 1 from rdb$relation_constraints where rdb$constraint_name='PK_T_DOC_TEMPLATE')) then
  begin
    execute statement 'ALTER TABLE T_DOC_TEMPLATE ADD CONSTRAINT PK_T_DOC_TEMPLATE PRIMARY KEY (F_ID)';
  end
  if (not exists(select 1 from rdb$relation_constraints where rdb$constraint_name='FK_T_DOC_TEMPLATE_STATE' )) then
  begin
    execute statement 'ALTER TABLE T_DOC_TEMPLATE ADD CONSTRAINT FK_T_DOC_TEMPLATE_STATE FOREIGN KEY (F_STATE) REFERENCES T_NSI_STATE (F_ID);';
  end


end^

execute procedure Upd_20120313;^


drop procedure Upd_20120313;^


create procedure Upd_20120316 as
begin
  if (not exists(select 1 from rdb$relations where rdb$relation_name='T_DOC_TEMPLATE_STR')) then
  begin
    execute statement 'CREATE TABLE T_DOC_TEMPLATE_STR (
    F_ID             D_ID NOT NULL ,
    F_DOC_TEMPLATE   D_INT ,
    F_GOOD           D_INT ,
    F_CNT            D_MONEY ,
    F_PRICE_VAL      D_MONEY ,
    F_SUM            COMPUTED BY ((f_price_val*f_cnt)),
    F_PRICE_VAL_NSI  D_MONEY );';
  end
  if (not exists(select 1 from rdb$relation_constraints where rdb$constraint_name='PK_T_DOC_TEMPLATE')) then
  begin
    execute statement 'ALTER TABLE T_DOC_TEMPLATE_STR ADD CONSTRAINT PK_T_DOC_TEMPLATE_STR PRIMARY KEY (F_ID)';
  end
  if (not exists(select 1 from rdb$generators where RDB$GENERATOR_NAME='GEN_T_DOC_TEMPLATE_STR_ID')) then
    execute statement 'CREATE GENERATOR GEN_T_DOC_TEMPLATE_STR_ID;';
  if (not exists(select 1 from rdb$relation_constraints where rdb$constraint_name='FK_T_DOC_TEMPLATE_STR_DOC' )) then
  begin
    execute statement 'ALTER TABLE T_DOC_TEMPLATE_STR ADD CONSTRAINT FK_T_DOC_TEMPLATE_STR_DOC FOREIGN KEY (F_DOC_TEMPLATE) REFERENCES T_DOC_TEMPLATE (F_ID) ON DELETE CASCADE;';
  end
  if (not exists(select 1 from rdb$relation_constraints where rdb$constraint_name='FK_T_DOC_TEMPLATE_STR_GOOD' )) then
  begin
    execute statement 'ALTER TABLE T_DOC_TEMPLATE_STR ADD CONSTRAINT FK_T_DOC_TEMPLATE_STR_GOOD FOREIGN KEY (F_GOOD) REFERENCES T_NSI_GOODS (F_ID);';
  end
  if (not exists(select 1 from rdb$relation_fields where rdb$field_name='F_PRICE' and rdb$relation_name='T_DOC_TEMPLATE')) then
  begin
    execute statement 'ALTER TABLE T_DOC_TEMPLATE ADD F_PRICE D_INT;';
    execute statement 'ALTER TABLE T_DOC_TEMPLATE ADD CONSTRAINT FK_T_DOC_TEMPLATE_PRICE FOREIGN KEY (F_PRICE) REFERENCES T_NSI_PRICE (F_ID);';
  end

end^

execute procedure Upd_20120316;^


drop procedure Upd_20120316;^

create procedure Upd_20120325 as
begin
  if (not exists(select 1 from rdb$relation_fields where rdb$field_name='F_DISCOUNT_CARD' and rdb$relation_name='T_DOC_OUT')) then
  begin
    execute statement 'ALTER TABLE T_DOC_OUT ADD F_DISCOUNT_CARD D_STR;';
    execute statement 'CREATE INDEX IDX_T_DOC_DISCOUNT_CARD ON T_DOC_OUT (F_DISCOUNT_CARD);';
  end
  if (not exists(select 1 from rdb$generators where RDB$GENERATOR_NAME='GEN_T_NSI_DISCOUNT_CARD_ID')) then
    execute statement 'CREATE GENERATOR GEN_T_NSI_DISCOUNT_CARD_ID;';
  if (not exists(select 1 from rdb$relations where rdb$relation_name='T_NSI_DISCOUNT_CARD')) then
  begin
    execute statement '
      CREATE TABLE T_NSI_DISCOUNT_CARD (
      F_ID        D_INT NOT NULL,
      F_NUMBER    D_STR,
      F_SALE_SUM  D_MONEY,
      F_DISCOUNT  D_MONEY);';
  end
  if (not exists(select 1 from rdb$relation_constraints where rdb$constraint_type='PRIMARY KEY' and rdb$relation_name='T_NSI_DISCOUNT_CARD')) then
  begin
    execute statement 'ALTER TABLE T_NSI_DISCOUNT_CARD ADD CONSTRAINT PK_T_NSI_DISCOUNT PRIMARY KEY (F_ID)';
  end
  if (not exists(select 1 from RDB$INDICES where rdb$index_name='IDX_T_NSI_DISCOUNT_NUM')) then
  begin
    execute statement 'CREATE UNIQUE INDEX IDX_T_NSI_DISCOUNT_NUM ON T_NSI_DISCOUNT_CARD (F_NUMBER);';
  end
  if (not exists(select 1 from rdb$relation_fields where rdb$field_name='F_PARTNER' and rdb$relation_name='T_DOC_TEMPLATE')) then
  begin
    execute statement 'ALTER TABLE T_DOC_TEMPLATE ADD F_PARTNER D_INT;';
    execute statement 'ALTER TABLE T_DOC_TEMPLATE ADD CONSTRAINT FK_T_DOC_TEMPLATE_PARTNER FOREIGN KEY (F_PARTNER) REFERENCES T_NSI_PARTNER(F_ID);';
  end
  if (not exists(select 1 from rdb$relation_fields where rdb$field_name='F_SKLAD' and rdb$relation_name='T_DOC_TEMPLATE')) then
  begin
    execute statement 'ALTER TABLE T_DOC_TEMPLATE ADD F_SKLAD D_INT;';
    execute statement 'ALTER TABLE T_DOC_TEMPLATE ADD CONSTRAINT FK_T_DOC_TEMPLATE_SKLAD FOREIGN KEY (F_SKLAD) REFERENCES T_NSI_SKLAD(F_ID);';
  end

end^

execute procedure Upd_20120325;^


drop procedure Upd_20120325;^

create procedure Upd_20120401 as
begin
  if (not exists(select 1 from rdb$generators where RDB$GENERATOR_NAME='GEN_T_DOC_OUT_STR_PARTY_ID')) then
    execute statement 'CREATE GENERATOR GEN_T_DOC_OUT_STR_PARTY_ID;';
  if (not exists(select 1 from rdb$generators where RDB$GENERATOR_NAME='GEN_T_NSI_GOOD_PARTY_ID')) then
    execute statement 'CREATE GENERATOR GEN_T_NSI_GOOD_PARTY_ID;';

  if (not exists(select 1 from rdb$relations where rdb$relation_name='T_NSI_GOOD_PARTY')) then
  begin
    execute statement '
      CREATE TABLE T_NSI_GOOD_PARTY(F_ID D_ID NOT NULL,
        F_GOOD D_INT,
  F_DATE D_DATE,
  F_CNT D_MONEY,
  F_PRICE D_MONEY);';
  end
  if (not exists(select 1 from rdb$relations where rdb$relation_name='T_DOC_OUT_STR_PARTY')) then
  begin
    execute statement '
      CREATE TABLE T_DOC_OUT_STR_PARTY(F_ID D_ID NOT NULL,
  F_DOC_OUT_STR D_INT,
  F_PARTY D_INT,
  F_CNT D_MONEY);';
  end
  if (not exists(select 1 from rdb$relation_constraints where rdb$constraint_name='PK_T_NSI_GOOD_PARTY')) then
  begin
    execute statement 'ALTER TABLE T_NSI_GOOD_PARTY ADD CONSTRAINT PK_T_NSI_GOOD_PARTY PRIMARY KEY (F_ID)';
  end
  if (not exists(select 1 from rdb$relation_constraints where rdb$constraint_name='PK_T_DOC_OUT_STR_PARTY')) then
  begin
    execute statement 'ALTER TABLE T_DOC_OUT_STR_PARTY ADD CONSTRAINT PK_T_DOC_OUT_STR_PARTY PRIMARY KEY (F_ID)';
  end
  if (not exists(select 1 from rdb$relation_constraints where rdb$constraint_name='FK_T_DOC_OUT_STR_PARTY_DOC' )) then
  begin
    execute statement 'ALTER TABLE T_DOC_OUT_STR_PARTY ADD CONSTRAINT FK_T_DOC_OUT_STR_PARTY_DOC FOREIGN KEY (F_DOC_OUT_STR) REFERENCES T_DOC_OUT_STR (F_ID);';
  end
  if (not exists(select 1 from rdb$relation_constraints where rdb$constraint_name='FK_T_DOC_OUT_STR_PARTY_PARTY' )) then
  begin
    execute statement 'ALTER TABLE T_DOC_OUT_STR_PARTY ADD CONSTRAINT FK_T_DOC_OUT_STR_PARTY_PARTY FOREIGN KEY (F_PARTY) REFERENCES T_NSI_GOOD_PARTY (F_ID);';
  end
  if (not exists(select 1 from rdb$relation_constraints where rdb$constraint_name='FK_T_NSI_GOOD_PARTY_GOOD' )) then
  begin
    execute statement 'ALTER TABLE T_NSI_GOOD_PARTY ADD CONSTRAINT FK_T_NSI_GOOD_PARTY_GOOD FOREIGN KEY (F_GOOD) REFERENCES T_NSI_GOODS (F_ID);';
  end

end^

execute procedure Upd_20120401;^


drop procedure Upd_20120401;^

create procedure Upd_20120404 as
begin

  if (not exists(select 1 from rdb$generators where RDB$GENERATOR_NAME='GEN_T_NSI_PARTNER_DISCOUNT_CARD')) then
    execute statement 'CREATE GENERATOR GEN_T_NSI_PARTNER_DISCOUNT_CARD;';

  if (not exists(select 1 from rdb$relations where rdb$relation_name='T_NSI_PARTNER_DISCOUNT_CARD')) then
  begin
    execute statement '
  CREATE TABLE T_NSI_PARTNER_DISCOUNT_CARD (
        F_ID        D_ID NOT NULL,
        F_DISCOUNT  D_INT ,
    F_PARTNER   D_INT );';
  end
  if (not exists(select 1 from rdb$relation_constraints where rdb$constraint_name='PK_T_NSI_PARTNER_DISCOUNT_CARD')) then
  begin
    execute statement 'ALTER TABLE T_NSI_PARTNER_DISCOUNT_CARD ADD CONSTRAINT PK_T_NSI_PARTNER_DISCOUNT_CARD PRIMARY KEY (F_ID)';
  end
  if (not exists(select 1 from rdb$relation_constraints where rdb$constraint_name='FK_PARTNER_DISCOUNT_CARD_CARD')) then
  begin
    execute statement 'ALTER TABLE T_NSI_PARTNER_DISCOUNT_CARD ADD CONSTRAINT FK_PARTNER_DISCOUNT_CARD_CARD FOREIGN KEY (F_DISCOUNT) REFERENCES T_NSI_DISCOUNT_CARD (F_ID);';
  end
  if (not exists(select 1 from rdb$relation_constraints where rdb$constraint_name='FK_PARTNER_DISCOUNT_CARD_PART')) then
  begin
    execute statement 'ALTER TABLE T_NSI_PARTNER_DISCOUNT_CARD ADD CONSTRAINT FK_PARTNER_DISCOUNT_CARD_PART FOREIGN KEY (F_PARTNER) REFERENCES T_NSI_PARTNER (F_ID);';
  end
  if (not exists(select 1 from rdb$relation_fields where rdb$field_name='F_GOOD_PARTY' and rdb$relation_name='T_DOC_IN_STR')) then
  begin
    execute statement 'ALTER TABLE T_DOC_IN_STR ADD F_GOOD_PARTY D_INT;';
    execute statement 'ALTER TABLE T_DOC_IN_STR ADD CONSTRAINT FK_T_DOC_IN_STR_GOOD_PARTY FOREIGN KEY (F_GOOD_PARTY) REFERENCES T_NSI_GOOD_PARTY(F_ID);';
  end

end^

execute procedure Upd_20120404;^


drop procedure Upd_20120404;^

create procedure Upd_20120523 as
begin
  if (exists(select 1 from rdb$relation_fields where rdb$field_name='F_SUM' and rdb$relation_name='T_DOC_IN')) then
  begin
    execute statement 'alter table t_doc_in drop F_SUM';
  end
  if (exists(select 1 from rdb$relation_fields where rdb$field_name='F_SUM' and rdb$relation_name='T_DOC_OUT')) then
  begin
    execute statement 'alter table t_doc_out drop F_SUM';
  end
  if (exists(select 1 from rdb$relation_fields where rdb$field_name='F_GOOD_CNT' and rdb$relation_name='T_DOC_IN')) then
  begin
    execute statement 'alter table t_doc_in drop F_GOOD_CNT';
  end
  if (exists(select 1 from rdb$relation_fields where rdb$field_name='F_GOOD_CNT' and rdb$relation_name='T_DOC_OUT')) then
  begin
    execute statement 'alter table t_doc_out drop F_GOOD_CNT';
  end

  if (not exists(select 1 from rdb$relation_fields where rdb$field_name='F_USER' and rdb$relation_name='T_DOC_IN')) then
  begin
    execute statement 'alter table t_doc_in add F_USER D_USER';
  end
  if (not exists(select 1 from rdb$relation_fields where rdb$field_name='F_USER' and rdb$relation_name='T_DOC_OUT')) then
  begin
    execute statement 'alter table t_doc_out add F_USER D_USER';
  end
  if (not exists(select 1 from rdb$relation_fields where rdb$field_name='F_USER' and rdb$relation_name='T_DOC_MOVE')) then
  begin
    execute statement 'alter table t_doc_move add F_USER D_USER';
  end
  if (not exists(select 1 from rdb$relation_fields where rdb$field_name='F_USER' and rdb$relation_name='T_DOC_PRICE')) then
  begin
    execute statement 'alter table t_doc_price add F_USER D_USER';
  end
  if (not exists(select 1 from rdb$relation_fields where rdb$field_name='F_USER' and rdb$relation_name='T_MONEY_OUT')) then
  begin
    execute statement 'alter table t_money_out add F_USER D_USER';
  end
  if (not exists(select 1 from rdb$relation_fields where rdb$field_name='F_USER' and rdb$relation_name='T_MONEY_IN')) then
  begin
    execute statement 'alter table t_money_in add F_USER D_USER';
  end

end^

execute procedure Upd_20120523;^


drop procedure Upd_20120523;^

create procedure Upd_20121024 as
begin

  if (not exists(select 1 from rdb$generators where RDB$GENERATOR_NAME='GEN_T_NSI_DOC_PROPERTY_VAL_ID')) then
    execute statement 'CREATE GENERATOR GEN_T_NSI_DOC_PROPERTY_VAL_ID;';

  if (not exists(select 1 from rdb$relations where rdb$relation_name='T_NSI_DOC_PROPERTY_VAL')) then
  begin
    execute statement '
  CREATE TABLE T_NSI_DOC_PROPERTY_VAL (
      F_ID            D_ID NOT NULL,
      F_DOC_PROPERTY  D_INT,
      F_VALUE         D_STR100
  );';
    execute statement 'ALTER TABLE T_NSI_DOC_PROPERTY_VAL ADD CONSTRAINT PK_T_NSI_DOC_PROPERTY_VAL PRIMARY KEY (F_ID);';
    execute statement 'ALTER TABLE T_NSI_DOC_PROPERTY_VAL ADD CONSTRAINT FK_T_NSI_DOC_PROPERTY_VAL_1 FOREIGN KEY (F_DOC_PROPERTY) REFERENCES T_NSI_DOC_PROPERTY (F_ID);';
  end

  if (not exists(select 1 from RDB$INDICES where rdb$index_name='IDX_T_DOC_PROPERTY_VAL')) then
  begin
    execute statement 'CREATE INDEX IDX_T_DOC_PROPERTY_VAL ON T_DOC_PROPERTY (F_DOC_MOVETYPE, F_VALUE);';
  end

end^

execute procedure Upd_20121024;^


drop procedure Upd_20121024;^

create procedure Upd_20121117 as
begin

  if (not exists(select 1 from rdb$relation_fields where rdb$field_name='F_TYPE' and rdb$relation_name='T_SYS_PRIVS')) then
  begin
    execute statement 'ALTER TABLE T_SYS_PRIVS ADD F_TYPE D_INT';
  end

  if (not exists(select 1 from rdb$relation_fields where rdb$field_name='F_STATE' and rdb$relation_name='T_SYS_PRIVS')) then
  begin
    execute statement 'ALTER TABLE T_SYS_PRIVS ADD F_STATE D_INT';
    execute statement 'alter table T_SYS_PRIVS add constraint FK_T_SYS_PRIVS_STATE foreign key (F_STATE) references T_NSI_STATE(F_ID)';
  end


end^

execute procedure Upd_20121117;^


drop procedure Upd_20121117;^

create procedure Upd_20121222 as
begin

  if (not exists(select 1 from rdb$relation_fields where rdb$field_name='F_GOOD_PARTY' and rdb$relation_name='T_DOC_MOVE_STR')) then
  begin
    execute statement 'ALTER TABLE T_DOC_MOVE_STR ADD F_GOOD_PARTY D_INT';
    execute statement 'alter table T_DOC_MOVE_STR add constraint FK_T_NSI_GOOD_PARTY foreign key (F_GOOD_PARTY) references T_NSI_GOOD_PARTY(F_ID)';
  end
end^

execute procedure Upd_20121222;^


drop procedure Upd_20121222;^


create procedure Upd_20130202 as
begin

  if (not exists(select 1 from rdb$relation_fields where rdb$field_name='F_EXT_ARTICLE' and rdb$relation_name='T_NSI_GOODS')) then
  begin
    execute statement 'ALTER TABLE T_NSI_GOODS ADD F_EXT_ARTICLE D_STR';
    execute statement 'CREATE INDEX T_NSI_GOODS_EXT_ARTICLE ON T_NSI_GOODS(F_EXT_ARTICLE)';
  end
end^

execute procedure Upd_20130202;^


drop procedure Upd_20130202;^

create procedure Upd_20130216 as
begin

  if (not exists(select 1 from rdb$relation_fields where rdb$field_name='F_CH_DATE' and rdb$relation_name='T_NSI_GOODS')) then
  begin
    execute statement 'ALTER TABLE T_NSI_GOODS ADD F_CH_DATE D_TIMESTAMP';
    execute statement 'CREATE INDEX T_NSI_GOODS_CH_DATE ON T_NSI_GOODS(F_CH_DATE)';
  end

  if (not exists(select 1 from rdb$relation_fields where rdb$field_name='F_CH_DATE' and rdb$relation_name='T_REG_GOOD')) then
  begin
    execute statement 'ALTER TABLE T_REG_GOOD ADD F_CH_DATE D_TIMESTAMP';
    execute statement 'CREATE INDEX T_REG_GOOD_CH_DATE ON T_REG_GOOD(F_CH_DATE)';
  end
  if (not exists(select 1 from rdb$relation_fields where rdb$field_name='F_DESCR' and rdb$relation_name='T_DOC_OUT_STR')) then
  begin
    execute statement 'ALTER TABLE T_DOC_OUT_STR ADD F_DESCR D_STR255';
  end
  if (not exists(select 1 from rdb$relation_fields where rdb$field_name='F_DESCR' and rdb$relation_name='T_DOC_TEMPLATE_STR')) then
  begin
    execute statement 'ALTER TABLE T_DOC_TEMPLATE_STR ADD F_DESCR D_STR255';
  end

end^

execute procedure Upd_20130216;^


drop procedure Upd_20130216;^

create procedure Upd_20130406 as
begin

  if (not exists(select 1 from rdb$relation_fields where rdb$field_name='F_TYPE' and rdb$relation_name='T_SYS_PRIVS' and rdb$field_source='D_STR20')) then
  begin
    execute statement 'ALTER TABLE T_SYS_PRIVS alter column f_type type d_str20';
  end
  if (exists (select 1 from rdb$relation_constraints where rdb$relation_name='T_SYS_PRIVS' and rdb$constraint_name = 'FK_T_SYS_PRIVS_STATE') ) then
  begin
    execute statement 'alter table t_sys_privs drop constraint FK_T_SYS_PRIVS_STATE';
  end
  if (not exists(select 1 from rdb$relation_fields where rdb$field_name='F_STATE' and rdb$relation_name='T_SYS_PRIVS' and rdb$field_source='D_STR20')) then
  begin
    execute statement 'ALTER TABLE T_SYS_PRIVS alter column f_state type d_str20';
  end

end^

execute procedure Upd_20130406;^


drop procedure Upd_20130406;^


create procedure Upd_20130727 as
begin
  if (not exists(select 1 from rdb$relation_fields where rdb$field_name='F_BARTER' and rdb$relation_name='T_NSI_GOODS')) then
  begin
    execute statement 'ALTER TABLE T_NSI_GOODS add f_barter D_BOOL';
  end
end^

execute procedure Upd_20130727;^


drop procedure Upd_20130727;^


create procedure Upd_20131207 as
begin

  if (not exists(select 1 from rdb$generators where RDB$GENERATOR_NAME='GEN_T_NSI_GOOD_TYPE_ID')) then
    execute statement 'CREATE GENERATOR GEN_T_NSI_GOOD_TYPE_ID;';

  if (not exists(select 1 from rdb$relations where rdb$relation_name='T_NSI_GOOD_TYPE')) then
  begin
    execute statement '
  CREATE TABLE T_NSI_GOOD_TYPE (
        F_ID         D_ID,
        F_NAME       D_STR,
        F_CHECK_OST  D_BOOL,
        F_COMPL      D_BOOL
  );';
    execute statement 'ALTER TABLE T_NSI_GOOD_TYPE ADD CONSTRAINT PK_T_NSI_GOOD_TYPE PRIMARY KEY (F_ID);';
  end

  if (not exists(select 1 from rdb$relation_fields where rdb$field_name='F_GOOD_TYPE' and rdb$relation_name='T_NSI_GOODS')) then
  begin
    execute statement 'ALTER TABLE T_NSI_GOODS add f_GOOD_TYPE D_INT';
    execute statement 'ALTER TABLE T_NSI_GOODS ADD CONSTRAINT T_NSI_GOODS_T_NSI_GOODS_TYPE FOREIGN KEY (F_GOOD_TYPE) REFERENCES T_NSI_GOOD_TYPE (F_ID) ON DELETE SET NULL;';
  end
end^

execute procedure Upd_20131207;^


drop procedure Upd_20131207;^


create procedure Upd_20140208 as
begin
  update RDB$FIELDS set
    RDB$FIELD_TYPE = 16,
    RDB$FIELD_SCALE = -3,
    RDB$FIELD_PRECISION = 15
    where RDB$FIELD_TYPE <> 16
      and RDB$FIELD_NAME in
      (select rdb$field_source from RDB$RELATION_FIELDS
        where
        (rdb$field_name='F_SUM' and rdb$relation_name='T_DOC_IN_STR')
        or (rdb$field_name='F_PAY_SUM' and rdb$relation_name='T_DOC_IN')
        or (rdb$field_name='F_SUM' and rdb$relation_name='T_DOC_OUT_STR')
        or (rdb$field_name='F_PAY_SUM' and rdb$relation_name='T_DOC_OUT')
        or (rdb$field_name='F_SUM' and rdb$relation_name='T_DOC_MOVE_STR')
        or (rdb$field_name='F_DOC_SUM' and rdb$relation_name='T_MONEY_IN')
        or (rdb$field_name='F_DOC_SUM' and rdb$relation_name='T_MONEY_OUT')
      );

  UPDATE
    RDB$RELATION_FIELDS set RDB$FIELD_SOURCE = 'D_MONEY'
    where
      RDB$FIELD_SOURCE <> 'D_MONEY' and
      (
      (RDB$FIELD_NAME = 'F_CNT' and RDB$RELATION_NAME = 'T_DOC_IN_STR')
      or (RDB$FIELD_NAME = 'F_PRICE_VAL' and RDB$RELATION_NAME = 'T_DOC_IN_STR')
      or (RDB$FIELD_NAME = 'F_DOC_COUNT' and RDB$RELATION_NAME = 'T_DOC_IN')
      or (RDB$FIELD_NAME = 'F_CNT' and RDB$RELATION_NAME = 'T_DOC_OUT_STR')
      or (RDB$FIELD_NAME = 'F_PRICE_VAL' and RDB$RELATION_NAME = 'T_DOC_OUT_STR')
      or (RDB$FIELD_NAME = 'F_PRICE_VAL_NSI' and RDB$RELATION_NAME = 'T_DOC_OUT_STR')
      or (RDB$FIELD_NAME = 'F_DOC_COUNT' and RDB$RELATION_NAME = 'T_DOC_OUT')
      or (RDB$FIELD_NAME = 'F_SUMMA' and RDB$RELATION_NAME = 'T_MONEY_IN')
      or (RDB$FIELD_NAME = 'F_SUMMA' and RDB$RELATION_NAME = 'T_MONEY_IN_STR')
      or (RDB$FIELD_NAME = 'F_SUMMA' and RDB$RELATION_NAME = 'T_MONEY_OUT')
      or (RDB$FIELD_NAME = 'F_SUMMA' and RDB$RELATION_NAME = 'T_MONEY_OUT_STR')
      );
end^
execute procedure Upd_20140208;^


drop procedure Upd_20140208;^

create procedure Upd_20140426 as
begin
  if (not exists(select 1 from rdb$relations where rdb$relation_name='T_SYS_CONTEXT_VAL')) then
  begin
    execute statement '
  CREATE TABLE T_SYS_CONTEXT_VAL (
      F_CONTEXT_NAME  D_STR NOT NULL,
      F_CONTEXT_TYPE  D_STR20 NOT NULL,
  F_CONTEXT_VAL   D_STR 
  );';
    execute statement 'ALTER TABLE T_SYS_CONTEXT_VAL ADD CONSTRAINT PK_T_SYS_CONTEXT_VAL PRIMARY KEY (F_CONTEXT_NAME);';
  end
end^
execute procedure Upd_20140426;^


drop procedure Upd_20140426;^



create procedure Upd_20140619 as
begin
  if (not exists(select 1 from rdb$relations where rdb$relation_name='T_NSI_PARTNER_CARD')) then
  begin
    execute statement '
  CREATE TABLE T_NSI_PARTNER_CARD (
      F_ID             D_ID NOT NULL,
      F_PARTNER        D_INT ,
      F_STR_DATE       D_DATE ,
      F_END_DATE       D_DATE ,
      F_DISCOUNT_TYPE  D_INT ,
      F_DISCOUNT       D_MONEY ,
      F_PAY_DAY        D_INT ,
      F_MAX_DEB        D_MONEY ,
      F_USER           D_USER ,
      F_TIMESTAMP      D_TIMESTAMP
  );';
    execute statement 'ALTER TABLE T_NSI_PARTNER_CARD ADD CONSTRAINT PK_T_NSI_PARTNER_CARD PRIMARY KEY (F_ID);';
    execute statement 'ALTER TABLE T_NSI_PARTNER_CARD ADD CONSTRAINT FK_T_NSI_PARTNER_CARD_PARNER FOREIGN KEY (F_PARTNER) REFERENCES T_NSI_PARTNER (F_ID);';
    execute statement 'CREATE INDEX T_NSI_PARTNER_CARD_IDX_DATE ON T_NSI_PARTNER_CARD (F_PARTNER, F_STR_DATE, F_END_DATE);';
  end
  if (not exists(select 1 from rdb$generators where RDB$GENERATOR_NAME='GEN_T_NSI_PARTNER_CARD_ID')) then
    execute statement 'CREATE GENERATOR GEN_T_NSI_PARTNER_CARD_ID;';

  if (not exists(select 1 from rdb$relation_fields where rdb$field_name='F_COLOR' and rdb$relation_name='T_NSI_GOODS_GRP')) then
  begin
    execute statement 'ALTER TABLE T_NSI_GOODS_GRP add F_COLOR d_str;';
  end

end^
execute procedure Upd_20140619;^


drop procedure Upd_20140619;^

create procedure Upd_20140715 as
declare variable v_prg_version bigint;
begin
  select PARAM_VALUE from sp_get_sys_param('PROGRAM_VERSION') into :v_prg_version;
  if (v_prg_version >= 20140715) then exit;
  if (not exists(select 1 from rdb$relation_fields where rdb$field_name='F_LAST_USER' and rdb$relation_name='T_DOC_OUT')) then
  begin
    execute statement 'ALTER TABLE T_DOC_OUT add F_LAST_USER D_USER';
  end
  if (not exists(select 1 from rdb$relation_fields where rdb$field_name='F_LAST_DT' and rdb$relation_name='T_DOC_OUT')) then
  begin
    execute statement 'ALTER TABLE T_DOC_OUT add F_LAST_DT D_TIMESTAMP';
  end
  if (not exists(select 1 from rdb$relation_fields where rdb$field_name='F_LAST_USER' and rdb$relation_name='T_DOC_MOVE')) then
  begin
    execute statement 'ALTER TABLE T_DOC_MOVE add F_LAST_USER D_USER';
  end
  if (not exists(select 1 from rdb$relation_fields where rdb$field_name='F_LAST_DT' and rdb$relation_name='T_DOC_MOVE')) then
  begin
    execute statement 'ALTER TABLE T_DOC_MOVE add F_LAST_DT D_TIMESTAMP';
  end

end^
execute procedure Upd_20140715;^


drop procedure Upd_20140715;^

create procedure Upd_20141228 as
declare variable v_prg_version bigint;
begin
  select PARAM_VALUE from sp_get_sys_param('PROGRAM_VERSION') into :v_prg_version;
  if (v_prg_version >= 20141228) then exit;
  if (not exists(select 1 from rdb$relations where rdb$relation_name='T_OST')) then
  begin
    execute statement 'CREATE TABLE T_OST (F_ID D_INT NOT NULL,F_GOOD D_INT,F_SKLAD D_INT, F_END_OST D_MONEY,F_DATE D_DATE);';
    execute statement 'ALTER TABLE T_OST ADD CONSTRAINT PK_T_OST PRIMARY KEY (F_ID);';
    execute statement 'ALTER TABLE T_OST ADD CONSTRAINT FK_T_OST_GOOD FOREIGN KEY (F_GOOD) REFERENCES T_NSI_GOODS (F_ID);';
    execute statement 'ALTER TABLE T_OST ADD CONSTRAINT FK_T_OST_SKLAD FOREIGN KEY (F_SKLAD) REFERENCES T_NSI_SKLAD (F_ID);';
    if (not exists(select 1 from rdb$generators where RDB$GENERATOR_NAME='GEN_T_OST_ID')) then
      execute statement 'CREATE GENERATOR gen_t_ost_id;';
    if (not exists(select 1 from rdb$triggers where rdb$trigger_name='T_OST_BI')) then
    begin
      execute statement 'CREATE OR ALTER TRIGGER T_OST_BI FOR T_OST
  ACTIVE BEFORE INSERT POSITION 0
  as
  begin
    if (new.f_id is null) then
      new.f_id = gen_id(gen_t_ost_id,1);
  end';
    end
   
  end

end^
execute procedure Upd_20141228;^


drop procedure Upd_20141228;^

create procedure Upd_20150212 as
declare variable v_prg_version bigint;
begin
  select PARAM_VALUE from sp_get_sys_param('PROGRAM_VERSION') into :v_prg_version;
  if (v_prg_version >= 20150212) then exit;

  if (not exists(select 1 from rdb$relation_fields where rdb$field_name='F_DESCR' and rdb$relation_name='T_DOC_MOVE_STR')) then
  begin
    execute statement 'ALTER TABLE T_DOC_MOVE_STR ADD F_DESCR D_STR255';
  end
  if (not exists(select 1 from rdb$relations where rdb$relation_name='T_SYS_SOURCE_DBASE')) then
  begin
    execute statement 'CREATE TABLE T_SYS_SOURCE_DBASE (F_ID D_ID NOT NULL,F_DATE_FROM  D_DATE,F_DATE_TO D_DATE,F_HOST D_STR,F_BASE D_STR,F_USER D_STR,F_PASSWORD D_STR);';
    execute statement 'ALTER TABLE T_SYS_SOURCE_DBASE ADD CONSTRAINT PK_T_SYS_SOURCE_DBASE PRIMARY KEY (F_ID);';
    if (not exists(select 1 from rdb$generators where RDB$GENERATOR_NAME='GEN_T_SYS_SOURCE_DBASE_ID')) then
      execute statement 'CREATE GENERATOR GEN_T_SYS_SOURCE_DBASE_ID;';
    if (not exists(select 1 from rdb$triggers where rdb$trigger_name='T_SYS_SOURCE_DBASE_BI')) then
    begin
      execute statement 'CREATE OR ALTER TRIGGER T_SYS_SOURCE_DBASE_BI FOR T_SYS_SOURCE_DBASE
  ACTIVE BEFORE INSERT POSITION 0
  as
  begin
    if (new.f_id is null) then
      new.f_id = gen_id(gen_t_sys_source_dbase_id,1);
  end';
    end
  end
  if (not exists(select 1 from rdb$relations where rdb$relation_name='T_NSI_GOODS_MMEDIA_MAP')) then
  begin
    execute statement 'CREATE TABLE T_NSI_GOODS_MMEDIA_MAP (F_ID D_ID NOT NULL, F_GOOD D_INT,F_MMEDIA D_INT,F_SOURCE  D_INT);';
    execute statement 'ALTER TABLE T_NSI_GOODS_MMEDIA_MAP ADD CONSTRAINT PK_T_NSI_GOODS_MMEDIA_MAP PRIMARY KEY (F_ID);';
    execute statement 'ALTER TABLE T_NSI_GOODS_MMEDIA_MAP ADD CONSTRAINT FK_T_NSI_GOODS_MMEDIA_MAP_1 FOREIGN KEY (F_GOOD) REFERENCES T_NSI_GOODS (F_ID);';
    execute statement 'ALTER TABLE T_NSI_GOODS_MMEDIA_MAP ADD CONSTRAINT FK_T_NSI_GOODS_MMEDIA_MAP_3 FOREIGN KEY (F_SOURCE) REFERENCES T_SYS_SOURCE_DBASE (F_ID);';
    if (not exists(select 1 from rdb$generators where RDB$GENERATOR_NAME='GEN_T_NSI_GOODS_MMEDIA_MAP_ID')) then
      execute statement 'CREATE GENERATOR GEN_T_NSI_GOODS_MMEDIA_MAP_ID;';
    if (not exists(select 1 from rdb$triggers where rdb$trigger_name='T_NSI_GOODS_MMEDIA_MAP_BI')) then
    begin
      execute statement 'CREATE OR ALTER TRIGGER T_NSI_GOODS_MMEDIA_MAP_BI FOR T_NSI_GOODS_MMEDIA_MAP
  ACTIVE BEFORE INSERT POSITION 0
  as
  begin
    if (new.f_id is null) then
      new.f_id = gen_id(gen_t_nsi_goods_mmedia_map_id,1);
  end';
    end
  end
end^
execute procedure Upd_20150212;^


drop procedure Upd_20150212;^

create procedure Upd_20150528 as
declare variable v_prg_version bigint;
begin
  select PARAM_VALUE from sp_get_sys_param('PROGRAM_VERSION') into :v_prg_version;
  if (v_prg_version >= 20150528) then exit;
  if (not exists(select 1 from rdb$relations where rdb$relation_name='T_NSI_GOODS_INFO')) then
  begin
    execute statement 'CREATE TABLE T_NSI_GOODS_INFO (F_ID D_ID NOT NULL,F_NAME D_STR100,F_MULTI D_BOOL DEFAULT 0);';
    execute statement 'ALTER TABLE T_NSI_GOODS_INFO ADD CONSTRAINT PK_T_NSI_GOODS_INFO PRIMARY KEY (F_ID);';
    if (not exists(select 1 from rdb$generators where RDB$GENERATOR_NAME='GEN_T_NSI_GOODS_INFO_ID')) then
      execute statement 'CREATE GENERATOR GEN_T_NSI_GOODS_INFO_ID;';        
  end
  if (not exists(select 1 from rdb$relations where rdb$relation_name='T_NSI_GOODS_INFO_STR')) then
  begin
    execute statement 'CREATE TABLE T_NSI_GOODS_INFO_STR (F_ID D_ID NOT NULL,F_NSI_GOODS_INFO  D_INT,F_ORDER D_INT,F_VALUE D_STR100);';
    execute statement 'ALTER TABLE T_NSI_GOODS_INFO_STR ADD CONSTRAINT PK_T_NSI_GOODS_INFO_STR PRIMARY KEY (F_ID);';
    execute statement 'ALTER TABLE T_NSI_GOODS_INFO_STR ADD CONSTRAINT FK_T_NSI_GOODS_INFO_STR FOREIGN KEY (F_NSI_GOODS_INFO) REFERENCES T_NSI_GOODS_INFO (F_ID);';
    if (not exists(select 1 from rdb$generators where RDB$GENERATOR_NAME='GEN_T_NSI_GOODS_INFO_STR_ID')) then
      execute statement 'CREATE GENERATOR GEN_T_NSI_GOODS_INFO_STR_ID;';        

  end
  if (not exists(select 1 from rdb$relations where rdb$relation_name='T_USER_BUFER')) then
  begin
    execute statement 'CREATE TABLE T_USER_BUFER (F_ID    D_INT NOT NULL,F_USER  D_USER,F_GOOD  D_INT,F_CNT   D_FLOAT);';
    execute statement 'ALTER TABLE T_USER_BUFER ADD CONSTRAINT PK_T_USER_BUFFER PRIMARY KEY (F_ID);';
    execute statement 'ALTER TABLE T_USER_BUFER ADD CONSTRAINT FK_T_USER_BUFER_1 FOREIGN KEY (F_GOOD) REFERENCES T_NSI_GOODS (F_ID);';
    execute statement 'CREATE INDEX IDX_T_USER_BUFER_USR ON T_USER_BUFER (F_USER);';
    execute statement 'CREATE OR ALTER VIEW V_USER_BUFFER(F_ID,F_GOOD,F_ARTICLE,F_GOOD_NAME,F_CNT) AS select U.F_ID, U.F_GOOD, g.f_article, G.F_NAME, U.F_CNT from T_USER_BUFER U inner join T_NSI_GOODS G on U.F_GOOD = G.F_ID where U.F_USER = current_user;';
    if (not exists(select 1 from rdb$generators where RDB$GENERATOR_NAME='GEN_T_USER_BUFER_ID')) then
      execute statement 'CREATE GENERATOR GEN_T_USER_BUFER_ID;';        
  end
  if (not exists(select 1 from rdb$relations where rdb$relation_name='T_SYS_ARCHIVES')) then
  begin
    execute statement 'CREATE TABLE T_SYS_ARCHIVES (F_ARCH_NAME   D_STR255, F_START_DATE  D_DATE, F_END_DATE    D_DATE); ';
  end
end^
execute procedure Upd_20150528;^


drop procedure Upd_20150528;^

create procedure Upd_20150817 as
declare variable v_prg_version bigint;
begin
  select PARAM_VALUE from sp_get_sys_param('PROGRAM_VERSION') into :v_prg_version;
  if (v_prg_version >= 20150817) then exit;

  if (not exists(select 1 from rdb$relations where rdb$relation_name='T_NSI_GOODS_DOP_INFO')) then
  begin
    execute statement 'CREATE TABLE T_NSI_GOODS_DOP_INFO (F_ID D_ID NOT NULL,F_GOOD D_INT,F_GOOD_INFO D_INT,F_GOOD_INFO_VAL  D_STR);';
    execute statement 'ALTER TABLE T_NSI_GOODS_DOP_INFO ADD CONSTRAINT PK_T_NSI_GOODS_DOP_INFO PRIMARY KEY (F_ID);';
    execute statement 'ALTER TABLE T_NSI_GOODS_DOP_INFO ADD CONSTRAINT FK_T_NSI_GOODS_DOP_INFO_1 FOREIGN KEY (F_GOOD) REFERENCES T_NSI_GOODS (F_ID);';
    execute statement 'ALTER TABLE T_NSI_GOODS_DOP_INFO ADD CONSTRAINT FK_T_NSI_GOODS_DOP_INFO_2 FOREIGN KEY (F_GOOD_INFO) REFERENCES T_NSI_GOODS_INFO (F_ID);';
    if (not exists(select 1 from rdb$generators where RDB$GENERATOR_NAME='GEN_T_NSI_GOODS_DOP_INFO_ID')) then
      execute statement 'CREATE GENERATOR GEN_T_NSI_GOODS_DOP_INFO_ID;';        
  end

end^
execute procedure Upd_20150817;^


drop procedure Upd_20150817;^

CREATE OR ALTER procedure Upd_20160704 as
declare variable v_prg_version bigint;
begin
  select PARAM_VALUE from sp_get_sys_param('PROGRAM_VERSION') into :v_prg_version;
  if (v_prg_version >= 20160704) then exit;

  if (not exists(select 1 from rdb$relations where rdb$relation_name='T_NSI_GOODS_LINKS')) then
  begin
    execute statement 'CREATE TABLE T_NSI_GOODS_LINKS(F_ID D_ID NOT NULL,F_LINK_NAME D_STR,F_LINK_TYPE D_INT);';
    execute statement 'ALTER TABLE  T_NSI_GOODS_LINKS ADD CONSTRAINT PK_T_NSI_GOODS_LINKS PRIMARY KEY (F_ID);';
    if (not exists(select 1 from rdb$generators where RDB$GENERATOR_NAME='GEN_T_NSI_GOODS_LINKS_ID')) then
      execute statement 'CREATE GENERATOR GEN_T_NSI_GOODS_LINKS_ID;';        
  end
  if (not exists(select 1 from rdb$relations where rdb$relation_name='T_NSI_GOODS_LINK_POS')) then
  begin
    execute statement 'CREATE TABLE T_NSI_GOODS_LINK_POS(F_ID D_ID NOT NULL,F_LINK D_INT,F_GOOD D_INT)';
    execute statement 'ALTER TABLE T_NSI_GOODS_LINK_POS ADD CONSTRAINT PK_T_NSI_GOODS_LINK_POS PRIMARY KEY (F_ID);';
    execute statement 'ALTER TABLE T_NSI_GOODS_LINK_POS ADD CONSTRAINT FK_T_NSI_GOODS_LINK_POS_1 FOREIGN KEY (F_GOOD) REFERENCES T_NSI_GOODS (F_ID);';
    execute statement 'ALTER TABLE T_NSI_GOODS_LINK_POS ADD CONSTRAINT FK_T_NSI_GOODS_LINK_POS_2 FOREIGN KEY (F_LINK) REFERENCES T_NSI_GOODS_LINKS (F_ID);';

    if (not exists(select 1 from rdb$generators where RDB$GENERATOR_NAME='GEN_T_NSI_GOODS_LINK_POS_ID')) then
      execute statement 'CREATE GENERATOR GEN_T_NSI_GOODS_LINK_POS_ID;';        
  end
  if (not exists(select 1 from rdb$relations where rdb$relation_name='T_OST_PARTY')) then
  begin
    execute statement 'CREATE TABLE T_OST_PARTY ( F_ID D_ID, F_OST D_INT,F_GOOD D_INT,F_PARTY D_INT,F_CURR_OST D_MONEY);';
    execute statement 'ALTER TABLE T_OST_PARTY ADD CONSTRAINT PK_T_OST_PARTY PRIMARY KEY (F_ID);';
    execute statement 'ALTER TABLE T_OST_PARTY ADD CONSTRAINT T_OST_PARTY_T_NSI_GOODS FOREIGN KEY (F_GOOD) REFERENCES T_NSI_GOODS (F_ID) ON DELETE SET NULL;';
    execute statement 'ALTER TABLE T_OST_PARTY ADD CONSTRAINT T_OST_PARTY_T_NSI_GOODS_PARTY FOREIGN KEY (F_PARTY) REFERENCES T_NSI_GOOD_PARTY (F_ID) ON DELETE SET NULL;';
    execute statement 'ALTER TABLE T_OST_PARTY ADD CONSTRAINT T_OST_PARTY_T_OST FOREIGN KEY (F_OST) REFERENCES T_OST (F_ID) ON DELETE SET NULL;';

    if (not exists(select 1 from rdb$generators where RDB$GENERATOR_NAME='GEN_T_OST_PARTY')) then
      execute statement 'CREATE GENERATOR GEN_T_OST_PARTY;';        
  end

end^

execute procedure Upd_20160704;^
drop procedure Upd_20160704;^

CREATE OR ALTER procedure Upd_20160729 as
declare variable v_prg_version bigint;
begin
  select PARAM_VALUE from sp_get_sys_param('PROGRAM_VERSION') into :v_prg_version;
  if (v_prg_version >= 20160729) then exit;

  if (not exists(select 1 from rdb$relations where rdb$relation_name='T_CURR_PRICE')) then
  begin
    execute statement 'CREATE TABLE T_CURR_PRICE(F_ID D_ID NOT NULL,F_GOOD D_INT,
    F_PRICE      D_INT /* D_INT = BIGINT */,
    F_STR_DATE   D_DATE /* D_DATE = DATE */,
    F_VALUE      D_MONEY /* D_MONEY = NUMERIC(15,3) */,
    F_MAKE_DATE  D_TIMESTAMP DEFAULT current_date );';
    execute statement 'ALTER TABLE  T_CURR_PRICE ADD CONSTRAINT PK_T_CURR_PRICE PRIMARY KEY (F_ID);';
    execute statement 'ALTER TABLE T_CURR_PRICE ADD CONSTRAINT FK_T_CURR_PRICE_2 FOREIGN KEY (F_PRICE) REFERENCES T_NSI_PRICE (F_ID);';
    execute statement 'CREATE UNIQUE INDEX T_CURR_PRICE_IDX1 ON T_CURR_PRICE (F_GOOD, F_PRICE);';
    if (not exists(select 1 from rdb$generators where RDB$GENERATOR_NAME='GEN_T_CURR_PRICE_ID')) then
      execute statement 'CREATE GENERATOR GEN_T_CURR_PRICE_ID;';        
  end

end^

execute procedure Upd_20160729;^
drop procedure Upd_20160729;^

CREATE OR ALTER procedure Upd_20160804 as
declare variable v_prg_version bigint;
begin
  select PARAM_VALUE from sp_get_sys_param('PROGRAM_VERSION') into :v_prg_version;
  if (v_prg_version >= 20160804) then exit;
  if (not exists(select 1 from rdb$relation_fields where rdb$field_name='F_CRE_DATE' and rdb$relation_name='T_NSI_GOODS')) then
  begin
    execute statement 'ALTER TABLE T_NSI_GOODS ADD F_CRE_DATE D_DATE';
  end

end^
execute procedure Upd_20160804;^
drop procedure Upd_20160804;^
