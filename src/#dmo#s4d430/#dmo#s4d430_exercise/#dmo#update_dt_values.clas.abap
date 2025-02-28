CLASS /dmo/update_dt_values DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS /dmo/update_dt_values IMPLEMENTATION.
  METHOD if_oo_adt_classrun~main.

    DATA: lt_employees TYPE TABLE OF /dmo/employ.

    DELETE FROM /dmo/employ.
    COMMIT WORK.

    CLEAR lt_employees.

    lt_employees = VALUE #(
      ( client = '100' employee_id = '000020' first_name = 'Janos' last_name = 'Kovacs'
        birth_date = '19980128' entry_date = '20190401' annual_salary = '87000.00' currency_code = 'USD'
        created_by = 'GENERATOR' created_at = '20250117141805.0000000'
        local_last_changed_by = 'GENERATOR' local_last_changed_at = '20250117141805.0000000'
        last_changed_at = '20250117141805.0000000' )
      ( client = '100' employee_id = '000023' first_name = 'Mario' last_name = 'Rossi'
        birth_date = '19791012' entry_date = '20190901' annual_salary = '90000.00' currency_code = 'EUR'
        created_by = 'GENERATOR' created_at = '20250117141805.0000000'
        local_last_changed_by = 'GENERATOR' local_last_changed_at = '20250117141805.0000000'
        last_changed_at = '20250117141805.0000000' )
      ( client = '100' employee_id = '000025' first_name = 'Jan' last_name = 'Jansen'
        birth_date = '19950413' entry_date = '20200401' annual_salary = '80000.00' currency_code = 'EUR'
        created_by = 'GENERATOR' created_at = '20250117141805.0000000'
        local_last_changed_by = 'GENERATOR' local_last_changed_at = '20250117141805.0000000'
        last_changed_at = '20250117141805.0000000' )
      ( client = '100' employee_id = '000030' first_name = 'Eva' last_name = 'Novakova'
        birth_date = '19981204' entry_date = '20200501' annual_salary = '65000.00' currency_code = 'EUR'
        created_by = 'GENERATOR' created_at = '20250117141805.0000000'
        local_last_changed_by = 'GENERATOR' local_last_changed_at = '20250117141805.0000000'
        last_changed_at = '20250117141805.0000000' )
      ( client = '100' employee_id = '000033' first_name = 'Jane' last_name = 'Doe'
        birth_date = '20020617' entry_date = '20220101' annual_salary = '110000.00' currency_code = 'USD'
        created_by = 'GENERATOR' created_at = '20250117141805.0000000'
        local_last_changed_by = 'GENERATOR' local_last_changed_at = '20250117141805.0000000'
        last_changed_at = '20250117141805.0000000' )
      ( client = '100' employee_id = '000001' first_name = 'John' last_name = 'Doe'
        birth_date = '19730521' entry_date = '20180601' annual_salary = '170000.00' currency_code = 'USD'
        created_by = 'GENERATOR' created_at = '20250117141805.0000000'
        local_last_changed_by = 'GENERATOR' local_last_changed_at = '20250117141805.0000000'
        last_changed_at = '20250117141805.0000000' )
      ( client = '100' employee_id = '000002' first_name = 'Anna' last_name = 'Malli'
        birth_date = '19810807' entry_date = '20180601' annual_salary = '150000.00' currency_code = 'EUR'
        created_by = 'GENERATOR' created_at = '20250117141805.0000000'
        local_last_changed_by = 'GENERATOR' local_last_changed_at = '20250117141805.0000000'
        last_changed_at = '20250117141805.0000000' )
      ( client = '100' employee_id = '000006' first_name = 'Erika' last_name = 'Mustermann'
        birth_date = '19840204' entry_date = '20190101' annual_salary = '110000.00' currency_code = 'EUR'
        created_by = 'GENERATOR' created_at = '20250117141805.0000000'
        local_last_changed_by = 'GENERATOR' local_last_changed_at = '20250117141805.0000000'
        last_changed_at = '20250117141805.0000000' )
      ( client = '100' employee_id = '000031' first_name = 'Jan' last_name = 'Kowalski'
        birth_date = '19880930' entry_date = '20210101' annual_salary = '80000.00' currency_code = 'USD'
        created_by = 'GENERATOR' created_at = '20250117141805.0000000'
        local_last_changed_by = 'GENERATOR' local_last_changed_at = '20250117141805.0000000'
        last_changed_at = '20250117141805.0000000' ) ).

    INSERT /dmo/employ FROM TABLE lt_employees.

    IF sy-subrc = 0.
      out->write( 'Данные успешно записаны в таблицу /DMO/EMPLOY' ).
    ELSE.
      out->write( 'Ошибка при записи данных' ).
    ENDIF.

    DATA: lt_employ_dep TYPE TABLE OF /dmo/employ_dep.

    DELETE FROM /dmo/employ_dep.
    COMMIT WORK.

    CLEAR lt_employ_dep.

    lt_employ_dep = VALUE #(
