Läs [här](./dnsconfiguration) för configurationsfiler

Installerade bind9 med APT

Skapade zonfil för emil2.local i /etc/bind/named.conf.local

Konfigurerade SOA, NS, A, och CNAME-poster

Lade till forwarders (Google DNS: 8.8.8.8) i /etc/bind/named.conf.options

Startade om bind9 med systemctl restart bind9

Testade med dig emil2.local och nslookup – DNS fungerar lokalt