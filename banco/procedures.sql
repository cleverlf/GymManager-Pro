"
  CREATE OR REPLACE EDITIONABLE PROCEDURE "GYM_ADMIN"."PR_LOGIN" (
    p_username in varchar2,
    p_senha    in varchar2,
    p_token    out varchar2
)
is
    v_usuario_id number;
begin

    select id
    into v_usuario_id
    from api_usuarios
    where username = p_username
      and senha = p_senha
      and ativo = 'S';

    p_token := fn_gerar_token;

    insert into usuarios_token (
        usuario_id,
        token,
        data_expira
    )
    values (
        v_usuario_id,
        p_token,
        sysdate + 1
    );

exception
    when no_data_found then
        p_token := null;
end;
"   