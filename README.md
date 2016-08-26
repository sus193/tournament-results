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
