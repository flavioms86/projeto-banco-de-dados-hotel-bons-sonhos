#### Sobre backups:

-   Será armazenado o backup referente a última semana de trabalho
-   Também será armazenado um backup full mensal dos últimos 12 meses

#### A estratégia de backup:

-   Um backup full semanal a ser executado sempre a meia-noite do domingo
-   Três backups diferenciais (incremental) a cada 6 horas começando as 06:00 da manhã
-   Backups de log (transacional) a cada 30 minutos começando a 00:30
-   Todos os backups serão validados logicamente e também fisicamente uma vez por semana.
-   Os backups serão armazenados em outro disco secundário SSD e posteriormente transferido para nuvem.

#### Automatização dos backups

-   Será criado três PROCS que irá executar os backups full, diff e log da base do sistema.

    -   PROC SP_BACKUP_FULL
    -   PROC SP_BACKUP_DIFF
    -   PROC SP_BACKUP_LOG

-   Essas procs serão executadas nos seguintes horários:

    -   PROC SP_BACKUP_FULL as 00:00
    -   PROC SP_BACKUP_DIFF as 06:00 (a cada 6 horas)
    -   PROC SP_BACKUP_LOG as 00:30 (a cada 30 minutos)
