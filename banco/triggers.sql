"
  CREATE OR REPLACE EDITIONABLE TRIGGER "GYM_ADMIN"."TRG_MATRICULA_DATAFIM" 
before insert or update on matriculas
for each row
declare
    v_meses planos.duracao_meses%type;
begin
    select duracao_meses
      into v_meses
      from planos
     where id = :new.plano_id;

    :new.data_fim := add_months(:new.data_inicio, v_meses);
end;

ALTER TRIGGER "GYM_ADMIN"."TRG_MATRICULA_DATAFIM" ENABLE"

"
  CREATE OR REPLACE EDITIONABLE TRIGGER "GYM_ADMIN"."TRG_MATRICULA_STATUS" 
before insert or update on matriculas
for each row
begin
    if :new.data_fim >= trunc(sysdate) then
        :new.status := 'ATIVO';
    else
        :new.status := 'INATIVO';
    end if;
end;

ALTER TRIGGER "GYM_ADMIN"."TRG_MATRICULA_STATUS" ENABLE"