SELECT DISTINCT  RD.[Empresa] AS EMP_RD

FROM [rd-bichara-advogados-leads-todo] AS RD
WHERE  RD.[Empresa] NOT IN (
    SELECT DISTINCT SGC.[Razão Social]
    FROM SISJURI_GRUPO_CLIENTES AS SGC
    INNER JOIN [rd-bichara-advogados] AS RD ON SGC.[Razão Social] = RD.[Empresa]
    ORDER BY SGC.[Razão Social]
)
ORDER BY RD.[Empresa];


SELECT DISTINCT  RD.[Empresa]
FROM [rd-bichara-advogados] AS RD
ORDER BY RD.[Empresa];

SELECT 
   SAPC.EMPRESA.NOME,
   SAPC.PROCESSO.VALOR_CAUSA ,
   SAPC.PROCESSO.VALOR_ENVOLV , 
   SAPC.PROCESSO.PROCESSO1  ,
   SAPC.FASE_PROCESSUAL.NO_FASE,
   SAPC.TIPO_ACAO.DESCRICAO,
   SAPC.SENTENCA.DESCRICAO
FROM SAPC.PROCESSO
LEFT JOIN SAPC.TIPO_ACAO ON (SAPC.TIPO_ACAO.CODIGO = SAPC.PROCESSO.CO_TIPO_ACAO)
LEFT JOIN SAPC.FASE_PROCESSUAL ON (SAPC.FASE_PROCESSUAL.CO_FASE = SAPC.PROCESSO.CO_FASE)
LEFT JOIN SAPC.PROCESSO_VALORES ON (SAPC.PROCESSO.COD_INTERNO = SAPC.PROCESSO_VALORES.COD_INTERNO) 
INNER JOIN SAPC.EMPRESA_CLIENTE ON (SAPC.PROCESSO.COD_CLIENTE = SAPC.EMPRESA_CLIENTE.COD_CLIENTE) 
INNER JOIN SAPC.EMPRESA ON (SAPC.EMPRESA_CLIENTE.GRUPO_GERAL = SAPC.EMPRESA.GRUPO_EMPRESA AND SAPC.EMPRESA_CLIENTE.COD_CLIENTE = SAPC.EMPRESA.CODIGO)
INNER JOIN SAPC.SENTENCA ON (SAPC.SENTENCA.CODIGO = SAPC.PROCESSO.COD_SENTENCA)
WHERE
SAPC.PROCESSO.COD_CLIENTE = 19448

SELECT DISTINCT
   SAPC.EMPRESA.NOME,
   SAPC.PROCESSO.VALOR_CAUSA,
   SAPC.PROCESSO.VALOR_ENVOLV,
   SAPC.DEPOSITO_JUDICIAL.VALOR,
   SAPC.PROCESSO.PROCESSO1,
   SAPC.FASE_PROCESSUAL.NO_FASE,
   SAPC.TIPO_ACAO.DESCRICAO,
   SAPC.SENTENCA.DESCRICAO,
   SAPC.ANDAMENTO.ANDAMENTO   
FROM SAPC.PROCESSO
INNER JOIN SAPC.ANDAMENTO ON SAPC.ANDAMENTO.COD_INTERNO = SAPC.PROCESSO.COD_INTERNO
INNER JOIN SAPC.DEPOSITO_JUDICIAL ON SAPC.DEPOSITO_JUDICIAL.COD_INTERNO = SAPC.PROCESSO.COD_INTERNO
LEFT JOIN SAPC.TIPO_ACAO ON SAPC.TIPO_ACAO.CODIGO = SAPC.PROCESSO.CO_TIPO_ACAO
LEFT JOIN SAPC.FASE_PROCESSUAL ON SAPC.FASE_PROCESSUAL.CO_FASE = SAPC.PROCESSO.CO_FASE
LEFT JOIN SAPC.PROCESSO_VALORES ON SAPC.PROCESSO.COD_INTERNO = SAPC.PROCESSO_VALORES.COD_INTERNO
INNER JOIN SAPC.EMPRESA_CLIENTE ON SAPC.PROCESSO.COD_CLIENTE = SAPC.EMPRESA_CLIENTE.COD_CLIENTE
INNER JOIN SAPC.EMPRESA ON SAPC.EMPRESA_CLIENTE.GRUPO_GERAL = SAPC.EMPRESA.GRUPO_EMPRESA AND SAPC.EMPRESA_CLIENTE.COD_CLIENTE = SAPC.EMPRESA.CODIGO
INNER JOIN SAPC.SENTENCA ON SAPC.SENTENCA.CODIGO = SAPC.PROCESSO.COD_SENTENCA
WHERE SAPC.PROCESSO.COD_CLIENTE = 19448 AND 
SAPC.ANDAMENTO.DATA_ANDAMENTO = SAPC.ANDAMENTO.DT_ULT_ALTERA

