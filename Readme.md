# TP BDD: MySQL Databases

### During Class
to access the databases:
mysql -u tis03 -h tps-mysql.u-strasbg.fr -p

```(sql)
    use TIS03
```

### Docker MySQL Experiments
Based on: 
    - https://docs.docker.com/samples/library/mysql/#connect-to-mysql-from-an-application-in-another-docker-container
    - https://codereviewvideos.com/course/docker-tutorial-for-beginners/video/docker-mysql-tutorial

* Server: 
```(bash)
docker run --name td-bdd-mysql -e MYSQL_ROOT_PASSWORD=tis03pwd -d mysql:latest
```
* Client:
```(bash)
docker run -it --link td-bdd-mysql:mysql --rm mysql sh -c 'exec mysql -h"$MYSQL_PORT_3306_TCP_ADDR" -P"$MYSQL_PORT_3306_TCP_PORT" -uroot -p"tis03pwd"'
```

docker run --rm -it $(docker build -q .)
