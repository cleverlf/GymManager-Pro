# GymManager Pro

Sistema de gerenciamento de academia desenvolvido com Oracle Database, PL/SQL, Oracle APEX e ORDS REST API.

## Tecnologias Utilizadas

- Oracle Database 21c XE
- Oracle APEX
- Oracle REST Data Services (ORDS)
- PL/SQL
- SQL
- REST API
- GitHub

## Funcionalidades

### Alunos
- Cadastro de alunos
- Edição de alunos
- Exclusão de alunos
- Consulta de alunos

### Planos
- Cadastro de planos
- Controle de valores
- Controle de duração

### Matrículas
- Matrículas de alunos
- Controle de vencimento
- Controle de status

### Avaliações Físicas
- Registro de peso
- Registro de altura
- Cálculo automático de IMC
- Histórico de avaliações

### Dashboard
- Total de alunos
- Matrículas ativas
- Matrículas vencidas
- IMC médio
- Gráficos analíticos

### REST API
- Login
- Geração de token
- Validação de token
- Dashboard API
- Alunos API
- Matrículas API
- Planos API
- Evolução Física API

## Oracle REST Data Services (ORDS)

### Módulos

#### gym_api

Base Path:

```text
/api/
```

Endpoints:

```text
POST   /api/login
GET    /api/alunos
GET    /api/alunos/{id}
GET    /api/alunos/{id}/resumo
GET    /api/alunos/{id}/evolucao
GET    /api/planos
GET    /api/matriculas
```

#### dashboard_api

Base Path:

```text
/api/dashboard/
```

Endpoints:

```text
GET /api/dashboard/resumo
GET /api/dashboard/secure
```

### Autenticação

O endpoint:

```text
POST /api/login
```

retorna um token de autenticação.

Exemplo:

```json
{
  "authenticated": true,
  "token": "2966b11fd650451b858e6deeedd4f337"
}
```

O token é armazenado na tabela:

```text
USUARIOS_TOKEN
```

e validado pela função:

```text
FN_VALIDAR_TOKEN
```

## Estrutura do Projeto

```
GymManager-Pro
├── apex
├── banco
├── docs
└── README.md
```

## Banco de Dados

### Tabelas

- ALUNOS
- PLANOS
- MATRICULAS
- AVALIACOES_FISICAS
- API_USUARIOS
- USUARIOS_TOKEN

### Views

- VW_DASHBOARD
- VW_DASHBOARD_ALUNOS
- VW_DASHBOARD_API
- VW_EVOLUCAO_ALUNO
- VW_HISTORICO_IMC
- VW_MATRICULAS_API
- VW_PLANOS_API

### Functions

- FN_CALCULAR_IMC
- FN_GERAR_TOKEN
- FN_LOGIN
- FN_VALIDAR_TOKEN

### Procedures

- PR_LOGIN

### Triggers

- TRG_MATRICULA_DATAFIM
- TRG_MATRICULA_STATUS

## Autor

Clever Lima Ferreira