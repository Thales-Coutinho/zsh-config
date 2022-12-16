# zsh-config
Automatização da configuração do zsh com extensões e configurações que utilizo.

# como utilizar?
Após a instalação do zsh, para alterar o shell padrão, utilize UMA das seguintes opções:
- utilize o comando "chsh -s /bin/zsh"
- altere o arquivo /etc/passwd
- acrescente "[ ! -z "$PS1" -a -x /usr/bin/zsh ] && exec /usr/bin/zsh" ao arquivo .bashrc

Então basta dar permissões de execução ao arquivo e executar o comando: ./zsh_config.sh no diretório em que armazenar o Script.

# que modificação serão feitas?
Customização do prompt, De forma que considero mais legível, organizada e bonita. Com destacamento o prompt e espaçamento do comando anterior. Com indicativo de usuário, hostname e caminho absoluto do diretório atual na linha superior e espaço para inserção de comandos Na linha inferior.
O Prompt customizado ainda apresenta indicador de usuário root, alterando a cor do nome do usuário para vermelho, evitando que comandos sejam rodados com super usuário por acidente. Bem como a sinalização no ícone ">" do status de saída do ultimo comando executado, sendo verde para comando bem sucedido e vermelho para falha na execução.

![Prompt_exemplo](https://user-images.githubusercontent.com/79290513/208153327-fb12e0b7-3d3d-45e5-8960-2a22112b42f5.png)


Acrescento a função de busca por sugestões de comandos com a tecla "Tab", com a possibilidade de alternar entre as sugestões com o uso das cetas após dois toques rápidos na tecla "Tab".

![Tab_exemplo](https://user-images.githubusercontent.com/79290513/208153921-304c66fc-76c7-4541-bcb1-85c7e342a619.png)


Acrescenta os seguintes pluguins de terceiros que utilizo:
- zsh-autosuggestions fonte: https://github.com/zsh-users/zsh-autosuggestions
- zsh-syntax-highlighting  fonte: https://github.com/zsh-users/zsh-syntax-highlighting.git
- zsh-history-substring-search fonte: https://github.com/zsh-users/zsh-history-substring-search.git

Oque acrescenta a sugestão de comandos com base no histórico, a sinalização de comandos escritos corretamente ou de forma errada e a possibilidade de pesquisa por termos específicos no histórico de comandos com o uso das cetas para cima ou para baixo.
