#!/bin/bash

cd /DATA_F/CODE/1_go/promo-trast/
git pull
mvn clean
mvn package
cd ~/wildfly/bin
./jboss-cli.sh --connect --commands='undeploy promo.war','deploy /DATA_F/CODE/1_go/promo-trast/promo/target/promo.war' || ./jboss-cli.sh --connect --command='deploy /DATA_F/CODE/1_go/promo-trast/promo/target/promo.war'
