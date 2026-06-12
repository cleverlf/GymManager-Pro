"
  CREATE OR REPLACE EDITIONABLE FUNCTION "GYM_ADMIN"."FN_CALCULAR_IMC" (
    p_peso number,
    p_altura number
)
return number
is
begin
    return round(
        p_peso / power(p_altura, 2),
        2
    );
end;
"

"
  CREATE OR REPLACE EDITIONABLE FUNCTION "GYM_ADMIN"."FN_GERAR_TOKEN" 
return varchar2
is
begin
    return lower(
        rawtohex(sys_guid())
    );
end;
"

"
  CREATE OR REPLACE EDITIONABLE FUNCTION "GYM_ADMIN"."FN_LOGIN" (
    p_username varchar2,
    p_senha    varchar2
)
return number
is
    v_count number;
begin

    select count(*)
    into v_count
    from api_usuarios
    where username = p_username
      and senha = p_senha
      and ativo = 'S';

    return v_count;

end;
"

"
  CREATE OR REPLACE EDITIONABLE FUNCTION "GYM_ADMIN"."FN_VALIDAR_TOKEN" (
    p_token varchar2
)
return number
is
    v_count number;
begin

    select count(*)
    into v_count
    from usuarios_token
    where token = p_token
      and ativo = 'S'
      and data_expira > sysdate;

    return v_count;

end;
"