SELECT DISTINCT
   SAPC.EMPRESA.NOME,
   SAPC.PROCESSO.VALOR_CAUSA,
   SAPC.PROCESSO.VALOR_ENVOLV,
   SAPC.DEPOSITO_JUDICIAL.VALOR,
   SAPC.PROCESSO.PROCESSO1,
   SAPC.FASE_PROCESSUAL.NO_FASE,
   SAPC.TIPO_ACAO.DESCRICAO,
   SAPC.SENTENCA.DESCRICAO,
   SAPC.ANDAMENTO.ANDAMENTO   
FROM SAPC.PROCESSO
INNER JOIN SAPC.ANDAMENTO ON SAPC.ANDAMENTO.COD_INTERNO = SAPC.PROCESSO.COD_INTERNO
INNER JOIN SAPC.DEPOSITO_JUDICIAL ON SAPC.DEPOSITO_JUDICIAL.COD_INTERNO = SAPC.PROCESSO.COD_INTERNO
LEFT JOIN SAPC.TIPO_ACAO ON SAPC.TIPO_ACAO.CODIGO = SAPC.PROCESSO.CO_TIPO_ACAO
LEFT JOIN SAPC.FASE_PROCESSUAL ON SAPC.FASE_PROCESSUAL.CO_FASE = SAPC.PROCESSO.CO_FASE
LEFT JOIN SAPC.PROCESSO_VALORES ON SAPC.PROCESSO.COD_INTERNO = SAPC.PROCESSO_VALORES.COD_INTERNO
INNER JOIN SAPC.EMPRESA_CLIENTE ON SAPC.PROCESSO.COD_CLIENTE = SAPC.EMPRESA_CLIENTE.COD_CLIENTE
INNER JOIN SAPC.EMPRESA ON SAPC.EMPRESA_CLIENTE.GRUPO_GERAL = SAPC.EMPRESA.GRUPO_EMPRESA AND SAPC.EMPRESA_CLIENTE.COD_CLIENTE = SAPC.EMPRESA.CODIGO
INNER JOIN SAPC.SENTENCA ON SAPC.SENTENCA.CODIGO = SAPC.PROCESSO.COD_SENTENCA
WHERE SAPC.PROCESSO.COD_CLIENTE = 19448 AND 
SAPC.ANDAMENTO.DATA_ANDAMENTO = SAPC.ANDAMENTO.DT_ULT_ALTERA

SELECT DISTINCT
   SAPC.EMPRESA.NOME,
   SAPC.PROCESSO.AUTOR_NOME,
   SAPC.PROCESSO.VALOR_CAUSA,
   SAPC.PROCESSO.VALOR_ENVOLV,
   SAPC.DEPOSITO_JUDICIAL.VALOR,
   SAPC.PROCESSO.PROCESSO1,
   SAPC.FASE_PROCESSUAL.NO_FASE,
   SAPC.TIPO_ACAO.DESCRICAO,
   SAPC.SENTENCA.DESCRICAO,
   SAPC.ANDAMENTO.ANDAMENTO   
