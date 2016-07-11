#NS Slave

Quick image to run a named slave server, fetching my DNS Zones.
AXFR requires a valid TSIG key.

## Env

  * ZONES: list of DNS Zone to transfer. eg: "a.example.net b.exemple.net"
  * MASTER: IP adress of DNS master
  * KEY_NAME: TSIG key name
  * KEY_ALG: TSIG key alg
  * KEY_SECRET: TSIG key secret

