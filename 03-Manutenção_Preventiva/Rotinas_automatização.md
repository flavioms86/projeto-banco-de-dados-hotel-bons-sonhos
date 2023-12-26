### Plano de checkagem de integridade dos dados usando CHECKDB

-   O tempo de perca de dados tolerável pela empresa Hotel Bons Sonhos ficou acordado em 3 horas com um tempo de recuperação também de 1h.

#### Janela de manutenção:

-   A janela de manutenção será na madrugada de domingo, entre 0:00 e 4:00 da manhã

#### Verificação de integridade dos dados

-   Foi criado um banco de dados db_dba que conterá tabelas auxiliares ao administrador do banco de dados para armazena informações de históricos de manutenção do banco de dados db_sistema_hotelbs.

-   Será feito uma verificação de integridade dos dados com DBCC CHECKDB uma vez por semana dentro da Janela de manutenção.

## Tabela de histórico checkdb

-   Foi criado uma tabela histórica chamada dbcc_history com informações sobre execução do checkdb. Informações essas que serão utilizadas para validaçãoes e relatórios sobre a saude e integridade dos dados.

#### Indices e estatísticas

-   A tabela TB_INDICE_MANUT conterá informações sobre índices do banco de dados db_sistema_hotelbs que precisam de manutenção.

-   Foi criado uma PROC (procedure) com o nome DBA_MANUT_INDEX que irá inserir na tabela TB_INDICE_MANUT do banco db_dba, informações sobre índices que precisam de manutenção (executar verificação de integridade com DBCC CHECKDB).

-   Para executar a manutenção nos índices identificados com fragmentação, foi criado uma PROC chamada DBA_EXEC_INDICE que executará um REBUILD dos índices que estiverem com índice de fragmentação acima de 30% e um REORGANIZE dos índices que estiverem a baixo de 30% e no final fará uma atualização das estatísticas dos índices.

#### Execução das verificações

-   A primeira verificação de fragmentação ocorrerá as 0:30 da janela de manutenção e a manutenção ocorrerá as 01:00 executando em etapas (5 índices por vez) até concluir toda a manutenção dos índices fragmentados listados na tabela TB_INDICE_MANUT.

#### Resumo de cronograma de manutenção

-   As 0:00 será executado a checagem de integridade dos dados
-   As 0:30 será analizado o percentual de fragmentação dos índices
-   Entre 01:00 e 04:00 será feito o rebuild e reorganize dos índices
