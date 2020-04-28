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

Warning     : script won't be executed without the proper permissions (cf. sudo chmod 770 your_script_name)
              and will require the .sh extension in the end if there's no symbolic link. To add a symbolic 
              link, just input in a terminal in the proper directory : ln -s your_script_name link_name

Note        : This readme file also details the expected syntax of these 'commands' and any other relevant
              information. Commands are sorted in the alphabetical order. For quick finding: Ctrl+F then 
              enter your keyword.




# --------------> GETWEBPDF 

SYNTAX  : getwebpdf <web_adress> <output_name.pdf>
WARNING : getwebpdf doesn't work well when an html anchor is in the given address such 
          (cf. ....#my_anchor)
