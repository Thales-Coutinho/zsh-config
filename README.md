# zsh-config
Automatização da configuração do zsh com estenções e configurações que utilizo.

# como utilizar?
Após a instalação do zsh, para alterar o shell padrao, utilize UMA das seguintes opções:
- utilize o comando "chsh -s /bin/zsh"
- altere o arquivo /etc/passwd
- acrescente "[ ! -z "$PS1" -a -x /usr/bin/zsh ] && exec /usr/bin/zsh" ao arquivo .bashrc

Então basta dar permições de execução ao arquivo e executar o comando: ./zsh_config.sh no diretorio em que armazenar o escript.

# que modificação seram feitas?
Customização do Pront, De forma que considero mais legivel, organizada e bonita. Com destacamente o prompt e espaçamento do comando anterior. Com indicativo de Usuario, HostName e caminho absoluto do diretorio atual na linha superior e espaço para inserção de comandos Na linha inferior.
O Pronpt customizado ainda apresenta indicador de usuario root, auterando a cor do nome do usuario para vermelho, evitando que comandos sejam rodados com super usuario por acidente. Bem como a sinalização no icone ">" do estatus de saida do ultimo comando executado, sendo verde para comando bem sucedido e vermelho para falha na execução.

Acrescento a função de busca por sugestões de comandos com a tecla "Tab", com a possibilidade de auternar entre as sugestões com o uso das cetas após dois toques rapidos na tecla "Tab".

Acrescenta os seguintes pluguins de terceiros que utilizo:
- zsh-autosuggestions fonte: https://github.com/zsh-users/zsh-autosuggestions
- zsh-syntax-highlighting  fonte: https://github.com/zsh-users/zsh-syntax-highlighting.git
- zsh-history-substring-search fonte: https://github.com/zsh-users/zsh-history-substring-search.git

Oque acrescenta a sugestão de comandos com base no histórioco, a sinalização de comandos escritos corretamente ou de forma errada e a possibilidade de pesquisa por termos especificos no historico de comandos com o uso das cetas para cima ou para baixo.