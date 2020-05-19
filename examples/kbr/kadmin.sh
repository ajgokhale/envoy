#!/bin/bash
sleep 10
kadmin -p kadmin/service.example.com@EXAMPLE.COM -w yoda -q "ktadd -k /usr/local/var/service-keytab HTTP/kbr_service1_1.kbr_envoymesh"
