# TP BDD: MySQL Databases

### During Class TP 1 et 2
to access the databases:
mysql -u tis03 -h tps-mysql.u-strasbg.fr -p

Password: tis03pwd

```(sql)
    use TIS03
```

### Pour le TP 4
mysql -u worldUser -h tps-mysql.u-strasbg.fr -p
Passsword: WUpwd!

```(sql)
    use World
```

This database is also available online: https://webster.cs.washington.edu/cse154/query/

### Pour le test
mysql -u tisexam -h tps-mysql.u-strasbg.fr -p

Password: pwdExam

```(sql)
    use exam
```

### Docker MySQL Experiments
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

To exit your session, use the "exit" command.

Whenever changing the docker-compose.yml file, it may be best to remove the container history.

```(bash)
docker-compose rm -v
```

Based on: 
    - https://github.com/mysql/mysql-docker
    - https://dev.mysql.com/doc/refman/5.7/en/docker-mysql-more-topics.html#docker-persisting-data-configuration
    - https://docs.docker.com/compose/gettingstarted/#step-2-create-a-dockerfile
    - https://docs.docker.com/samples/library/mysql/#connect-to-mysql-from-an-application-in-another-docker-container
    - https://codereviewvideos.com/course/docker-tutorial-for-beginners/video/docker-mysql-tutorial


