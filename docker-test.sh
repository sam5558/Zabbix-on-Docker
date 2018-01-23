docker run \
-d \
--name zabbix-db \
--env="MARIADB_USER=zabbix" \
--env="MARIADB_PASS=password" \
monitoringartist/zabbix-db-mariadb

docker run \
-d \
--name zabbix \
-p 8080:80 \
-p 10051:10051 \
-v /etc/localtime:/etc/localtime:ro \
--link zabbix-db:zabbix.db \
--env="ZS_DBHost=zabbix.db" \
--env="ZS_DBUser=zabbix" \
--env="ZS_DBPassword=password" \
--env="XXL_zapix=true" \
--env="XXL_grapher=true" \
monitoringartist/dockbix-xxl:latest
