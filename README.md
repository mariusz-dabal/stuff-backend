# stuff.test

Stuff - aplication for saving your stuff found on the Internet.

# How to start local server with docker on your machine

1.  Download and install Docker https://docs.docker.com/docker-for-windows/install/
2.  Install composer https://getcomposer.org/download/
3.  Make sure Docker is up and running
4.  Clone this repo to your machine
5.  cd into stuff folder
6.  In console run ``` composer install ```
7.  In console run ``` git clone https://github.com/Laradock/laradock.git ```
8.  cd into laradock folder
9.  run ``` cp env-example .env ```
10.  In console run ``` docker-compose up -d nginx mysql phpmyadmin redis workspace  ```
  