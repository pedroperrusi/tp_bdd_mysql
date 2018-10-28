# Import Latest MySQL Docker Image
FROM mysql:latest
# Copy files from the working directory to the container
ADD . /code
WORKDIR /code
# docker run -it --link td-bdd-mysql:mysql --rm mysql sh -c 'exec mysql -h"$MYSQL_PORT_3306_TCP_ADDR" -P"$MYSQL_PORT_3306_TCP_PORT" -uroot -p"tis03pwd"'
