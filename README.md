##AI MiniProject 2015

### Akul Penugonda

akul@hku.hk
akulvp@gmail.com

This is Akul Penugonda's (UID:3033057890) Mini Project. See ProjectReport.pdf for the writeup portion. This README will discuss information necessary for installation/usage.

#### Compilation

##### Normal Compilation

Run 'sh install.sh', or run 'make'. This will install an executable titled 'AIProject' in the directory - run that within a terminal to play.

##### Optimized Compilation

Not necessary to run the game, but will probably double its performance on your machine - run 'sh install.sh o', or do the following: run 'make profile', play a game (make sure you either exit by typing 'EXIT' at the prompt or 'n' when asked to start a new game), then run 'make optbin'. This will create a profile optimized binary. Running 'sh install.sh o' automates this whole process, and the game is played between two AI. It will probably take around ~3 minutes to run.

#### Usage

You may run this binary with either with no arguments, or as "./AIProject <arg1> <arg2>" where both arguments are one of 'h' or 'a'. Example: "./AIProject a a". 'h' will set a human player, and 'a' an AI player. The default run settings are both set to human players. The first argument sets the White player, and the second sets the Black player.
