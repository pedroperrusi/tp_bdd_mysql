# TP BDD: MySQL Databases

### During Class
to access the databases:
mysql -u tis03 -h tps-mysql.u-strasbg.fr -p

```(sql)
    use TIS03
```

Password: tis03pwd

### Docker MySQL Experiments
Based on: 
    - https://github.com/mysql/mysql-docker
    - https://dev.mysql.com/doc/refman/5.7/en/docker-mysql-more-topics.html#docker-persisting-data-configuration
    - https://docs.docker.com/compose/gettingstarted/#step-2-create-a-dockerfile
    - https://docs.docker.com/samples/library/mysql/#connect-to-mysql-from-an-application-in-another-docker-container
    - https://codereviewvideos.com/course/docker-tutorial-for-beginners/video/docker-mysql-tutorial

First, create and launch the SQL Server containter (named mysql\_bash).
```(bash)
docker-compose up
```
Then, start a new session in the container:
```(bash)
docker exec -it mysql_bdd bash
```
Finaly, log into the root of the repository to perform the database operations
```(bash)
mysql -uroot -p
```
Password: tis03pwd
