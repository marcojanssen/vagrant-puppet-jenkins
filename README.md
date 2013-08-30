# Jenkins-CI setup with Vagrant & Puppet #

----------

A out of the box solution for a Jenkins-CI setup, the server is installed with the following packages:

- Ubuntu 13.04 "Raring Ringtail"
- Apache2
- PHP 5.4.9 
- Pear
- Phing
- MySQL
- SQLite 3
- Subversion & Git

## Jenkins ##

Jenkins is installed according to the Template for Jenkins Jobs for PHP Projects [http://jenkins-php.org/](http://jenkins-php.org/). 

Installed plugins:

- Phing
- Subversion
- Git
- Checkstyle (for processing PHP_CodeSniffer logfiles in Checkstyle format)
- Clover PHP (for processing PHPUnit code coverage xml output)
- DRY (for processing phpcpd logfiles in PMD-CPD format)
- HTML Publisher (for publishing the PHPUnit code coverage report, for instance)
- JDepend (for processing PHP_Depend logfiles in JDepend format)
- Plot (for processing phploc CSV output)
- PMD (for processing PHPMD logfiles in PMD format)
- Violations (for processing various logfiles)
- xUnit (for processing PHPUnit logfiles in JUnit format)

To properly use the plugins QA tools are installed aswell [http://pear.phpqatools.org/](http://pear.phpqatools.org/)

## Requirements ##

- Vagrant (tested with 1.2.7)

## Installation ##

- git clone https://github.com/marcojanssen/vagrant-puppet-jenkins.git
- git submodule init
- git submodule update
- vagrant up

Change the IP adres to whatever you want in the Vagrantfile, and add that IP adres to your host file, for example:

> 192.168.2.200 ci

Jenkins can be accessed from port 8080, http://ci:8080