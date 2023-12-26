### Banco de dados do sistema

-   Nome do banco de dados:

    -   db_sistema_hotelbs

-   Configurações:

    -   Arquivo de dados .mdf

        -   Tamanho inicial: 1024MB
        -   Crescimento automático: 512MB
        -   Sem tamanho máximo de arquivo

    -   Arquivo de log .ldf

        -   Tamanho inicial: 512MB
        -   Crescimento automático: 256MB
        -   Limite do tamanho do arquivo de log: 10.240MB

-   Observações:

O tamanho inicial do arquivo de dados e de log foram assim definidos para um melhor controle desses arquivos, visto que no inicio do projeto, o banco não terá um cresecimento muito grande e com isso terá poucos arquivos de dados.

-   As demais configurações ficarão como

    -   Modelo de Recuperação: Full, para registro total dos logs transacionais
    -   Nivel de compatibilidade padrão (2017);
    -   Atualização de estatisticas padrão.

[Script criar banco de dados](script_criar_banco_de_dados.sql)

[Script criar tabelas](./script_tabelas.sql)

[Script seed banco de dados](./script_seed.sql)

[Diagrama do banco de dados](./diagrama_bd_hotelbs.png)

[Voltar](../README.md)
