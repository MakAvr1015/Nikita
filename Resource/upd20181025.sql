SET SQL DIALECT 3;

CONNECT '10.8.0.1:nbase' USER 'SYSDBA' PASSWORD '951';

SET AUTODDL ON;

/* Alter Procedure... */
/* empty dependent procedure body */
/* Clear: PR_EXPORT_DOC_IN for: SP_T_DOC_IN_GET */
SET TERM ^ ;

--INSERT INTO T_NSI_DOC_IN_TYPES (F_ID, F_NAME, F_DESCR) VALUES (4, 'Розничный возврат', NULL);

/* Alter (SP_T_DOC_IN_GET) */
ALTER PROCEDURE SP_T_DOC_IN_GET(DOC_ID BIGINT,
DOC_TYPE BIGINT = 0)
 RETURNS(F_ID BIGINT,
F_SKLAD BIGINT,
F_PARTNER BIGINT,
F_NUMBER VARCHAR(60),
F_DATE DATE,
F_STATE BIGINT,
F_PARTNER_NAME VARCHAR(60),
F_PARTNER_KPP VARCHAR(20),
F_PARTNER_INN VARCHAR(20),
F_STATE_NAME VARCHAR(60),
F_SKLAD_NAME VARCHAR(60),
F_SKLAD_INN VARCHAR(20),
F_SKLAD_F_NAME VARCHAR(100),
F_SKLAD_KPP VARCHAR(20),
F_PRICE BIGINT,
F_PRICE_NAME VARCHAR(60),
F_DOC_TYPE BIGINT,
F_DOC_SUM NUMERIC(15,3),
F_USER VARCHAR(60),
F_TYPE_NAME VARCHAR(255))
 AS
begin
  if (DOC_ID = -10) then
  begin
    F_ID = gen_id(GEN_T_DOC_IN_ID, 1);
    select PARAM_VALUE
    from SP_GET_SYS_PARAM('default_sklad')
    into :F_SKLAD;
    F_DATE = 'now';
    select PARAM_VALUE
    from SP_GET_SYS_PARAM('in_doc_state')
    into :F_STATE;
    select PARAM_VALUE
    from SP_GET_SYS_PARAM('default_in_price')
    into :F_PRICE;
    if (DOC_TYPE < 1) then
      select PARAM_VALUE
      from SP_GET_SYS_PARAM('IN_DOC_TYPE')
      into :F_DOC_TYPE;
    else
      F_DOC_TYPE = DOC_TYPE;
    select F_NAME, coalesce(F_PRICE_IN, :F_PRICE)
    from SP_T_NSI_SKLAD_GET(:F_SKLAD)
    into :F_SKLAD_NAME, :F_PRICE;
    select F_NAME
    from SP_T_NSI_PRICE_GET(:F_PRICE)
    into :F_PRICE_NAME;
    if (F_NUMBER is null) then
      select F_RESULT
      from SP_GET_DOC_NUM(:F_SKLAD)
      into :F_NUMBER;
    if (DOC_TYPE = 4) then
      select F_PARTNER_ROZN
      from T_NSI_SKLAD
      where F_ID = :F_SKLAD
      into :F_PARTNER;

    F_USER = current_user;
    execute procedure SP_T_DOC_IN_I(:F_ID, :F_SKLAD, :f_partner, :F_NUMBER, :F_DATE, :F_STATE, :F_PRICE, :F_DOC_TYPE);
  end
  else
  begin
    select F_ID, F_SKLAD, F_PARTNER, F_NUMBER, F_DATE, F_STATE, F_PRICE, F_TYPE, F_DOC_SUM, F_USER
    from T_DOC_IN
    where F_ID = :DOC_ID
    into :F_ID, :F_SKLAD, :F_PARTNER, :F_NUMBER, :F_DATE, :F_STATE, :F_PRICE, :F_DOC_TYPE, :F_DOC_SUM, :F_USER;
    /*    if (not exists(select 1 from sp_check_sys_privs('T_DOC_IN') where f_RESULT='SEL' and (f_type='ANY' or f_type=:f_doc_type ) and (f_state='ANY' or f_state=:f_state))) then
      EXECUTE PROCEDURE PR_EXEC_EXCEPTION(3);*/
    if (coalesce(F_PARTNER, -1) > 0) then
      select F_NAME, F_INN, F_KPP
      from SP_T_NSI_PARTNER_GET(:F_PARTNER)
      into :F_PARTNER_NAME, :F_PARTNER_INN, :F_PARTNER_KPP;
    if (coalesce(F_SKLAD, -1) > 0) then
      select F_NAME, F_PARTNER_KPP, F_PARTNER_INN, F_PARTNER_NAME
      from SP_T_NSI_SKLAD_GET(:F_SKLAD)
      into :F_SKLAD_NAME, :F_SKLAD_KPP, :F_SKLAD_INN, :F_SKLAD_F_NAME;
    if (coalesce(F_PRICE, -1) > 0) then
      select F_NAME
      from SP_T_NSI_PRICE_GET(:F_PRICE)
      into :F_PRICE_NAME;
  end
  select F_NAME
  from SP_T_NSI_STATE_GET(:F_STATE)
  into :F_STATE_NAME;
  select F_NAME
  from SP_T_NSI_DOC_IN_TYPES_GET(:F_DOC_TYPE)
  into :F_TYPE_NAME;
  suspend;
end
^

ALTER PROCEDURE SP_T_DOC_IN_STR_I(F_ID BIGINT,
F_DOC_IN BIGINT,
F_GOOD BIGINT,
F_PRICE_VAL NUMERIC(15,3),
F_CNT FLOAT,
F_SUM FLOAT)
 AS
