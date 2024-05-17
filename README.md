# zsh-config
automating zsh configuration with the extensions I use.

## How to use?
### Install zsh on your system 
ex: apt install zsh

### Change the default shell
you can do that change the /etc/passwd file

### Give the script execution permissions
ex: chmod +x zsh_config.sh

### execute the script
ex: ./zsh_config.sh

## What changes will be made?
Customization of the prompt, in a way that I consider more readable, organized and beautiful. With highlighting the prompt and spacing of the previous command. With username, hostname and absolute path of the current directory displayed and space for entering commands on the bottom line.

The customized Prompt also features a root user indicator, changing the color of the user name to red, preventing commands from being run as a super user by accident. As well as the icon on top signaling the exit status of the last command executed, being green for a successful command and red for failed execution.

![Prompt_example](https://github.com/Thales-Coutinho/zsh-config/assets/79290513/78da2e24-c6ce-4905-a3ff-40515b488762)


I added the function of searching for command suggestions with the "Tab" key, with the possibility of switching between suggestions using the arrow keys after two quick taps on the "Tab" key.

![Tab_exemplo](https://github.com/Thales-Coutinho/zsh-config/assets/79290513/3c5a1841-b49c-461d-9236-fb34b415ac9e)

## third-party plugins used
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting.git)
- [zsh-history-substring-search](https://github.com/zsh-users/zsh-history-substring-search.git)

These plugins add command suggestions based on history, signaling whether commands are written correctly and the possibility of searching for specific terms in the command history using the up or down arrow keys.
