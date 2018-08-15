# ITZACK
“ITZACK” is a web project which mainly aims to give the complete information about the various training institutions.

------> How to Run Itzack
Install netbeans and oracle 10g

after installing both these softwares, intialize the sql data base.. below is the procedure:

open sql command line present in programs
sql> conn system/manager
[after connecting, type below statements]

sql> create user itzack identified by itzack;
[this statement inhibits the creation of user for database]

sql> grant all privileges to itzack
[grant successful]

sql> disconnect


NEXT is to dump .DMP file into database

-> open command prompt
-> type below commands
        imp (click enter)
        itzack/itzack (click enter)
-> now drag and drop .DMP file from project to command prompt
-> if asks for buffer size enter any value
->it asks 5 questions,ans them as follows
      1.N
      2.Y
      3.Y
      4.Y
      5.Y
