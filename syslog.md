Skapade egen konfig i /etc/logrotate.d/syslog-custom

För /var/log/syslog, rotation varje vecka, behåll 4 st, komprimerade

Lade till raden su root syslog för att undvika felmeddelande om rättigheter

Verifierade funktion genom att tvinga rotation med logrotate -f

Filer som syslog.1 och syslog.2.gz genererades korrekt