( client = '100' employee_id = '000020' first_name = 'Janos' last_name = 'Kovacs' birth_date = '19980128' entry_date = '20190401' department_id = 'SALE' annual_salary = '87000.00 ' currency_code = 'USD' created_by = 'GENERATOR'
created_at = '20250217141805.0000000 ' local_last_changed_by = 'GENERATOR' local_last_changed_at = '20250217141805.0000000 ' last_changed_at = '20250217141805.0000000 '  )
( client = '100' employee_id = '000023' first_name = 'Mario' last_name = 'Rossi' birth_date = '19791012' entry_date = '20190901' department_id = 'SALE' annual_salary = '90000.00 ' currency_code = 'EUR' created_by = 'GENERATOR'
created_at = '20250217141805.0000000 ' local_last_changed_by = 'GENERATOR' local_last_changed_at = '20250217141805.0000000 ' last_changed_at = '20250217141805.0000000 '  )
( client = '100' employee_id = '000025' first_name = 'Jan' last_name = 'Jansen' birth_date = '19950413' entry_date = '20200401' department_id = 'SALE' annual_salary = '80000.00 ' currency_code = 'EUR' created_by = 'GENERATOR'
created_at = '20250217141805.0000000 ' local_last_changed_by = 'GENERATOR' local_last_changed_at = '20250217141805.0000000 ' last_changed_at = '20250217141805.0000000 '  )
( client = '100' employee_id = '000030' first_name = 'Eva' last_name = 'Novakova' birth_date = '19981204' entry_date = '20200501' department_id = 'ADMIN' annual_salary = '65000.00 ' currency_code = 'EUR' created_by = 'GENERATOR'
created_at = '20250217141805.0000000 ' local_last_changed_by = 'GENERATOR' local_last_changed_at = '20250217141805.0000000 ' last_changed_at = '20250217141805.0000000 '  )
( client = '100' employee_id = '000033' first_name = 'Jane' last_name = 'Doe' birth_date = '20020617' entry_date = '20220101' department_id = 'ADMIN' annual_salary = '110000.00 ' currency_code = 'USD' created_by = 'GENERATOR'
created_at = '20250217141805.0000000 ' local_last_changed_by = 'GENERATOR' local_last_changed_at = '20250217141805.0000000 ' last_changed_at = '20250217141805.0000000 '  )
( client = '100' employee_id = '000001' first_name = 'John' last_name = 'Doe' birth_date = '19730521' entry_date = '20180601' department_id = 'SALE' annual_salary = '170000.00 ' currency_code = 'USD' created_by = 'GENERATOR'
created_at = '20250217141805.0000000 ' local_last_changed_by = 'GENERATOR' local_last_changed_at = '20250217141805.0000000 ' last_changed_at = '20250217141805.0000000 '  )
( client = '100' employee_id = '000002' first_name = 'Anna' last_name = 'Malli' birth_date = '19810807' entry_date = '20180601' department_id = 'ADMIN' annual_salary = '150000.00 ' currency_code = 'EUR' created_by = 'GENERATOR'
created_at = '20250217141805.0000000 ' local_last_changed_by = 'GENERATOR' local_last_changed_at = '20250217141805.0000000 ' last_changed_at = '20250217141805.0000000 '  )
( client = '100' employee_id = '000006' first_name = 'Erika' last_name = 'Mustermann' birth_date = '19840204' entry_date = '20190101' department_id = 'SALE' annual_salary = '110000.00 ' currency_code = 'EUR' created_by = 'GENERATOR'
created_at = '20250217141805.0000000 ' local_last_changed_by = 'GENERATOR' local_last_changed_at = '20250217141805.0000000 ' last_changed_at = '20250217141805.0000000 '  )
( client = '100' employee_id = '000031' first_name = 'Jan' last_name = 'Kowalski' birth_date = '19880930' entry_date = '20210101' department_id = 'ADMIN' annual_salary = '80000.00 ' currency_code = 'USD' created_by = 'GENERATOR'
created_at = '20250217141805.0000000 ' local_last_changed_by = 'GENERATOR' local_last_changed_at = '20250217141805.0000000 ' last_changed_at = '20250217141805.0000000 '  )
 ).


    INSERT /dmo/employ_dep FROM TABLE lt_employ_dep.

    IF sy-subrc = 0.
      out->write( 'Данные успешно записаны в таблицу /DMO/EMPLOY_DEP' ).
    ELSE.
      out->write( 'Ошибка при записи данных' ).
    ENDIF.

    DATA: lt_employ_rel TYPE TABLE OF /dmo/employ_rel.

    DELETE FROM /dmo/employ_rel.
    COMMIT WORK.

    CLEAR lt_employ_rel.

    lt_employ_rel = VALUE #(
