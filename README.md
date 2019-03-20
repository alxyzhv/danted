Dante SOCKS proxy server
====================

Usage
----
$  git clone https://github.com/alxyzhv/danted.git

$ cd danted

$ docker-compose build

$ docker-compose up

You can change username and password in docker-compose.yml

Test
----
$ curl -x socks5://my_user:my_password@localhost:1080 ipinfo.io/ip
