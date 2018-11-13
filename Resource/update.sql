
EXECUTE PROCEDURE SP_SET_SYS_PARAM('DEFAULT_SKLAD', '1');
EXECUTE PROCEDURE SP_SET_SYS_PARAM('DEFAULT_IN_PRICE', '4');
EXECUTE PROCEDURE SP_SET_SYS_PARAM('IN_DOC_STATE', '1');
EXECUTE PROCEDURE SP_SET_SYS_PARAM('DEFAULT_OUT_PRICE', '1');
EXECUTE PROCEDURE SP_SET_SYS_PARAM('OUT_DOC_STATE', '1');
EXECUTE PROCEDURE SP_SET_SYS_PARAM('CHANGE_SKLAD_OST_STATE', '3');
EXECUTE PROCEDURE SP_SET_SYS_PARAM('CHECK_ZAPAS', '1');
EXECUTE PROCEDURE SP_SET_SYS_PARAM('IN_DOC_TYPE', '1');
EXECUTE PROCEDURE SP_SET_SYS_PARAM('OUT_DOC_TYPE', '1');
EXECUTE PROCEDURE SP_SET_SYS_PARAM('MOVE_DOC_STATE', '1');
EXECUTE PROCEDURE SP_SET_SYS_PARAM('INVENTORY_DOC_STATE', '1');
EXECUTE PROCEDURE SP_SET_SYS_PARAM('MOVE_DOC_TYPE', '1');
EXECUTE PROCEDURE SP_SET_SYS_PARAM('OUT_DOC_SKIDKA', '1');
EXECUTE PROCEDURE SP_SET_SYS_PARAM('IN_DOC_ARCH', '4');
EXECUTE PROCEDURE SP_SET_SYS_PARAM('OUT_DOC_ARCH', '4');
EXECUTE PROCEDURE SP_SET_SYS_PARAM('MOVE_DOC_ARCH', '4');
EXECUTE PROCEDURE SP_SET_SYS_PARAM('PROGRAM_VERSION', '1.0',1);
EXECUTE PROCEDURE SP_SET_SYS_PARAM('DOWNLOAD_PHOTO', '1');
EXECUTE PROCEDURE SP_SET_SYS_PARAM('REMOVE_MONEY_WITH_DOC', '1');
EXECUTE PROCEDURE SP_SET_SYS_PARAM('IN_PAY_STATE', '1');
EXECUTE PROCEDURE SP_SET_SYS_PARAM('IS_FILIAL', '0');
EXECUTE PROCEDURE SP_SET_SYS_PARAM('DEF_PROP_DOC_MOVE', '2');
EXECUTE PROCEDURE SP_SET_SYS_PARAM('MAKE_PAY_FOR_ROZN', '0');
EXECUTE PROCEDURE SP_SET_SYS_PARAM('SET_NEXT_DOC_NUM_FROM_PREV', '0');
EXECUTE PROCEDURE SP_SET_SYS_PARAM('GET_GOOD_FROM_REG', '0');
EXECUTE PROCEDURE SP_SET_SYS_PARAM('CAN_EDIT_OUT_PRICE', '0');
alter trigger T_DOC_OUT_BUD0 inactive;
update t_doc_out set f_type=1 where f_type is null;
alter trigger T_DOC_OUT_BUD0 active;

commit work;

INSERT INTO T_NSI_DOC_OUT_TYPES (F_ID, F_NAME, F_DESCR)
select 3, 'Возврат поставщику', NULL
from
T_NSI_DOC_OUT_TYPES
where
f_id=1 and not exists(select f_id from T_NSI_DOC_OUT_TYPES where f_id=3);

COMMIT WORK;

INSERT INTO T_NSI_MONEY_IN_TYPES (F_ID, F_NAME, F_DESCR)
select 3, 'Платежная карта', NULL
from
T_NSI_MONEY_IN_TYPES
where
f_id=1 and not exists(select f_id from T_NSI_MONEY_IN_TYPES where f_id=3);

COMMIT WORK;

UPDATE OR INSERT INTO F_MESSAGES (F_ID, F_MSG)
                          VALUES (1, 'Нельзя изменять документ с таким статусом. Сначала измените статус')
                        MATCHING (F_ID);
UPDATE OR INSERT INTO F_MESSAGES (F_ID, F_MSG)
                          VALUES (2, 'Склад инвентаризации не определен')
                        MATCHING (F_ID);
UPDATE OR INSERT INTO F_MESSAGES (F_ID, F_MSG)
                          VALUES (3, 'Недостаточно прав для завершения операции')
                        MATCHING (F_ID);
UPDATE OR INSERT INTO F_MESSAGES (F_ID, F_MSG)
                          VALUES (4, 'К товарному документу привязан платежный документ, сначала удалите платеж')
                        MATCHING (F_ID);

