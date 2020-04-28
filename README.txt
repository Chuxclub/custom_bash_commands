# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ #
# ----------------------------------------------- READ ME ----------------------------------------------- #
# ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~ #

HOW TO TURN THESE BASH SCRIPTS INTO COMMANDS: In ~/.bashrc (cf Ctrl+h to see the file in GUI or 
                                              nano ~/.bashrc or gedit ~/.bashrc...) add at the end of 
                                              the file: export PATH="your_path_where_your_script_is:$PATH") 
                                              then save.


Explanation : when you enter a command, bash checks its $PATH environment variable to see it finds the 
              corresponding (a lot if not all bash commands are bash scripts or python scripts, etc.) 
              command. "export PATH=..." allows to add for one user and any of his bash session the path 
              where we store our custom scripts.

Warning     : - script won't be executed without the execute flag on (cf. sudo chmod 770 your_script_name)
                and will require the .sh extension in the end if there's no symbolic link. To add a 
                symbolic link, just input in a terminal in the proper directory : 
                ln -s your_script_name link_name.
                
              - Following this method, the traditional combination sudo + command can't be used. 
                It generates an error in Bash terminal. In order to use sudo with these custom commands, 
                use command: sudo -E env "PATH=$PATH" <command> [arguments]
                Or you can make an alias out of it: alias altsudo='sudo -E env "PATH=$PATH"'

Note        : This readme file also details the expected syntax of these 'commands' and any other relevant
              information. Commands are sorted in the alphabetical order. For quick finding: Ctrl+F then 
              enter your keyword.




# --------------> GETWEBPDF 

SYNTAX  : getwebpdf <web_adress> <output_name.pdf>
WARNING : getwebpdf sometimes didn't work well with some web pages (no errors, simple warnings produced
          by wkhtmltopdf and weird display in the produce pdf such as with https://devhints.io/bash 
          website). It looked like a problem of permissions given to wkhtmltopdf software which wouldn't
          allow loading web files with strange extension such as webfile.css?t=blabla. altsudo couldn't 
          solve the problem so I've added sudo directly in the script and it works now. Still, I've read 
          here: https://askubuntu.com/questions/425754/how-do-i-run-a-sudo-command-inside-a-script that it
          was a bad practice with no reason given. I thought it would only be fair to warn a potential 
          user of this...