FROM SAPC.PROCESSO
INNER JOIN SAPC.ANDAMENTO ON SAPC.ANDAMENTO.COD_INTERNO = SAPC.PROCESSO.COD_INTERNO
INNER JOIN SAPC.DEPOSITO_JUDICIAL ON SAPC.DEPOSITO_JUDICIAL.COD_INTERNO = SAPC.PROCESSO.COD_INTERNO
LEFT JOIN SAPC.TIPO_ACAO ON SAPC.TIPO_ACAO.CODIGO = SAPC.PROCESSO.CO_TIPO_ACAO
LEFT JOIN SAPC.FASE_PROCESSUAL ON SAPC.FASE_PROCESSUAL.CO_FASE = SAPC.PROCESSO.CO_FASE
LEFT JOIN SAPC.PROCESSO_VALORES ON SAPC.PROCESSO.COD_INTERNO = SAPC.PROCESSO_VALORES.COD_INTERNO
INNER JOIN SAPC.EMPRESA_CLIENTE ON SAPC.PROCESSO.COD_CLIENTE = SAPC.EMPRESA_CLIENTE.COD_CLIENTE
INNER JOIN SAPC.EMPRESA ON SAPC.EMPRESA_CLIENTE.GRUPO_GERAL = SAPC.EMPRESA.GRUPO_EMPRESA AND SAPC.EMPRESA_CLIENTE.COD_CLIENTE = SAPC.EMPRESA.CODIGO
INNER JOIN SAPC.SENTENCA ON SAPC.SENTENCA.CODIGO = SAPC.PROCESSO.COD_SENTENCA
WHERE SAPC.PROCESSO.COD_CLIENTE = 19448 AND 
SAPC.ANDAMENTO.DATA_ANDAMENTO = SAPC.ANDAMENTO.DT_ULT_ALTERA