declare variable V_PRICE_ID bigint;
declare variable V_DOC_TYPE bigint;
declare variable V_DOC_OUT_STR_ID bigint;
declare variable V_CNT_OUT float;
declare variable V_CNT_IN float;
declare variable V_CNT_DOC float;
declare variable V_PRICE_VAL numeric(15,3);
declare variable V_DATE date;
declare variable V_PARTNER bigint;
declare variable V_TOTAL_CNT float;
begin
  if (F_CNT = 0) then
    F_CNT = 1;
  if (exists(select 1
             from T_DOC_IN
             where F_ID = :F_DOC_IN)) then
  begin
    select F_PRICE, F_DOC_TYPE, F_DATE, F_PARTNER
    from SP_T_DOC_IN_GET(:F_DOC_IN, null)
    into :V_PRICE_ID, :V_DOC_TYPE, :V_DATE, :V_PARTNER;
    if (F_PRICE_VAL is null) then
      select F_VALUE
      from SP_T_PRICE_GET(:V_PRICE_ID, :F_GOOD)
      into :F_PRICE_VAL;

  end
  if (V_DOC_TYPE = 1 or V_DOC_TYPE = 3) then
  begin
    if (exists(select 1
               from T_DOC_IN_STR
               where F_DOC_IN = :F_DOC_IN and
                     F_GOOD = :F_GOOD and
                     F_PRICE_VAL = :F_PRICE_VAL)) then
    begin
      update T_DOC_IN_STR
      set F_CNT = F_CNT + coalesce(:F_CNT, 1)
      where F_DOC_IN = :F_DOC_IN and
            F_GOOD = :F_GOOD;
    end
    else
    begin
      insert into T_DOC_IN_STR (F_ID, F_DOC_IN, F_GOOD, F_PRICE_VAL, F_CNT)
      values (:F_ID, :F_DOC_IN, :F_GOOD, :F_PRICE_VAL, coalesce(:F_CNT, 1));
    end
  end
  if (V_DOC_TYPE in (2, 4)) then
  begin
    V_TOTAL_CNT = coalesce(F_CNT, 1);
    if (F_CNT = 0) then
      V_TOTAL_CNT = 1;
    for select DS.F_ID, DS.F_CNT, DS.F_PRICE_VAL
        from T_DOC_OUT D
        inner join T_DOC_OUT_STR DS on D.F_ID = DS.F_DOC_OUT and D.F_PARTNER = :V_PARTNER and DS.F_GOOD = :F_GOOD
        where D.F_DATE <= :V_DATE and
              D.F_TYPE in (1, 2) and
              D.F_STATE >= 3
        order by D.F_DATE desc
        into :V_DOC_OUT_STR_ID, :V_CNT_OUT, :V_PRICE_VAL
    do
    begin
      select coalesce(sum(F_CNT), 0)
      from T_DOC_IN_STR S
      where S.F_DOC_OUT_STR = :V_DOC_OUT_STR_ID
      into :V_CNT_IN;
      V_CNT_DOC = V_CNT_OUT - V_CNT_IN;
      if ((V_CNT_DOC < V_TOTAL_CNT) and
          (V_CNT_DOC > 0)) then
      begin
        F_CNT = V_CNT_DOC;
        V_TOTAL_CNT = V_TOTAL_CNT - F_CNT;
      end
      if ((V_CNT_DOC >= V_TOTAL_CNT) and
          (V_TOTAL_CNT > 0)) then
      begin
        F_CNT = V_TOTAL_CNT;
        V_TOTAL_CNT = V_TOTAL_CNT - F_CNT;
      end
      if (V_CNT_DOC > 0) then
      begin
        if (exists(select 1
                   from T_DOC_IN_STR
                   where F_DOC_IN = :F_DOC_IN and
                         F_GOOD = :F_GOOD and
                         F_DOC_OUT_STR = :V_DOC_OUT_STR_ID)) then
        begin
          update T_DOC_IN_STR
          set F_CNT = F_CNT + coalesce(:F_CNT, 1)
          where F_DOC_IN = :F_DOC_IN and
                F_GOOD = :F_GOOD and
                F_DOC_OUT_STR = :V_DOC_OUT_STR_ID;
        end
        else
        begin
          insert into T_DOC_IN_STR (F_ID, F_DOC_IN, F_GOOD, F_PRICE_VAL, F_CNT, F_DOC_OUT_STR)
          values (:F_ID, :F_DOC_IN, :F_GOOD, :V_PRICE_VAL, coalesce(:F_CNT, 1), :V_DOC_OUT_STR_ID);
        end
      end
      if (V_TOTAL_CNT <= 0) then
        leave;
    end

    if (V_TOTAL_CNT > 0) then
    begin
      if (exists(select 1
                 from T_DOC_IN_STR
                 where F_DOC_IN = :F_DOC_IN and
                       F_GOOD = :F_GOOD and
                       F_DOC_OUT_STR is null)) then
      begin
        update T_DOC_IN_STR
        set F_CNT = F_CNT + coalesce(:V_TOTAL_CNT, 1)
        where F_DOC_IN = :F_DOC_IN and
              F_GOOD = :F_GOOD and
              F_DOC_OUT_STR is null;
      end
      else
      begin
        insert into T_DOC_IN_STR (F_ID, F_DOC_IN, F_GOOD, F_PRICE_VAL, F_CNT, F_PRICE_SOURCE)
        values (:F_ID, :F_DOC_IN, :F_GOOD, :F_PRICE_VAL, coalesce(:V_TOTAL_CNT, 1), :F_PRICE_VAL);
      end
    end
  end
end
^


SET TERM ; ^
