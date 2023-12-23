### Edição do SQL Server

-   Nos primeiros 06 meses será utilizado a edição Evaluation do SQL Server 2017. Essa decisão faz parte da estratégia de redução de custos iniciais do projeto visto que é uma edição que pode ser usada por 180 dias em carater de testes.

### Configurações Iniciais de Instalação da instância do banco de dados.

-   Instalação da Egine e Integration Services
-   Nome da instância do banco de dados: HOTELBONSSONHOS
-   Collation -> Latin1_General_CI_AI
-   Inicialmente definido uma senha forte para SA (será desabilitado posteriormente por questões de segurança)
-   Para um melhor desempenho do banco de dados, as configurações inciais de arquivos de dados do tempDB serão definidas como:

    -   Número de arquivos: 4 (Metade da quantidade de CPUs disponíveis)
    -   Tamanho incial: 1024MB
    -   Crescimento automático: 512MB

-   E para os arquivos de log do tempDB:

    -   Tamanho incial: 512MB
    -   Crescimento automático: 256MB

### Configurações de rede

-   A instancia do Servidor SQL HOTELBONSSONHOS irá aceitar conexões em:

    -   Endereço de rede: 192.168.0.8
    -   Porta: 12587

### Alias de conexão

-   Para facilitar o acesso a instancia do banco de dados HOTELBONSSONHOS foi criado um alias para a string de conexão:

    -   SQLHOTELBONSSONHOS

-   Com isso, caso haja alteração de endereço e IP do servidor, não será necessário reconfigurar a aplicação para se conectar ao novo IP.

### Boas práticas iniciais pós instalação
