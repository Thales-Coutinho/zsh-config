# zsh-config
automating zsh configuration with the extensions I use.

## How to use?
###Install zsh on your system 
ex: apt install zsh

###Change the default shell
you can do that change the /etc/passwd file

###Install nerd fonts in your system to correct display the icons in prompt
you can dowload from the [oficial site](https://www.nerdfonts.com/font-downloads) and add the files on 

After that, give the script execution permissions and execute the command: ./zsh_config.sh in the directory where you store the Script.

## What changes will be made?
Customization of the prompt, in a way that I consider more readable, organized and beautiful. With highlighting the prompt and spacing of the previous command. With username, hostname and absolute path of the current directory displayed and space for entering commands on the bottom line.

The customized Prompt also features a root user indicator, changing the color of the user name to red, preventing commands from being run as a super user by accident. As well as the icon on top signaling the exit status of the last command executed, being green for a successful command and red for failed execution.

![Prompt_example](https://user-images.githubusercontent.com/79290513/208153327-fb12e0b7-3d3d-45e5-8960-2a22112b42f5.png)


I added the function of searching for command suggestions with the "Tab" key, with the possibility of switching between suggestions using the arrow keys after two quick taps on the "Tab" key.

![Tab_exemplo](https://user-images.githubusercontent.com/79290513/208153921-304c66fc-76c7-4541-bcb1-85c7e342a619.png)


## third-party plugins used
- [zsh-autosuggestions](https://github.com/zsh-users/zsh-autosuggestions)
- [zsh-syntax-highlighting](https://github.com/zsh-users/zsh-syntax-highlighting.git)
- [zsh-history-substring-search](https://github.com/zsh-users/zsh-history-substring-search.git)

These plugins add command suggestions based on history, signaling whether commands are written correctly and the possibility of searching for specific terms in the command history using the up or down arrow keys.