COMMIT WORK;

UPDATE OR INSERT INTO T_NSI_STATE (F_ID, F_NAME, F_PARENT)
                           VALUES (1, 'Черновик', NULL)
                         MATCHING (F_ID);
UPDATE OR INSERT INTO T_NSI_STATE (F_ID, F_NAME, F_PARENT)
                           VALUES (2, 'Резервирование', 1)
                         MATCHING (F_ID);
UPDATE OR INSERT INTO T_NSI_STATE (F_ID, F_NAME, F_PARENT)
                           VALUES (3, 'Отгрузка', 2)
                         MATCHING (F_ID);
UPDATE OR INSERT INTO T_NSI_STATE (F_ID, F_NAME, F_PARENT)
                           VALUES (4, 'Закрыт', 3)
                         MATCHING (F_ID);
UPDATE OR INSERT INTO T_NSI_STATE (F_ID, F_NAME, F_PARENT)
                           VALUES (5, 'Архив', 4)
                         MATCHING (F_ID);
UPDATE OR INSERT INTO T_NSI_STATE (F_ID, F_NAME, F_PARENT)
                           VALUES (-1, 'Удален', NULL)
                         MATCHING (F_ID);

COMMIT WORK;

UPDATE OR INSERT INTO T_NSI_STATE_NSI (F_ID, F_NAME)
                               VALUES (1, 'Активно')
                             MATCHING (F_ID);
UPDATE OR INSERT INTO T_NSI_STATE_NSI (F_ID, F_NAME)
                               VALUES (2, 'В архиве')
                             MATCHING (F_ID);
UPDATE OR INSERT INTO T_NSI_STATE_NSI (F_ID, F_NAME)
                               VALUES (-1, 'Удалено')
                             MATCHING (F_ID);

COMMIT WORK;
update T_NSI_BANK set f_state=1 where f_state is null;
update T_NSI_PARTNER set f_state=1 where f_state is null;
update T_NSI_GOODS set f_state=1 where f_state is null;
update T_NSI_PRICE set f_state=1 where f_state is null;
update t_nsi_sklad set f_state=1 where f_state is null;
update T_NSI_GOODS_GRP set f_state=1 where f_state is null;
COMMIT WORK;
UPDATE OR INSERT INTO T_NSI_DOC_PROPERTY (F_ID, F_NAME) 
	VALUES (1, 'р/с')
	MATCHING (F_ID);
COMMIT WORK;
UPDATE OR INSERT INTO T_NSI_DOC_PROPERTY (F_ID, F_NAME) 
	VALUES (2, 'Списание')
	MATCHING (F_ID);
COMMIT WORK;
UPDATE OR INSERT INTO T_NSI_DOC_MOVE_TYPES (F_ID, F_NAME)
                          VALUES (1, 'Перемещение между складами')
                        MATCHING (F_ID);
UPDATE OR INSERT INTO T_NSI_DOC_MOVE_TYPES (F_ID, F_NAME)
                          VALUES (2, 'Списание недостачи')
                        MATCHING (F_ID);
UPDATE OR INSERT INTO T_NSI_DOC_MOVE_TYPES (F_ID, F_NAME)
                          VALUES (3, 'Оприходование излишков')
                        MATCHING (F_ID);
commit work;

update t_nsi_goods set f_ext_article=f_article where f_ext_article is null;

commit work;

EXECUTE PROCEDURE SP_SET_SYS_PARAM('DEFAULT_GOOD_TYPE', '1');

commit work;

UPDATE OR INSERT INTO T_NSI_DOC_IN_TYPES (F_ID, F_NAME)
                          VALUES (3, 'Хоз.документы')
                        MATCHING (F_ID);

UPDATE OR INSERT INTO T_NSI_DOC_OUT_TYPES (F_ID, F_NAME)
                          VALUES (3, 'Хоз.документы')
                        MATCHING (F_ID);

UPDATE OR INSERT INTO T_NSI_GOOD_TYPE (F_ID, F_NAME, F_CHECK_OST, F_COMPL)
                               VALUES (1, 'Товары', 1, 0)
                             MATCHING (F_ID);

UPDATE OR INSERT INTO F_MESSAGES (F_ID, F_MSG)
                          VALUES (5, 'Операция удаления товара невозможна. На складах ненулевые остатки')
                        MATCHING (F_ID);

execute procedure SP_REFRESH_T_OST;
EXECUTE PROCEDURE SP_SET_SYS_PARAM('PROGRAM_VERSION', '20160704' ,1);
EXECUTE PROCEDURE SP_SET_SYS_PARAM('PROGRAM_VERSION', '20160729' ,1);


commit work;