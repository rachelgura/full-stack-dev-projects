This is a project that allows you to generate random tournament pairing games and results. In the file tournament.sql are written SQL database and table definitions. In tournament.py are written Python functions filling out a template of an API Tournament_test.py is a test suite to verify your code

It is an example of the integration of an sql database and python -- and it is performed with the use of a vagrant virtual machine. The test file sets up the functions that were needed to create the game results.

These are the steps you need to view the process:

Usage

make sure database tournament exists

vagrant@vagrant-ubuntu-trusty-32:/vagrant/tournament$ psql
psql (9.3.5)
Type "help" for help.

vagrant=> CREATE DATABASE tournament;
CREATE DATABASE
vagrant=> \q
load SQL schema

vagrant@vagrant-ubuntu-trusty-32:/vagrant/tournament$ psql tournament < tournament.sql 
run test

vagrant@vagrant-ubuntu-trusty-32:/vagrant/tournament$ python tournament_test.py 
1. Old matches can be deleted.
2. Player records can be deleted.
3. After deleting, countPlayers() returns zero.
4. After registering a player, countPlayers() returns 1.
5. Players can be registered and deleted.
6. Newly registered players appear in the standings with no matches.
7. After a match, players have updated standings.
8. After one match, players with one win are paired.
Success!  All tests pass.