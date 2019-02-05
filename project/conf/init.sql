DROP DATABASE IF EXISTS gameinsightgift;
CREATE DATABASE IF NOT EXISTS gameinsightgift;
grant usage on *.* to 'gameinsightgift'@'localhost' IDENTIFIED BY '1234';
grant all privileges on gameinsightgift.* to 'gameinsightgift'@'localhost';
grant usage on *.* to 'gameinsightgift'@'%' IDENTIFIED BY '1234';
grant all privileges on gameinsightgift.* to 'gameinsightgift'@'%';