SELECT DISTINCT RD.[Identificação], 
                SGC.[Cód# Grupo de Empresa], 
                SGC.[Descrição do Grupo de Empresa] AS EMPRESA, 
                RD.[Nome], 
                RD.[Email], 
                RD.[Telefone], 
                RD.[Celular], 
                RD.[Cargo], 
                RD.[País], 
                RD.[Estado], 
                RD.[Cidade], 
                RD.[Dono do Lead], 
                RD.[Status para comunicação por email], 
                RD.[Tags], 
                RD.[Total de conversões], 
                RD.[Origem da última conversão], 
                RD.[Aceito receber newsletters via whatsapp], 
                RD.[Assembleia ALAE], 
                RD.[Capital Aberto], 
                RD.[Cargo | 工作职位], 
                RD.[CEP], 
                SGC.[Cód_Cliente] AS [Cod Cliente SISJURI'], 
                RD.[Como gostaria de receber nossas comunicações], 
                RD.[Como gostaria de receber nossas comunicações], 
                RD.[Data do Registro], 
                RD.[Departamento], 
                RD.[Email | 电邮], 
                RD.[Empresa | 公司], 
                RD.[Enderço comercial], 
                RD.[Estados e Cidades], 
                RD.[Festa SP], 
                RD.[Informativo], 
                /*RD.[Marque abaixo para confirmar sua inscrição no webinar:	Nacional],*/ 
                RD.[Nacional ou Internacional], 
                RD.[Nome \ Name], 
                RD.[Nome | 名字], 
                RD.[Nome:], 
                RD.[Observações do Marketing], 
                RD.[Origem], 
                RD.[Outro endereço de email], 
                RD.[País], 
                RD.[Pesquisa 2019], 
                RD.[Responsável pelo cliente], 
                RD.[Revisão dos Sócios], 
                RD.[Segmento da Empresa], 
                RD.[Setor], 
                RD.[Sexo], 
                RD.[Tipo de Cadastro]
FROM SISJURI_GRUPO_CLIENTES AS SGC 
INNER JOIN [rd-bichara-advogados] AS RD ON SGC.[Descrição do Grupo de Empresa] = RD.[Empresa] OR SGC.[Razão Social] =  RD.[Empresa]
ORDER BY RD.[Identificação], SGC.[Descrição do Grupo de Empresa];


SELECT [rd-bichara-advogados].[Identificação], 
      SGC.[Identificação] AS "ID_SISJURI"
       [rd-bichara-advogados].[Email], 
       [rd-bichara-advogados].[Nome], 
       [rd-bichara-advogados].[Telefone], 
       [rd-bichara-advogados].[Celular], 
       [rd-bichara-advogados].[Cargo], 
       [rd-bichara-advogados].[Empresa] 
       SGC.[Cód# Grupo de Empresa], 
       SGC.[Descrição do Grupo de Empresa],
       [rd-bichara-advogados].[País], 
       [rd-bichara-advogados].[Estado], 
       [rd-bichara-advogados].[Cidade], 
       [rd-bichara-advogados].[Dono do Lead], 
       [rd-bichara-advogados].[Status para comunicação por email], 
       [rd-bichara-advogados].[Tags], 
       [rd-bichara-advogados].[Total de conversões], 
       [rd-bichara-advogados].[Origem da última conversão], 
       [rd-bichara-advogados].[Aceito receber newsletters via whatsapp], 
       [rd-bichara-advogados].[Assembleia ALAE], 
       [rd-bichara-advogados].[Capital Aberto], 
       [rd-bichara-advogados].[Cargo | 工作职位], 
       [rd-bichara-advogados].[CEP], 
       [rd-bichara-advogados].[Cod Cliente SISJURI], 
       SGC.[Cód_Cliente]
       [rd-bichara-advogados].[Como gostaria de receber nossas comunicações], 
       [rd-bichara-advogados].[Campo22], [rd-bichara-advogados].[Data do Registro], 
       [rd-bichara-advogados].[Departamento], 
       [rd-bichara-advogados].[Email | 电邮], 
       [rd-bichara-advogados].[Empresa | 公司], 
       [rd-bichara-advogados].[Enderço comercial], 
       [rd-bichara-advogados].[Estados e Cidades], 
       [rd-bichara-advogados].[Festa SP], 
       [rd-bichara-advogados].[Grupo Empresa SISJURI], 
       [rd-bichara-advogados].[Informativo], 
       [rd-bichara-advogados].[Marque abaixo para confirmar sua inscrição no webinar:], 
       [rd-bichara-advogados].[Nacional], 
       [rd-bichara-advogados].[Nacional ou Internacional], 
       [rd-bichara-advogados].[Nome \ Name], 
       [rd-bichara-advogados].[Nome | 名字], 
       [rd-bichara-advogados].[Nome:], 
       [rd-bichara-advogados].[Observações do Marketing], 
       [rd-bichara-advogados].[Origem], 
       [rd-bichara-advogados].[Outro endereço de email], 
       [rd-bichara-advogados].[Campo41], 
       [rd-bichara-advogados].[Pesquisa 2019], 
       [rd-bichara-advogados].[Responsável pelo cliente], 
       [rd-bichara-advogados].[Revisão dos Sócios], 
       [rd-bichara-advogados].[Segmento da Empresa], 
       [rd-bichara-advogados].[Setor], 
       [rd-bichara-advogados].[Sexo], 
       [rd-bichara-advogados].[Tipo de Cadastro]
FROM [rd-bichara-advogados];
INNER JOIN SISJURI_GRUPO_CLIENTES AS SGC ON ON SGC.[Descrição do Grupo de Empresa] = [rd-bichara-advogados].[Empresa] OR SGC.[Razão Social] = [rd-bichara-advogados].[Empresa] ;


SELECT SISJURI_GRUPO_CLIENTES.[Identificação], SISJURI_GRUPO_CLIENTES.[Codigo Grupo de Empresa], SISJURI_GRUPO_CLIENTES.[Descrição do Grupo de Empresa], SISJURI_GRUPO_CLIENTES.[Cód_Cliente], SISJURI_GRUPO_CLIENTES.[Razão Social], SISJURI_GRUPO_CLIENTES.[Tipo de Pessoa], SISJURI_GRUPO_CLIENTES.[CNPJ/CPF], SISJURI_GRUPO_CLIENTES.[Data Abertura]
FROM SISJURI_GRUPO_CLIENTES;


SELECT [rd-bichara-advogados Consulta].[Identificação], 
       [rd-bichara-advogados Consulta].[Nome], 
       [rd-bichara-advogados Consulta].[Empresa], 
       [rd-bichara-advogados Consulta].[Descrição do Grupo de Empresa], 
       [rd-bichara-advogados Consulta].["ID_SISJURI"], 
       [rd-bichara-advogados Consulta].[Telefone], 
       [rd-bichara-advogados Consulta].[Celular], 
       [rd-bichara-advogados Consulta].[Cargo], 
       [rd-bichara-advogados Consulta].[Cód# Grupo de Empresa], 
       [rd-bichara-advogados Consulta].[País], 
       [rd-bichara-advogados Consulta].[Estado], 
       [rd-bichara-advogados Consulta].[Cidade], 
       [rd-bichara-advogados Consulta].[Dono do Lead], 
       [rd-bichara-advogados Consulta].[Status para comunicação por email], 
       [rd-bichara-advogados Consulta].[Total de conversões], 
       [rd-bichara-advogados Consulta].[Origem da última conversão], 
       [rd-bichara-advogados Consulta].[Aceito receber newsletters via whatsapp], 
       [rd-bichara-advogados Consulta].[Assembleia ALAE], 
       [rd-bichara-advogados Consulta].[Capital Aberto], 
       [rd-bichara-advogados Consulta].[Cargo | 工作职位], 
       [rd-bichara-advogados Consulta].[CEP], 
       [rd-bichara-advogados Consulta].[Cod Cliente SISJURI], 
       [rd-bichara-advogados Consulta].[Cód_Cliente], 
       [rd-bichara-advogados Consulta].[Como gostaria de receber nossas comunicações], 
       [rd-bichara-advogados Consulta].[Campo22], 
       [rd-bichara-advogados Consulta].[Data do Registro], 
       [rd-bichara-advogados Consulta].[Departamento], 
       [rd-bichara-advogados Consulta].[Email | 电邮], 
       [rd-bichara-advogados Consulta].[Empresa | 公司], 
       [rd-bichara-advogados Consulta].[Enderço comercial], 
       [rd-bichara-advogados Consulta].[Estados e Cidades], 
       [rd-bichara-advogados Consulta].[Festa SP], 
       [rd-bichara-advogados Consulta].[Grupo Empresa SISJURI], 
       [rd-bichara-advogados Consulta].[Informativo], 
       [rd-bichara-advogados Consulta].[Marque abaixo para confirmar sua inscrição no webinar:], 
       [rd-bichara-advogados Consulta].[Nacional], 
       [rd-bichara-advogados Consulta].[Nacional ou Internacional], 
       [rd-bichara-advogados Consulta].[Nome \ Name], 
       [rd-bichara-advogados Consulta].[Nome | 名字], 
       [rd-bichara-advogados Consulta].[Nome:], 
       [rd-bichara-advogados Consulta].[Observações do Marketing], 
       [rd-bichara-advogados Consulta].[Origem], 
       [rd-bichara-advogados Consulta].[Outro endereço de email], 
       [rd-bichara-advogados Consulta].[Campo41], 
       [rd-bichara-advogados Consulta].[Pesquisa 2019], [rd-bichara-advogados Consulta].[Responsável pelo cliente], [rd-bichara-advogados Consulta].[Revisão dos Sócios], [rd-bichara-advogados Consulta].[Segmento da Empresa], [rd-bichara-advogados Consulta].[Setor], [rd-bichara-advogados Consulta].[Sexo], [rd-bichara-advogados Consulta].[Tipo de Cadastro]
FROM [rd-bichara-advogados Consulta]
WHERE ((([rd-bichara-advogados Consulta].[Identificação]) In (SELECT [Identificação] FROM [rd-bichara-advogados Consulta] As Tmp GROUP BY [Identificação],[Nome],[Empresa],[Descrição do Grupo de Empresa],["ID_SISJURI"] HAVING Count(*)>1  And [Nome] = [rd-bichara-advogados Consulta].[Nome] And [Empresa] = [rd-bichara-advogados Consulta].[Empresa] And [Descrição do Grupo de Empresa] = [rd-bichara-advogados Consulta].[Descrição do Grupo de Empresa] And ["ID_SISJURI"] = [rd-bichara-advogados Consulta].["ID_SISJURI"])))
ORDER BY [rd-bichara-advogados Consulta].[Identificação], [rd-bichara-advogados Consulta].[Nome], [rd-bichara-advogados Consulta].[Empresa], [rd-bichara-advogados Consulta].[Descrição do Grupo de Empresa], [rd-bichara-advogados Consulta].["ID_SISJURI"];



SELECT [rd-bichara-advogados].[Identificação], SGC.[Identificação] AS ["ID_SISJURI"], [rd-bichara-advogados].[Email], [rd-bichara-advogados].[Nome], [rd-bichara-advogados].[Telefone], [rd-bichara-advogados].[Celular], [rd-bichara-advogados].[Cargo], [rd-bichara-advogados].[Empresa], SGC.[Cód# Grupo de Empresa], SGC.[Descrição do Grupo de Empresa], [rd-bichara-advogados].[País], [rd-bichara-advogados].[Estado], [rd-bichara-advogados].[Cidade], [rd-bichara-advogados].[Dono do Lead], [rd-bichara-advogados].[Status para comunicação por email], [rd-bichara-advogados].[Tags], [rd-bichara-advogados].[Total de conversões], [rd-bichara-advogados].[Origem da última conversão], [rd-bichara-advogados].[Aceito receber newsletters via whatsapp], [rd-bichara-advogados].[Assembleia ALAE], [rd-bichara-advogados].[Capital Aberto], [rd-bichara-advogados].[Cargo | 工作职位], [rd-bichara-advogados].[CEP], [rd-bichara-advogados].[Cod Cliente SISJURI], SGC.[Cód_Cliente], [rd-bichara-advogados].[Como gostaria de receber nossas comunicações], [rd-bichara-advogados].[Campo22], [rd-bichara-advogados].[Data do Registro], [rd-bichara-advogados].[Departamento], [rd-bichara-advogados].[Email | 电邮], [rd-bichara-advogados].[Empresa | 公司], [rd-bichara-advogados].[Enderço comercial], [rd-bichara-advogados].[Estados e Cidades], [rd-bichara-advogados].[Festa SP], [rd-bichara-advogados].[Grupo Empresa SISJURI], [rd-bichara-advogados].[Informativo], [rd-bichara-advogados].[Marque abaixo para confirmar sua inscrição no webinar:], [rd-bichara-advogados].[Nacional], [rd-bichara-advogados].[Nacional ou Internacional], [rd-bichara-advogados].[Nome \ Name], [rd-bichara-advogados].[Nome | 名字], [rd-bichara-advogados].[Nome:], [rd-bichara-advogados].[Observações do Marketing], [rd-bichara-advogados].[Origem], [rd-bichara-advogados].[Outro endereço de email], [rd-bichara-advogados].[Campo41], [rd-bichara-advogados].[Pesquisa 2019], [rd-bichara-advogados].[Responsável pelo cliente], [rd-bichara-advogados].[Revisão dos Sócios], [rd-bichara-advogados].[Segmento da Empresa], [rd-bichara-advogados].[Setor], [rd-bichara-advogados].[Sexo], [rd-bichara-advogados].[Tipo de Cadastro]
FROM [rd-bichara-advogados] INNER JOIN SISJURI_GRUPO_CLIENTES AS SGC ON SGC.[Descrição do Grupo de Empresa] = [rd-bichara-advogados].[Empresa] OR SGC.[Razão Social] = [rd-bichara-advogados].[Empresa]
WHERE ((([rd-bichara-advogados Consulta].[Identificação]) In (SELECT [Identificação] FROM [rd-bichara-advogados Consulta] As Tmp GROUP BY [Identificação],[Nome],[Empresa],[Descrição do Grupo de Empresa],["ID_SISJURI"] HAVING Count(*)>1  And [Nome] = [rd-bichara-advogados Consulta].[Nome] And [Empresa] = [rd-bichara-advogados Consulta].[Empresa] And [Descrição do Grupo de Empresa] = [rd-bichara-advogados Consulta].[Descrição do Grupo de Empresa] And ["ID_SISJURI"] = [rd-bichara-advogados Consulta].["ID_SISJURI"])))
ORDER BY [rd-bichara-advogados Consulta].[Identificação], [rd-bichara-advogados Consulta].[Nome], [rd-bichara-advogados Consulta].[Empresa], [rd-bichara-advogados Consulta].[Descrição do Grupo de Empresa], [rd-bichara-advogados Consulta].["ID_SISJURI"];