( client = '100' employee_id = '000020' first_name = 'Janos' last_name = 'Kovacs' birth_date = '19980128' entry_date = '20190401' department_id = 'SALE' annual_salary = '87000.00 ' currency_code = 'USD' created_by = 'GENERATOR'
created_at = '20250217141805.0000000 ' local_last_changed_by = 'GENERATOR' local_last_changed_at = '20250217141805.0000000 ' last_changed_at = '20250217141805.0000000 '  )
( client = '100' employee_id = '000023' first_name = 'Mario' last_name = 'Rossi' birth_date = '19791012' entry_date = '20190901' department_id = 'SALE' annual_salary = '90000.00 ' currency_code = 'EUR' created_by = 'GENERATOR'
created_at = '20250217141805.0000000 ' local_last_changed_by = 'GENERATOR' local_last_changed_at = '20250217141805.0000000 ' last_changed_at = '20250217141805.0000000 '  )
( client = '100' employee_id = '000025' first_name = 'Jan' last_name = 'Jansen' birth_date = '19950413' entry_date = '20200401' department_id = 'SALE' annual_salary = '80000.00 ' currency_code = 'EUR' created_by = 'GENERATOR'
created_at = '20250217141805.0000000 ' local_last_changed_by = 'GENERATOR' local_last_changed_at = '20250217141805.0000000 ' last_changed_at = '20250217141805.0000000 '  )
( client = '100' employee_id = '000030' first_name = 'Eva' last_name = 'Novakova' birth_date = '19981204' entry_date = '20200501' department_id = 'ADMIN' annual_salary = '65000.00 ' currency_code = 'EUR' created_by = 'GENERATOR'
created_at = '20250217141805.0000000 ' local_last_changed_by = 'GENERATOR' local_last_changed_at = '20250217141805.0000000 ' last_changed_at = '20250217141805.0000000 '  )
( client = '100' employee_id = '000033' first_name = 'Jane' last_name = 'Doe' birth_date = '20020617' entry_date = '20220101' department_id = 'ADMIN' annual_salary = '110000.00 ' currency_code = 'USD' created_by = 'GENERATOR'
created_at = '20250217141805.0000000 ' local_last_changed_by = 'GENERATOR' local_last_changed_at = '20250217141805.0000000 ' last_changed_at = '20250217141805.0000000 '  )
( client = '100' employee_id = '000001' first_name = 'John' last_name = 'Doe' birth_date = '19730521' entry_date = '20180601' department_id = 'SALE' annual_salary = '170000.00 ' currency_code = 'USD' created_by = 'GENERATOR'
created_at = '20250217141805.0000000 ' local_last_changed_by = 'GENERATOR' local_last_changed_at = '20250217141805.0000000 ' last_changed_at = '20250217141805.0000000 '  )
( client = '100' employee_id = '000002' first_name = 'Anna' last_name = 'Malli' birth_date = '19810807' entry_date = '20180601' department_id = 'ADMIN' annual_salary = '150000.00 ' currency_code = 'EUR' created_by = 'GENERATOR'
created_at = '20250217141805.0000000 ' local_last_changed_by = 'GENERATOR' local_last_changed_at = '20250217141805.0000000 ' last_changed_at = '20250217141805.0000000 '  )
( client = '100' employee_id = '000006' first_name = 'Erika' last_name = 'Mustermann' birth_date = '19840204' entry_date = '20190101' department_id = 'SALE' annual_salary = '110000.00 ' currency_code = 'EUR' created_by = 'GENERATOR'
created_at = '20250217141805.0000000 ' local_last_changed_by = 'GENERATOR' local_last_changed_at = '20250217141805.0000000 ' last_changed_at = '20250217141805.0000000 '  )
( client = '100' employee_id = '000031' first_name = 'Jan' last_name = 'Kowalski' birth_date = '19880930' entry_date = '20210101' department_id = 'ADMIN' annual_salary = '80000.00 ' currency_code = 'USD' created_by = 'GENERATOR'
created_at = '20250217141805.0000000 ' local_last_changed_by = 'GENERATOR' local_last_changed_at = '20250217141805.0000000 ' last_changed_at = '20250217141805.0000000 '  )
 ).


    INSERT /dmo/employ_rel FROM TABLE lt_employ_rel.

    IF sy-subrc = 0.
      out->write( 'Данные успешно записаны в таблицу /DMO/EMPLOY_REL' ).
    ELSE.
      out->write( 'Ошибка при записи данных' ).
    ENDIF.

    DATA: lt_depment_rel TYPE TABLE OF /dmo/depment_rel.

    DELETE FROM /dmo/depment_rel.
    COMMIT WORK.

    CLEAR lt_depment_rel.

    lt_depment_rel = VALUE #(
