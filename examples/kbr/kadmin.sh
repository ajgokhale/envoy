#!/bin/bash
envoy -c /etc/service-envoy.yaml --service-cluster service${SERVICE_NAME} &
while ! kadmin -p kadmin/service.example.com@EXAMPLE.COM -w yoda -q "ktadd -k /usr/local/var/service-keytab HTTP/kbr_service1_1.kbr_envoymesh"; do
    echo "Trying to connect to admin server"
done
python3 /code/service.py
