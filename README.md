P2: Tournament Results
Description: A Python module that uses the PostgreSQL database to keep track of players and matches in a single Swiss pairings game tournament

## Code to download:
1. tournament.sql - contains the database schema
1. tournament.py - contains python functions
1. tournament_test.py - contains unit tests that will test the python functions

## Steps to run:

#### Part 1: Set up the PostgreSQL database
-Install GIT, VirtualBox, Vagrant
-Use GIT to fetch the VM configuration and clone the repository provided by Udacity
-Change to the fullstack/vagrant/tournament directory and run the command "vagrant up" to launch the VM and "vagrant ssh" to log into it
-Access the existing code templates inside of the /vagrant/tournament directory
-Download the source files from the above Github repository and replace the existing code with the new source files
-Enter "psql" to interact with the postgreSQL database

#### Part 2: Create the tournament database instance
-Create the tournament database instance through the following commands:
vagrant=>drop database tournament; //Clear any existing database instances if needed
vagrant=>create database tournament;

#### Part 3: Create the tables and view
-Connect to the database through:
vagrant=>\c tournament;
-Import the sql file that contains the database schema through:
vagrant=>\i tournament.sql;

#### Part 4: Run the testing suite
-Exit from psql by entering "\q"
-Run the test with the command "python tournament_test.py"

## Expected Result:
vagrant@vagrant-ubuntu-trusty-32:/vagrant/tournament$ psql
psql (9.3.6)
Type "help" for help.
vagrant=> drop database tournament;
DROP DATABASE
vagrant=> create database tournament;
CREATE DATABASE
vagrant=> \c tournament;
You are now connected to database "tournament" as user "vagrant".
tournament=> \i tournament.sql;
psql:tournament.sql:10: ERROR:  table "players" does not exist
psql:tournament.sql:11: ERROR:  table "matches" does not exist
psql:tournament.sql:12: ERROR:  view "matchresults" does not exist
CREATE TABLE
CREATE TABLE
CREATE VIEW
tournament=> \q
vagrant@vagrant-ubuntu-trusty-32:/vagrant/tournament$ python tournament_test.py
1. Old matches can be deleted.
1. Player records can be deleted.
1. After deleting, countPlayers() returns zero.
1. After registering a player, countPlayers() returns 1.
1. Players can be registered and deleted.
1. Newly registered players appear in the standings with no matches.
1. After a match, players have updated standings.
1. After one match, players with one win are paired.
Success!  All tests pass!
