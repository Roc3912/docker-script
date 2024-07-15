#!/bin/sh
#默认密码为123456,请填入新的密码
NEW_PASSWD="xxx"

sed -i 's#123456#'${NEW_PASSWD}'#g' ./kibana/config/kibana.yml
sed -i 's#123456#'${NEW_PASSWD}'#g' ./logstash/config/logstash.yml
sed -i 's#123456#'${NEW_PASSWD}'#g' ./logstash/pipeline/logstash.conf
sed -i 's#123456#'${NEW_PASSWD}'#g' ./docker-compose.yaml

echo 'modify password ok'
