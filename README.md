# stuff.test

Stuff - aplication for saving your stuff found on the Internet.

# How to start local server on your machine

1.  Download and install XAMPP https://www.apachefriends.org/pl/index.html
2.  Install composer https://getcomposer.org/download/
3.  Go to xampp\apache\conf\extra
4.  Open httpd-vhosts.conf and at the end add following code:
    ```
    <VirtualHost *:80>
    DocumentRoot "C:/xampp/htdocs/stuff/public"
    ServerName stuff.test
    </VirtualHost>
    ```
5.  Clone this repo into C:/xampp/htdocs
6.  In console cd into stuff folder
7.  In console run ``` composer install ```
8.  In console run ``` npm install ```
9.  Go to http://localhost/
10.  Strat adding your part ;)
  
