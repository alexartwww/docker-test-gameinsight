# Docker Wrapper for Test Task from GameInsight

This task has target to show my skills to create web service on pure php without any framework.

Check this document project/html/TASK.md

## Clone and run

You **need to have git, docker, docket-compose and your UID=1000** on local machine.

To run this code use this commands

    git clone git@github.com:alexartwww/docker-test-gameinsight.git
    cd docker-test-gameinsight
    git submodule init  
    git submodule update
    ./start.sh
    ./restore.sh
    ./project.sh composer install
    ./project.sh phpunit

## Nginx setup

To use this api directly from host machine you can install nginx and setup config(ubuntu example):

    sudo apt-get install nginx-extras
    sudo cp ./project/conf/testgameinsight /etc/nginx/sites-available/
    sudo ln -s /etc/nginx/sites-available/testgameinsight /etc/nginx/sites-enabled/testgameinsight
    sudo service nginx reload

Also add testgameinsight hostname to your /etc/hosts file:

    127.0.0.1	localhost testgameinsight
    127.0.1.1	desktop
    
    # The following lines are desirable for IPv6 capable hosts
    ::1     ip6-localhost ip6-loopback
    fe00::0 ip6-localnet
    ff00::0 ip6-mcastprefix
    ff02::1 ip6-allnodes
    ff02::2 ip6-allrouters

Then go to <http://testgameinsight/>. You should see 404 error message. If not please check services/nginx/logs/error.log file.

## Commands

Start

    ./start.sh

Stop

    ./stop.sh

Backup

    ./backup.sh

Restore

    ./restore.sh

Run command from docker container(will run project container)

    ./project.sh command
    ./project.sh bash
    ./project.sh phpunit
    ./project.sh composer install

Access to mysql

    ./mysql.sh

# You awesome!