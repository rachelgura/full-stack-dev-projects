This is a project that allows you to generate random tournament pairing games and results. In the file tournament.sql are written SQL database and table definitions. In tournament.py are written Python functions filling out a template of an API Tournament_test.py is a test suite to verify your code

It is an example of the integration of an sql database and python -- and it is performed with the use of a vagrant virtual machine. The test file sets up the functions that were needed to create the game results.

These are the steps you need to view the process:

Install Vagrant and VirtualBox
Navigate to the Vagrant directory on the command line, and in the Vagrant directory, clone this "tournament" repo with all the files.
Launch the Vagrant VM with vagrant up. Run vagrant ssh. Run the command: python tournament_test.py
In a separate tab you can connect to the sql database and run sql commands to view the tables, rows and columns of all the players, the scores, etc.