( client = '100' id = 'SALE' description = 'Sales and Distribution' head_id = '000001' assistant_id = '000006' created_by = 'GENERATOR' created_at = '20250217141805.0000000 ' local_last_changed_by = 'GENERATOR'
local_last_changed_at = '20250217141805.0000000 ' last_changed_at = '20250217141805.0000000 '  )
( client = '100' id = 'ADMIN' description = 'Administration' head_id = '000002' assistant_id = '000031' created_by = 'GENERATOR' created_at = '20250217141805.0000000 ' local_last_changed_by = 'GENERATOR' local_last_changed_at = '20250217141805.0000000 '
last_changed_at = '20250217141805.0000000 '  )
 ).


    INSERT /dmo/depment_rel FROM TABLE lt_depment_rel.

    IF sy-subrc = 0.
      out->write( 'Данные успешно записаны в таблицу /DMO/DEPMENT_REL' ).
    ELSE.
      out->write( 'Ошибка при записи данных' ).
    ENDIF.

    DATA: lt_employ_ext TYPE TABLE OF /dmo/employ_ext.

    DELETE FROM /dmo/employ_ext.
    COMMIT WORK.

    CLEAR lt_employ_ext.

    lt_employ_ext = VALUE #(
( client = '100' employee_id = '000020' first_name = 'Janos' last_name = 'Kovacs' birth_date = '19980128' entry_date = '20190401' department_id = 'SALE' annual_salary = '87000.00 ' currency_code = 'USD' created_by = 'GENERATOR'
created_at = '20250217141805.0000000 ' local_last_changed_by = 'GENERATOR' local_last_changed_at = '20250217141805.0000000 ' last_changed_at = '20250217141805.0000000 ' /dmo/title_zem = '' /dmo/country_zem = 'US'  )
( client = '100' employee_id = '000023' first_name = 'Mario' last_name = 'Rossi' birth_date = '19791012' entry_date = '20190901' department_id = 'SALE' annual_salary = '90000.00 ' currency_code = 'EUR' created_by = 'GENERATOR'
created_at = '20250217141805.0000000 ' local_last_changed_by = 'GENERATOR' local_last_changed_at = '20250217141805.0000000 ' last_changed_at = '20250217141805.0000000 ' /dmo/title_zem = 'dott.' /dmo/country_zem = 'IT'  )
( client = '100' employee_id = '000025' first_name = 'Jan' last_name = 'Jansen' birth_date = '19950413' entry_date = '20200401' department_id = 'SALE' annual_salary = '80000.00 ' currency_code = 'EUR' created_by = 'GENERATOR'
created_at = '20250217141805.0000000 ' local_last_changed_by = 'GENERATOR' local_last_changed_at = '20250217141805.0000000 ' last_changed_at = '20250217141805.0000000 ' /dmo/title_zem = '' /dmo/country_zem = 'NL'  )
( client = '100' employee_id = '000030' first_name = 'Eva' last_name = 'Novakova' birth_date = '19981204' entry_date = '20200501' department_id = 'ADMIN' annual_salary = '65000.00 ' currency_code = 'EUR' created_by = 'GENERATOR'
created_at = '20250217141805.0000000 ' local_last_changed_by = 'GENERATOR' local_last_changed_at = '20250217141805.0000000 ' last_changed_at = '20250217141805.0000000 ' /dmo/title_zem = '' /dmo/country_zem = 'AT'  )
( client = '100' employee_id = '000033' first_name = 'Jane' last_name = 'Doe' birth_date = '20020617' entry_date = '20220101' department_id = 'ADMIN' annual_salary = '110000.00 ' currency_code = 'USD' created_by = 'GENERATOR'
created_at = '20250217141805.0000000 ' local_last_changed_by = 'GENERATOR' local_last_changed_at = '20250217141805.0000000 ' last_changed_at = '20250217141805.0000000 ' /dmo/title_zem = '' /dmo/country_zem = 'US'  )
( client = '100' employee_id = '000001' first_name = 'John' last_name = 'Doe' birth_date = '19730521' entry_date = '20180601' department_id = 'SALE' annual_salary = '170000.00 ' currency_code = 'USD' created_by = 'GENERATOR'
created_at = '20250217141805.0000000 ' local_last_changed_by = 'GENERATOR' local_last_changed_at = '20250217141805.0000000 ' last_changed_at = '20250217141805.0000000 ' /dmo/title_zem = '' /dmo/country_zem = 'US'  )
( client = '100' employee_id = '000002' first_name = 'Anna' last_name = 'Malli' birth_date = '19810807' entry_date = '20180601' department_id = 'ADMIN' annual_salary = '150000.00 ' currency_code = 'EUR' created_by = 'GENERATOR'
created_at = '20250217141805.0000000 ' local_last_changed_by = 'GENERATOR' local_last_changed_at = '20250217141805.0000000 ' last_changed_at = '20250217141805.0000000 ' /dmo/title_zem = '' /dmo/country_zem = 'ES'  )
( client = '100' employee_id = '000006' first_name = 'Erika' last_name = 'Mustermann' birth_date = '19840204' entry_date = '20190101' department_id = 'SALE' annual_salary = '110000.00 ' currency_code = 'EUR' created_by = 'GENERATOR'
created_at = '20250217141805.0000000 ' local_last_changed_by = 'GENERATOR' local_last_changed_at = '20250217141805.0000000 ' last_changed_at = '20250217141805.0000000 ' /dmo/title_zem = '' /dmo/country_zem = 'DE'  )
( client = '100' employee_id = '000031' first_name = 'Jan' last_name = 'Kowalski' birth_date = '19880930' entry_date = '20210101' department_id = 'ADMIN' annual_salary = '80000.00 ' currency_code = 'USD' created_by = 'GENERATOR'
created_at = '20250217141805.0000000 ' local_last_changed_by = 'GENERATOR' local_last_changed_at = '20250217141805.0000000 ' last_changed_at = '20250217141805.0000000 ' /dmo/title_zem = '' /dmo/country_zem = 'US'  )
 ).


    INSERT /dmo/employ_ext FROM TABLE lt_employ_ext.

    IF sy-subrc = 0.
      out->write( 'Данные успешно записаны в таблицу /DMO/EMPLOY_EXT' ).
    ELSE.
      out->write( 'Ошибка при записи данных' ).
    ENDIF.

  ENDMETHOD.
ENDCLASS.
