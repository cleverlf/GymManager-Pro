"
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "GYM_ADMIN"."VW_DASHBOARD" ("TOTAL_ALUNOS", "MATRICULAS_ATIVAS", "MATRICULAS_VENCIDAS", "IMC_MEDIO") AS 
  select
    (select count(*) from alunos) total_alunos,
    (select count(*) from matriculas where upper(status) like 'ATIV%') matriculas_ativas,
    (select count(*) from matriculas where data_fim < trunc(sysdate)) matriculas_vencidas,
    (
        select round(avg(fn_calcular_imc(peso, altura)),2)
        from avaliacoes_fisicas
    ) imc_medio
from dual"


"
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "GYM_ADMIN"."VW_DASHBOARD_ALUNOS" ("TOTAL_ALUNOS", "MATRICULAS_ATIVAS", "MATRICULAS_VENCIDAS", "IMC_MEDIO") AS 
  select
    (select count(*) from alunos) total_alunos,

    (select count(*)
       from matriculas
      where upper(status) = 'ATIVO') matriculas_ativas,

    (select count(*)
       from matriculas
      where trunc(data_fim) < trunc(sysdate)) matriculas_vencidas,

    (select round(avg(fn_calcular_imc(peso,altura)),2)
       from avaliacoes_fisicas) imc_medio

from dual"

"
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "GYM_ADMIN"."VW_DASHBOARD_API" ("TOTAL_ALUNOS", "MATRICULAS_ATIVAS", "MATRICULAS_VENCIDAS", "IMC_MEDIO") AS 
  select
    (select count(*) from alunos) total_alunos,

    (select count(*)
       from matriculas
      where upper(status) = 'ATIVO') matriculas_ativas,

    (select count(*)
       from matriculas
      where data_fim < trunc(sysdate)) matriculas_vencidas,

    (select round(avg(fn_calcular_imc(peso,altura)),2)
       from avaliacoes_fisicas) imc_medio

from dual"

"
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "GYM_ADMIN"."VW_EVOLUCAO_ALUNO" ("ID", "NOME", "PESO", "ALTURA", "IMC") AS 
  select
    a.id,
    a.nome,
    af.peso,
    af.altura,
    round(fn_calcular_imc(af.peso, af.altura),2) imc
from alunos a
join (
    select *
    from (
        select af.*,
               row_number() over (
                   partition by aluno_id
                   order by id desc
               ) rn
        from avaliacoes_fisicas af
    )
    where rn = 1
) af
on af.aluno_id = a.id"

"
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "GYM_ADMIN"."VW_HISTORICO_IMC" ("ID", "ALUNO_ID", "NOME", "DATA_AVALIACAO", "PESO", "ALTURA", "IMC") AS 
  select
    af.id,
    af.aluno_id,
    a.nome,
    af.data_avaliacao,
    af.peso,
    af.altura,
    round(fn_calcular_imc(af.peso, af.altura),2) imc
from avaliacoes_fisicas af
join alunos a
    on a.id = af.aluno_id"

    "
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "GYM_ADMIN"."VW_MATRICULAS_API" ("ID", "ALUNO", "PLANO", "DATA_INICIO", "DATA_FIM", "STATUS") AS 
  select
    m.id,
    a.nome as aluno,
    p.nome as plano,
    m.data_inicio,
    m.data_fim,
    m.status
from matriculas m
join alunos a
    on a.id = m.aluno_id
join planos p
    on p.id = m.plano_id"

    "
  CREATE OR REPLACE FORCE EDITIONABLE VIEW "GYM_ADMIN"."VW_PLANOS_API" ("ID", "NOME", "VALOR", "DURACAO_MESES", "ATIVO") AS 
  select
    id,
    nome,
    valor,
    duracao_meses,
    ativo
from planos"
    