P2: Tournament Results
Description: A Python module that uses the PostgreSQL database to keep track of players and matches in a single Swiss pairings game tournament

Author: Susmita Gorai
Submission Date: 05/31/2015
Full Stack Web Developer Nanodegree 
March '15 Cohort

Location of code:
https://github.com/sus193

Code to download:
1. tournament.sql - contains the database schema
2. tournament.py - contains python functions
3. tournament_test.py - contains unit tests that will test the python functions

Steps to run:

Part 1: Set up the PostgreSQL database
-Install GIT, VirtualBox, Vagrant
-Use GIT to fetch the VM configuration and clone the repository provided by Udacity
-Change to the fullstack/vagrant/tournament directory and run the command "vagrant up" to launch the VM and "vagrant ssh" to log into it
-Access the existing code templates inside of the /vagrant/tournament directory
-Download the source files from the above Github repository and replace the existing code with the new source files
-Enter "psql" to interact with the postgreSQL database

Part 2: Create the tournament database instance
-Create the tournament database instance through the following commands:
vagrant=>drop database tournament; //Clear any existing database instances if needed
vagrant=>create database tournament;

Part 3: Create the tables and view
-Connect to the database through:
vagrant=>\c tournament;
-Import the sql file that contains the database schema through:
vagrant=>\i tournament.sql;

Part 4: Run the testing suite
-Exit from psql by entering "\q"
-Run the test with the command "python tournament_test.py"

Expected Result:
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
2. Player records can be deleted.
3. After deleting, countPlayers() returns zero.
4. After registering a player, countPlayers() returns 1.
5. Players can be registered and deleted.
6. Newly registered players appear in the standings with no matches.
7. After a match, players have updated standings.
8. After one match, players with one win are paired.
Success!  All tests pass!

*Note: To test with 8 players uncomment the code inside of the function 
"testPairings()" where it says "Test for 8 players" and comment out the rest of the testPairings function that tests for 4 players

Sources:
1. Udacity's Intro to Relational Databases course for instructions
2. The fullstack-nanodegree-vm repository for providing code
3. SQL injection information - http://bobby-tables.com/python.html
4. General SQL information - http://www.w3schools.com/sql/default.asp
5. Udacity's Discussion Forum
6. Python - http://www.tutorialspoint.com/python and https://docs.python.org
7. PostgreSQL - http://www.postgresql.org/docs/9.1/static/datatype.html