# start with the mysql image
FROM mysql:5.7

# Set our environment varibales for logging into the DB
ENV MYSQL_ROOT_PASSWORD UKoBMndyEY
ENV MYSQL_DATABASE wordpress
ENV MYSQL_USER bilcker
ENV MYSQL_PASSWORD 200169316*Db

# Copy the database table dependencies into our image DB
COPY  ./includes /docker-entrypoint-initdb.d

# Expose a port to run on
EXPOSE 3306:3306