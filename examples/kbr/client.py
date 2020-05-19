import requests
from requests_kerberos import HTTPKerberosAuth, DISABLED

if __name__ == "__main__":
    auth = HTTPKerberosAuth(mutual_authentication=DISABLED)
    r = requests.get("http://service.example.com/service/1", auth=auth)
    print(r.status_code)
    print(r.text)
